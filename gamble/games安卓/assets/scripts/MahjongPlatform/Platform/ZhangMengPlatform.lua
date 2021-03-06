--[[
	className    	     :  ZhangMengPlatform
	Description  	     :  平台类-子类(主平台))
	last-modified-date   :  Dec.2  2013
	create-time 	     :  Oct.22 2013
	last-modified-author :  ClarkWu
	create-author        :  ClarkWu
]]
--
require("MahjongPlatform/Platform/BasePlatform");

ZhangMengPlatform = class(BasePlatform);

--[[
	function name	   : ZhangMengPlatform.ctor
	description  	   : Construct a class.
	param 	 	 	   : self
						 api          -- Number    Every platform has different api.
						 loginTable   -- Table     Every platform has different login methods.  
	last-modified-date : Oct.22 2013
	create-time  	   : Oct.22 2013
]]
ZhangMengPlatform.ctor = function ( self)
	self.curDefaultPmode = 4; --默认为支付宝的商品

	-- 该表标识了该平台下支持的所有支付方式

	if DEBUGMODE == 1 then
		self.m_loginTable = {
			PlatformConfig.NewGuestLogin,
			PlatformConfig.SinaLogin,
			PlatformConfig.QQLogin,
			PlatformConfig.BoyaaLogin,
			PlatformConfig.WeChatLogin,
			PlatformConfig.GuestLogin
		};
	else
		self.m_loginTable = {
			PlatformConfig.SinaLogin,
			PlatformConfig.QQLogin,
			PlatformConfig.BoyaaLogin,
			PlatformConfig.WeChatLogin,
			PlatformConfig.GuestLogin
		};
	end

	self.logins = {};

	PayConfigDataManager.getInstance().m_verData = {
		PlatformConfig.MMPay,PlatformConfig.UnicomPay,PlatformConfig.YinLianPay,
		PlatformConfig.WeChatPay,PlatformConfig.HuaFuBaoPay,PlatformConfig.LoveAnimatePay,
		PlatformConfig.EGamePay,PlatformConfig.MiniStdAliPay,
		PlatformConfig.HuaFuBaoComPay,PlatformConfig.MobilePay
	};--支付方式

	PayConfigDataManager.getInstance().m_defaultPayData = {};
	PayConfigDataManager.getInstance().m_defaultPayData[PlatformConfig.YinLianPay .. ""]    = {id = PlatformConfig.YinLianPay,limit = -1,tips = 0};
	PayConfigDataManager.getInstance().m_defaultPayData[PlatformConfig.MiniStdAliPay .. ""] = {id = PlatformConfig.MiniStdAliPay,limit = -1,tips = 0};
	PayConfigDataManager.getInstance().m_defaultPayData[PlatformConfig.WeChatPay .. ""]     = {id = PlatformConfig.WeChatPay,limit = -1,tips = 0};

end

-- 获取应用APPID信息
-- @Override
ZhangMengPlatform.getLoginAppId = function( self, loginType )
	return "186";
end

--是否要调用平台自己的离开方法
ZhangMengPlatform.isUsePlatformExit = function(self)
	if PlayerManager.getInstance():myself().mid <= 0 or GameConstant.isShowAwardView == 0 then 
		return false;
	end
	if GameConstant.isShowAwardView == 1 then 
		local mid = PlayerManager.getInstance():myself().mid or "";
		local old_day = g_DiskDataMgr:getUserData(mid,'showAwardExit',1)
		local today = os.date("%Y%m%d");
		if today - old_day >= 1 then 
			g_DiskDataMgr:setUserData(mid,'showAwardExit',os.date("%Y%m%d"))
			return true;
		else
			return false;
		end
	end

end

--[[
	function name	   : ZhangMengPlatform.dtor
	description  	   : Destructor a class.
	param 	 	 	   : self
	last-modified-date : Oct.22 2013
	create-time  	   : Oct.22 2013
]]
ZhangMengPlatform.dtor = function ( self )
end

ZhangMengPlatform.returnIsLianyunName = function(self)
	return PlatformConfig.feedback_platform_Trunk;
end

ZhangMengPlatform.isNeedPostApiHost = function(self)
	return true;
end

--[[
	function name	   : QihuPlatform.getLoginView
	description  	   : @Override.
	param 	 	 	   : self
	last-modified-date : Nov.29 2013
	create-time  	   : Nov.29 2013
]]
ZhangMengPlatform.getLoginView = function (self)
	return new(ZhangMengPlatformView,self.m_loginTable);
end

ZhangMengPlatform.getUnicomChannelId = function( self)
	return "00020645";
end


--是否显示绑定博雅通行证
ZhangMengPlatform.isNeedToShowBYPassCard = function ( self )
	-- body
	DebugLog("ZhangMengPlatform.isNeedToShowBYPassCard")
	if self:getCurrentLoginType() == PlatformConfig.GuestLogin then

		local loginUtil = self.loginUtls[PlatformConfig.GuestLogin];
		if loginUtil and loginUtil.visitorBounded then
			DebugLog("return false")
			return false;
		end
		DebugLog("return true")
		return true;
		
	end
	DebugLog("return nil")
end

--[[
	function name	   : ZhangMengPlatform.getDefaultLoginMethod
	description  	   : @Override.
	param 	 	 	   : self
	last-modified-date : Oct.22 2013
	create-time  	   : Oct.22 2013
]]
ZhangMengPlatform.getDefaultLoginMethod = function ( self )
	local loginType = g_DiskDataMgr:getAppData(kLastLoginType, PlatformConfig.GuestLogin);
	local exist = self:existLoginType( loginType );
	if exist then
		return loginType;
	else
		return PlatformConfig.GuestLogin;
	end
end

ZhangMengPlatform.changeLoginMethod = function(self,loginMethod)
	if not self.logins[loginMethod] then
		self.logins[loginMethod] = new(self.getLoginMethodCls(loginMethod) or 
			self.getLoginMethodCls(PlatformConfig.GuestLogin));
	end
	return self.logins[loginMethod];
end

ZhangMengPlatform.isNeedChangeXueZhanLogo = function( self )
	return false;
end

ZhangMengPlatform.isUsePHPCheckMethod = function(self)
	return false;
end

--*****************************************************View平台界面********************************************************************************--
--[[
	className    	     :  ZhangMengPlatformView
	Description  	     :  平台界面类
	last-modified-date   :  Dec.2  2013
	create-time 	     :  Oct.22 2013
	last-modified-author :  ClarkWu
	create-author        :  ClarkWu
]]
ZhangMengPlatformView = class(BasePlatformView);

--[[
	function name	   : ZhangMengPlatformView.createGuestBtn
	description  	   : create the Button of the guest.
	param 	 	 	   : self
	last-modified-date : Dec. 2 2013
	create-time  	   : Oct.22 2013
]]
ZhangMengPlatformView.createGuestBtn = function ( self )
	local btn = nil;
	local btnData = CreatingViewUsingData.switchLoginView.vistorLoginBtn;
	btn = UICreator.createBtn(btnData.fileName, btnData.x, btnData.y, self, function ( self )
		self:onClick(PlatformConfig.GuestLogin);
	end);
	local text = UICreator.createText(btnData.text, 0, -36, 150, 32, kAlignCenter, 28, 75, 43, 28);
	text:setAlign(kAlignBottom);
	btn:addChild(text);
	return btn;
end

ZhangMengPlatformView.createNewGuestBtn = function ( self )
	local btn = nil;
	local btnData = CreatingViewUsingData.switchLoginView.vistorLoginBtn;
	btn = UICreator.createBtn(btnData.fileName, btnData.x, btnData.y, self, function ( self )
		self:onClick(PlatformConfig.NewGuestLogin);
	end);
	local text = UICreator.createText("创建新游客", 0, -36, 150, 32, kAlignCenter, 28,  75, 43, 28);
	text:setAlign(kAlignBottom);
	btn:addChild(text);
	return btn;
end

--[[
	function name	   : ZhangMengPlatformView.createQQBtn
	description  	   : create the Button of the QQ.
	param 	 	 	   : self
	last-modified-date : Dec. 2 2013
	create-time  	   : Oct.22 2013
]]
ZhangMengPlatformView.createQQBtn = function ( self )
	local btn = nil;
	local btnData = CreatingViewUsingData.switchLoginView.qqLoginBtn;
	btn = UICreator.createBtn(btnData.fileName, btnData.x, btnData.y, self, function ( self )
		self:onClick(PlatformConfig.QQLogin);
	end);
	local text = UICreator.createText(btnData.text, 0, -36, 150, 32, kAlignCenter, 28,  75, 43, 28);
	text:setAlign(kAlignBottom);
	btn:addChild(text);
	return btn;
end

--[[
	function name	   : ZhangMengPlatformView.createSinaBtn
	description  	   : create the Button of the Sina.
	param 	 	 	   : self
	last-modified-date : Dec. 2 2013
	create-time  	   : Oct.22 2013
]]
ZhangMengPlatformView.createSinaBtn = function ( self )
	local btn = nil;
	local btnData = CreatingViewUsingData.switchLoginView.sinaLoginBtn;
	btn = UICreator.createBtn(btnData.fileName, btnData.x, btnData.y, self, function ( self )
		self:onClick(PlatformConfig.SinaLogin);
	end);
	local text = UICreator.createText(btnData.text, 0, -36, 150, 32, kAlignCenter, 28, 75, 43, 28);
	text:setAlign(kAlignBottom);
	btn:addChild(text);
	return btn;
end

--[[
	function name	   : ZhangMengPlatformView.createBoyaaBtn
	description  	   : create the Button of the Boyaa.
	param 	 	 	   : self
	last-modified-date : Dec. 2 2013
	create-time  	   : Oct.22 2013
]]
ZhangMengPlatformView.createBoyaaBtn = function ( self )
	local btn = nil;
	local btnData = CreatingViewUsingData.switchLoginView.boyaaLoginBtn;
	btn = UICreator.createBtn(btnData.fileName, btnData.x, btnData.y, self, function ( self )
		self:onClick(PlatformConfig.BoyaaLogin);
	end);
	local text = UICreator.createText(btnData.text, 0, -36, 150, 32, kAlignCenter, 28,  75, 43, 28);
	text:setAlign(kAlignBottom);
	btn:addChild(text);
	return btn;
end

--[[
	function name	   : ZhangMengPlatformView.createWeChatBtn
	description  	   : create the Button of the WeChat.
	param 	 	 	   : self
	last-modified-date : Dec. 2 2013
	create-time  	   : Oct.22 2013
]]
ZhangMengPlatformView.createWeChatBtn = function ( self )
	local btn = nil;
	local btnData = CreatingViewUsingData.switchLoginView.loginWeChatBtn;
	btn = UICreator.createBtn(btnData.fileName, btnData.x, btnData.y, self, function ( self )
		self:onClick(PlatformConfig.WeChatLogin);
	end);
	local text = UICreator.createText(btnData.text, 0, -36, 150, 32, kAlignCenter, 28, 75, 43, 28);
	text:setAlign(kAlignBottom);
	btn:addChild(text);
	return btn;
end



--主平台的登录方式列表
ZhangMengPlatformView.loginBtnCreateFunMap = {
	[PlatformConfig.SinaLogin] 	= ZhangMengPlatformView.createSinaBtn,
	[PlatformConfig.QQLogin] 	= ZhangMengPlatformView.createQQBtn,
	[PlatformConfig.BoyaaLogin] = ZhangMengPlatformView.createBoyaaBtn,
	[PlatformConfig.WeChatLogin]= ZhangMengPlatformView.createWeChatBtn,
	[PlatformConfig.GuestLogin] = ZhangMengPlatformView.createGuestBtn,
	[PlatformConfig.NewGuestLogin] = ZhangMengPlatformView.createNewGuestBtn
};

--返回该平台对应的强制更新界面、首冲大礼包、普通更新界面、公告、签到界面的level
--强更>首冲>普更>公告>签到
ZhangMengPlatform.getPlatformLevel = function(self)
	return 20000,15000,10000,8000,6000;
end


