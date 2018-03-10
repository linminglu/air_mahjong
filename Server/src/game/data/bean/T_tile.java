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
@Insert("insert into t_tile values(?,?,?,?,?,?)")
@Update("update t_tile set value=?,state=?,order=?,index=?,jing=? where id=?")
@Delete("delete from t_tile where id=?")
public class T_tile extends Bean {
	/**
	 * 
	 * @param id
	 *            $
	 * @param value
	 *            
	 * @param state
	 *            
	 * @param order
	 *            
	 * @param index
	 *            
	 * @param jing
	 *            
	 */
	public T_tile(Table<T_tile> table, short id, byte value, byte state, byte order, byte index, byte jing) {
		super(table, id, value, state, order, index, jing);
	}

	// init
	public T_tile(Table<T_tile> table, Object[] v) {
		super(table, v);
	}

	// mysql
	public T_tile(Object[] v, Table<T_tile> table) {
		super(v, table);
	}

	/**
	 * $
	 */
	public short id;

	/**
	 * 
	 */
	public byte value;

	/**
	 * 
	 */
	public byte state;

	/**
	 * 
	 */
	public byte order;

	/**
	 * 
	 */
	public byte index;

	/**
	 * 
	 */
	public byte jing;

}