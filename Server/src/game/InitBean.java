package game;

import ge.MySqlToBean;
import ge.utils.Util;

public class InitBean {
	public static void main(String[] args) {
		System.setProperty("configPath", "E:\\air_mahjong\\Server\\WebContent\\META-INF\\config.xml");
		String javaBean = "E:\\air_mahjong\\server\\src\\game\\data\\bean\\";
		String tsBean = "E:\\air_mahjong\\Client\\assets\\Script\\net\\";
		new MySqlToBean(Util.Env(javaBean), Util.Env(tsBean));
	}

}