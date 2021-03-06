package game.room.ncmahjong;

import game.data.bean.T_tile;

public class TT extends T {

	public final int code;
	public final boolean ok;
	public final T_tile a;
	public final T_tile b;

	public TT(T_tile a, T_tile b) {
		this.a = a;
		this.b = b;

		any = a.value != b.value;
		ok = a.jing > 0 || b.jing > 0 || a.value == b.value;
		code = code(a.value, b.value);
	}

	public String toString() {
		return "(" + a.value + ":" + b.value + ")";
	}

}
