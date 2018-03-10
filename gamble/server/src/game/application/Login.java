package game.application;

import game.data.ST;
import game.data.UserData;
import game.data.bean.U_info;
import game.utils.Protocol;
import ge.annotation.RemoteMethod;
import ge.db.Table;
import ge.net.Application;
import ge.utils.Util;

import java.util.concurrent.ConcurrentHashMap;

public class Login extends Application {
	private int userId = 0;
	private int loginTime;
	private int ip;

	/**
	 * 登录游戏
	 */
	@RemoteMethod(Protocol.LOGIN)
	public void login(String accessToken, int channe, String passId, short areaId) {
		System.out.println("login:" + client());
		login(passId, "");
	}

	/**
	 * 登录失败
	 * 
	 */
	public void loginFail() {
		call(Protocol.LOGIN, -1);
	}

	private static ConcurrentHashMap<Integer, Login> online = new ConcurrentHashMap<Integer, Login>();

	public void login(String passId, String info) {
		loginTime = (int) (System.currentTimeMillis() / 1000);
		ip = (int) Util.NumberIP(client().ip);

		String where = "passId='" + passId + "'";
		Table<U_info> table = new Table<U_info>(null, U_info.class, where);
		table.load();
		U_info u_info = table.get();
		boolean isnew = false;
		if (u_info == null) {
			isnew = true;
			u_info = new U_info(table, 0, passId, "", loginTime, loginTime, ip);
		}
		u_info.regTime = loginTime;
		u_info.save();
		userId = u_info.id;

		UserData data = new UserData(userId, client());
		if (isnew) {
			data.Create();
		}
		System.out.println(">>>>>>>>>>>>>>>>>>>>>>>>>");
		call(Protocol.LOGIN, userId);
	}

	/**
	 * 请求系统数据
	 */
	@RemoteMethod(Protocol.LOGIN_SYSTEM_DATA)
	public Object[] system(String md5) {
		if (ST.it.comparison(md5)) {
			return Result((byte) 0);
		} else {
			return Result((byte) 1, ST.it.buffer());
		}
	}

	/**
	 * 请求用户数据
	 */
	@RemoteMethod(Protocol.LOGIN_USER_DATA)
	public Object[] user() {
		System.out.println("user:" + client());
		UserData data = (UserData) data();
		data.load();

		return Result((byte) 0);
	}

	/**
	 * 下线时调用
	 */
	protected void clear() {
	}
}