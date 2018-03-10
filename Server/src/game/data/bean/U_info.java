package game.data.bean;

import ge.annotation.Delete;
import ge.annotation.Insert;
import ge.annotation.PrimaryKey;
import ge.annotation.SyncKey;
import ge.annotation.Update;
import ge.db.Bean;
import ge.db.Table;

/**
 *  (6)
 */
@SyncKey(0)
@PrimaryKey(0)
@Insert("insert into u_info values(?,?,?,?,?,?)")
@Update("update u_info set passId=?,password=?,regTime=?,loginTime=?,ip=? where id=?")
@Delete("delete from u_info where id=?")
public class U_info extends Bean {
	/**
	 * 
	 * @param id
	 *            $
	 * @param passId
	 *            通行证id
	 * @param password
	 *            用户密码
	 * @param regTime
	 *            注册时间(首次登录时间)
	 * @param loginTime
	 *            最近登录时间
	 * @param ip
	 *            最近登录时的IP
	 */
	public U_info(Table<U_info> table, int id, String passId, String password, int regTime, int loginTime, int ip) {
		super(table, id, passId, password, regTime, loginTime, ip);
	}

	// init
	public U_info(Table<U_info> table, Object[] v) {
		super(table, v);
	}

	// mysql
	public U_info(Object[] v, Table<U_info> table) {
		super(v, table);
	}

	/**
	 * $
	 */
	public int id;

	/**
	 * 通行证id
	 */
	public String passId;

	/**
	 * 用户密码
	 */
	public String password;

	/**
	 * 注册时间(首次登录时间)
	 */
	public int regTime;

	/**
	 * 最近登录时间
	 */
	public int loginTime;

	/**
	 * 最近登录时的IP
	 */
	public int ip;

}