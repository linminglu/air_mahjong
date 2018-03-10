package game;

import ge.Config;
import ge.MySqlToBean;
import ge.utils.Util;

public class InitBean {
	public static void main(String[] args) {
		String javaBean = "E:\\air_mahjong\\gamble\\server\\src\\game\\data\\bean\\";
		String asBean = "E:\\air_mahjong\\gamble\\client\\src\\game\\data\\bean\\";
		Config.Init("config.xml");
		new MySqlToBean(Util.Env(javaBean), Util.Env(asBean));
	}

}
