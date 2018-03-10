package game.room.ncmahjong;

import java.util.Arrays;

import game.data.bean.T_tile;

public class T {
	public static int type(T_tile a) {
		return a.value / 10;
	}

	public static boolean loop(T_tile a) {
		return a.value > 30;
	}

	public static int code(int... tiles) {
		Arrays.sort(tiles);
		int v = 0;
		for (int i : tiles) {
			v = v * 100 + i;
		}
		return v;
	}

	public static byte[] abc(byte... tiles) {
		Arrays.sort(tiles);
		return tiles;
	}

	public boolean any;
}
