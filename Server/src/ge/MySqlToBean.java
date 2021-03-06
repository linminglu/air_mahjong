package ge;

import java.io.File;
import java.io.FileOutputStream;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map.Entry;
import java.util.Vector;

import ge.db.DB;

public class MySqlToBean {

	private String javaPath = null;

	public MySqlToBean(String javaBeanPath, String tsBeanPath) {
		javaPath = javaBeanPath;
		File[] f1 = new File(javaPath).listFiles();
		for (File file : f1) {
			file.delete();
		}

		Statement statement;
		try {
			statement = DB.Conn().createStatement();

			ResultSet tables = statement.executeQuery("SHOW TABLE STATUS");
			HashMap<String, String> ts = new HashMap<String, String>();
			while (tables.next()) {
				ts.put(tables.getString("Name"), tables.getString("Comment"));
			}
			Iterator<Entry<String, String>> it = ts.entrySet().iterator();
			String tsNames = "";
			String tsBeans = "";
			while (it.hasNext()) {
				Entry<String, String> t = it.next();
				String tableName = t.getKey();
				String tableComment = t.getValue();

				String tsFields = "";
				String javaFields = "";
				String javaType = "";
				Vector<String> types = new Vector<String>();
				Vector<String> fieldNames = new Vector<String>();
				Vector<String> fieldComments = new Vector<String>();
				System.out.println(tableName + "...");
				ResultSet rs = statement.executeQuery("show full fields from " + tableName);

				int num = 0;
				int primaryKey = 0;
				int _key = 0;
				while (rs.next()) {
					String fieldName = rs.getString("Field").replaceAll(" ", "_");
					String fieldType = rs.getString("Type");
					String fieldComment = rs.getString("Comment");
					String key = rs.getString("Key");

					if (key.equals("PRI")) {
						primaryKey = num;
					}
					if (fieldComment.contains("$")) {
						_key = num;
					}

					javaType += ", " + javaTypeIndex(fieldType);

					tsFields += tsField(fieldComment, tsType(fieldType), fieldName);
					javaFields += javaField(fieldComment, javaType(fieldType), fieldName);

					types.add(javaType(fieldType));
					fieldNames.add(fieldName);
					fieldComments.add(fieldComment);

					num++;
				}
				javaType = javaType.substring(2);

				tableName = tableName.substring(0, 1).toUpperCase() + tableName.substring(1);
				String javaC = "";
				javaC += javaInsert(tableName, types, fieldNames, fieldComments);
				javaC += javaInit(tableName);
				javaC += javaMySql(tableName);
				tsNames += ",\"" + tableName + "\": " + tableName;
				tsBeans += typeScriptBean(tableName, tsFields);

				save(javaBean(tableName, javaC, javaFields, javaType, tableComment, primaryKey, num, _key, fieldNames).getBytes("utf-8"), javaPath + tableName + ".java");

				System.out.println(tableName + "OK");
			}
			save(typeScriptFile(tsNames.substring(1), tsBeans).getBytes(), tsBeanPath + "Bean.ts");
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	private String typeScriptFile(String names, String beans) {
		String str = "";
		str += "import Table from \"./Table\";\r\n";
		str += "\r\n";
		str += "\r\n";
		str += beans;
		str += "export var Beans: object = { " + names + " };";
		return str;
	}

	private String typeScriptBean(String name, String tsFields) {

		String str = "";
		str += "export class " + name + " {\r\n";
		str += "    public static table: Table<" + name + "> = new Table<" + name + ">(" + name + ");\r\n";
		str += tsFields;
		str += "}\r\n";
		str += "\r\n";
		return str;

	}

	private String tsType(String fieldType) {
		if (fieldType.indexOf("tinyint") == 0) {
			if (fieldType.contains("(1)")) {
				return "boolean";
			} else {
				return "number";
			}
		} else if (fieldType.indexOf("smallint") == 0) {
			return "number";
		} else if (fieldType.indexOf("int") == 0) {
			return "number";
		} else if (fieldType.indexOf("float") == 0) {
			return "number";
		} else if (fieldType.indexOf("double") == 0) {
			return "number";
		} else if (fieldType.indexOf("char") >= 0) {
			return "string";
		} else {
			throw new Error("不支持的类型：" + fieldType);
		}
	}

	private String tsField(String fieldComment, String type, String fieldName) {
		String code = "";
		code += "	/**";
		code += "\r\n";
		code += "	 * " + fieldComment;
		code += "\r\n";
		code += "	 */";
		code += "\r\n";
		code += "	public " + fieldName + ":" + type + ";";
		code += "\r\n";
		code += "\r\n";
		return code;
	}

	private String javaTypeIndex(String fieldType) {
		if (fieldType.indexOf("tinyint") == 0) {
			if (fieldType.contains("(1)")) {
				return "Type.BOOLEAN";
			} else {
				return "Type.BYTE";
			}
		} else if (fieldType.indexOf("smallint") == 0) {
			return "Type.SHORT";
		} else if (fieldType.indexOf("int") == 0) {
			return "Type.INT";
		} else if (fieldType.indexOf("float") == 0) {
			return "Type.FLOAT";
		} else if (fieldType.indexOf("double") == 0) {
			return "Type.DOUBLE";
		} else if (fieldType.indexOf("char") >= 0) {
			return "Type.STRING";
		} else {
			throw new Error("不支持的类型：" + fieldType);
		}
	}

	private String javaType(String fieldType) {
		if (fieldType.indexOf("tinyint") == 0) {
			if (fieldType.contains("(1)")) {
				return "boolean";
			} else {
				return "byte";
			}
		} else if (fieldType.indexOf("smallint") == 0) {
			return "short";
		} else if (fieldType.indexOf("int") == 0) {
			return "int";
		} else if (fieldType.indexOf("float") == 0) {
			return "float";
		} else if (fieldType.indexOf("double") == 0) {
			return "double";
		} else if (fieldType.indexOf("char") >= 0) {
			return "String";
		} else {
			throw new Error("不支持的类型：" + fieldType);
		}
	}

	private String javaField(String fieldComment, String type, String fieldName) {
		String code = "";
		code += "	/**";
		code += "\r\n";
		code += "	 * " + fieldComment;
		code += "\r\n";
		code += "	 */";
		code += "\r\n";
		code += "	public " + type + " " + fieldName + ";";
		code += "\r\n";
		code += "\r\n";
		return code;
	}

	private String javaInsert(String beanName, Vector<String> types, Vector<String> fieldName, Vector<String> comments) {
		String code = "";
		code += "	/**";
		code += "\r\n";
		code += "	 * ";
		code += "\r\n";
		String p1 = "";
		String p2 = "";
		for (int i = 0; i < types.size(); i++) {
			code += "	 * @param " + fieldName.get(i);
			code += "\r\n";
			code += "	 *            " + comments.get(i);
			code += "\r\n";
			p1 += ", " + types.get(i) + " " + fieldName.get(i);
			p2 += ", " + fieldName.get(i);
		}
		code += "	 */";
		code += "\r\n";
		code += "	public " + beanName + "(Table<" + beanName + "> table, " + p1.substring(2) + ") {";
		code += "\r\n";
		code += "		super(table, " + p2.substring(2) + ");";
		code += "\r\n";
		code += "	}";
		return code;
	}

	private String javaInit(String beanName) {
		String code = "";
		code += "\r\n";
		code += "\r\n";
		code += "	// init";
		code += "\r\n";
		code += "	public " + beanName + "(Table<" + beanName + "> table, Object[] v) {";
		code += "\r\n";
		code += "		super(table, v);";
		code += "\r\n";
		code += "	}";
		return code;
	}

	private String javaMySql(String beanName) {
		String code = "";
		code += "\r\n";
		code += "\r\n";
		code += "	// mysql";
		code += "\r\n";
		code += "	public " + beanName + "(Object[] v, Table<" + beanName + "> table) {";
		code += "\r\n";
		code += "		super(v, table);";
		code += "\r\n";
		code += "	}";
		return code;
	}

	private String javaBean(String beanName, String constructors, String fields, String typeIndex, String comment, int primaryKey, int num, int keys, Vector<String> fieldNames) {
		String code = "";
		code += "package game.data.bean;";
		code += "\r\n";
		code += "\r\n";
		code += "import ge.annotation.Delete;";
		code += "\r\n";
		if (comment.contains("@")) {
			code += "import ge.annotation.Exclude;";
			code += "\r\n";
		}
		code += "import ge.annotation.Insert;";
		code += "\r\n";
		code += "import ge.annotation.PrimaryKey;";
		code += "\r\n";
		code += "import ge.annotation.SyncKey;";
		code += "\r\n";
		code += "import ge.annotation.Update;";
		code += "\r\n";
		code += "import ge.db.Bean;";
		code += "\r\n";
		code += "import ge.db.Table;";
		code += "\r\n";
		code += "\r\n";
		code += "/**";
		code += "\r\n";
		code += " * " + comment + " (" + num + ")";
		code += "\r\n";
		code += " */";
		if (comment.contains("@")) {
			code += "\r\n";
			code += "@Exclude";
		}
		code += "\r\n";
		code += "@SyncKey(" + keys + ")";
		code += "\r\n";
		code += "@PrimaryKey(" + primaryKey + ")";
		code += "\r\n";
		code += "@Insert(\"" + insertSql(beanName, fieldNames.size()) + "\")";
		code += "\r\n";
		code += "@Update(\"" + updateSql(beanName, fieldNames.get(primaryKey), fieldNames) + "\")";
		code += "\r\n";
		code += "@Delete(\"" + deleteSql(beanName, fieldNames.get(primaryKey)) + "\")";
		code += "\r\n";
		code += "public class " + beanName + " extends Bean {";
		code += "\r\n";
		code += constructors;
		code += "\r\n";
		code += "\r\n";
		code += fields;
		code += "}";
		return code;
	}

	private String deleteSql(String tableName, String pkname) {
		return "delete from " + tableName.toLowerCase() + " where " + pkname + "=?";
	}

	private String updateSql(String tableName, String pkname, Vector<String> fields) {
		String str = "";
		for (String string : fields) {
			if (!string.equals(pkname)) {
				str += "," + string + "=?";
			}
		}
		return "update " + tableName.toLowerCase() + " set " + str.substring(1) + " where " + pkname + "=?";
	}

	private String insertSql(String tableName, int cols) {
		String value = "";
		for (int i = 0; i < cols; i++) {
			value += ",?";
		}
		return "insert into " + tableName.toLowerCase() + " values(" + value.substring(1) + ")";
	}

	private void save(byte[] code, String filename) throws Exception {
		FileOutputStream fos = new FileOutputStream(filename);
		fos.write(code);
		fos.close();
	}
}