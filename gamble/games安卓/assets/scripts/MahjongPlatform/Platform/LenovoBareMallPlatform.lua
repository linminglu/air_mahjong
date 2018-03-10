--[[
	className    	     :  LenovoBareMallPlatform
	Description  	     :  平台类-子类(联想裸码游戏大厅平台))
	last-modified-date   :  Jan.13 2015
	create-time 	     :  Jan.13 2015
	last-modified-author :  ClarkWu
	create-author        :  ClarkWu
]]
require("MahjongCommon/CustomNode");
--
require("MahjongPlatform/Platform/BasePlatform");

LenovoBareMallPlatform = class(BasePlatform);

--[[
	function name	   : LenovoBareMallPlatform.ctor
	description  	   : Construct a class.
	param 	 	 	   : self
	last-modified-date : Feb.12 2014
	create-time  	   : Feb.12 2014
]]
LenovoBareMallPlatform.ctor = function ( self)
	self.curDefaultPmode = 328; --默认为联想的商品 328
	self.m_loginTable = {PlatformConfig.SinaLogin,PlatformConfig.QQLogin,PlatformConfig.BoyaaLogin,PlatformConfig.GuestLogin};
	-- self.paymentTable = {BasePay.PAY_TYPE_BAIDU};
	self.paymentTable = {BasePay.PAY_TYPE_LENOVO_BARE}; -- test
	self.m_loginMethods = {};
end

--[[
	function name	   : LenovoBareMallPlatform.dtor
	description  	   : Destructor a class.
	param 	 	 	   : self
	last-modified-date : Feb.12 2014
	create-time  	   : Feb.12 2014
]]
LenovoBareMallPlatform.dtor = function ( self )
end

LenovoBareMallPlatform.returnIsLianyunName = function(self)
	return PlatformConfig.feedback_platform_lenovo_bare;
end

-- 是否只有游客登录(目前Oppo也使用)
LenovoBareMallPlatform.hasOnlyGuestLogin = function(self)
	return false;
end

--[[
	function name	   : LenovoBareMallPlatform.getLoginView
	description  	   : @Override.
	param 	 	 	   : self
	last-modified-date : Feb.12 2014
	create-time  	   : Feb.12 2014
]]
LenovoBareMallPlatform.getLoginView = function ( self)
	return new(LenovoBareMallPlatformView,self.m_loginTable);
end

--[[
	function name	   : LenovoBareMallPlatform.getDefaultLoginMethod
	description  	   : @Override.
	param 	 	 	   : self
	last-modified-date : Feb.12 2014
	create-time  	   : Feb.12 2014
]]
LenovoBareMallPlatform.getDefaultLoginMethod = function ( self )
	local loginType = g_DiskDataMgr:getAppData(kLastLoginType, PlatformConfig.GuestLogin);
	return loginType;
	-- return PlatformConfig.GuestLogin;
end

LenovoBareMallPlatform.changeLoginMethod = function(self,loginMethod)
	if loginMethod and not self.m_loginMethods[loginMethod] then 
		self.m_loginMethods[loginMethod] = new(self.getLoginMethodCls(loginMethod) or GuestLogin);
	end
	return self.m_loginMethods[loginMethod];
end

LenovoBareMallPlatform.getPayManagerType = function( self )
	return BasePayManager.TYPE_SINGLE;
end

LenovoBareMallPlatform.isNeedChangeXueZhanLogo = function(self)
	return true;
end

-- 获取应用APPID信息
-- @Override
LenovoBareMallPlatform.getLoginAppId = function( self, loginType )
	if loginType == PlatformConfig.GuestLogin then
	 	return "7294"; --7162
	elseif loginType == PlatformConfig.BoyaaLogin then
	 	return "7295";
	elseif loginType == PlatformConfig.QQLogin then
	 	return "7293";
	elseif loginType == PlatformConfig.SinaLogin then
	 	return "7292";
	end
	return "7294";
end

-- 分享时应用名称
LenovoBareMallPlatform.getApplicationShareName = function( self )
	return "博雅血战麻将";
end
--*****************************************************View平台界面********************************************************************************--
--[[
	className    	     :  LenovoBareMallPlatformView
	Description  	     :  平台界面类
	last-modified-date   :  Feb.12 2014
	create-time 	     :  Feb.12 2014
	last-modified-author :  ClarkWu
	create-author        :  ClarkWu
]]
LenovoBareMallPlatformView = class(CustomNode);

--[[
	function name	   : LenovoBareMallPlatformView.ctor
	description  	   : Construct the class.
	param 	 	 	   : self
	last-modified-date : Dec. 2 2013
	create-time  	   : Feb.12 2014
]]
LenovoBareMallPlatformView.ctor = function(self,loginTable)
	self.cover:setEventTouch(self , function (self)
		delete(self);
	end);
	self.bg = new(Image, CreatingViewUsingData.switchLoginView.loginBg.fileName, nil, nil, 50, 50, 50, 50);
	self.bg:setSize(900, 500);
	self.bg:setAlign(kAlignCenter);
	self.bg:setEventTouch(self, function ( self )
		
	end);
	self:addChild(self.bg);

	local logoData = CreatingViewUsingData.switchLoginView.logoFile;
	local logoBg = new(Image, logoData.logoBg);
	logoBg:setAlign(kAlignCenter);
	logoBg:setPos(0, -80);
	self.bg:addChild(logoBg);

	local logoData = CreatingViewUsingData.switchLoginView.logoFile;
	local logo = new(Image, logoData.logo);
	logo:setAlign(kAlignCenter);
	logo:setPos(0, -82);
	self.bg:addChild(logo);

	local logoData = CreatingViewUsingData.switchLoginView.logoFile;
	local splite = new(Image, logoData.splite);
	splite:setAlign(kAlignCenter);
	splite:setPos(0, 50);
	self.bg:addChild(splite);


	self.btnView = new(Node);

	local btnArray = {};
	local allLen = kNumZero;
	for k,v in pairs(loginTable) do
		local btn = self.loginBtnCreateFunMap[v](self);
		table.insert(btnArray, btn);
		allLen = allLen + btn.m_width;
	end
	local len = #btnArray;

	local dist = (self.bg.m_width - allLen) / (len + 1);
	local x, y = CreatingViewUsingData.switchLoginView.loginBtn.x, CreatingViewUsingData.switchLoginView.loginBtn.y;
	for k,v in pairs(btnArray) do
		x = x + dist;
		v:setPos(x, y);
		self.btnView:addChild(v);
		x = x + CreatingViewUsingData.switchLoginView.loginBtn.split;
	end

	self.bg:addChild(self.btnView);
end

--[[
	function name	   : TrunkPlatformView.onClick
	description  	   : Destruct the class.
	param 	 	 	   : self
	last-modified-date : Dec. 2 2013
	create-time  	   : Oct.22 2013
]]
LenovoBareMallPlatformView.onClick = function(self, loginMethod)
	DebugLog("  loginMethod  : "..loginMethod);
	DebugLog("  self.curLoginType  : "..PlatformFactory.curPlatform.curLoginType);
	if loginMethod == PlatformFactory.curPlatform.curLoginType then
		DebugLog("  loginMethod == self.curLoginType  ");
		PlatformFactory.curPlatform:logout();
	else
		DebugLog("  loginMethod != self.curLoginType  ");
		PlatformFactory.curPlatform:clearCurUserGameData();
	end
	PlatformFactory.curPlatform:login(loginMethod);
	delete(self);
	self = nil;
end

--[[
	function name	   : TrunkPlatformView.createGuestBtn
	description  	   : create the Button of the guest.
	param 	 	 	   : self
	last-modified-date : Dec. 2 2013
	create-time  	   : Oct.22 2013
]]
LenovoBareMallPlatformView.createGuestBtn = function ( self )
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

--[[
	function name	   : TrunkPlatformView.createQQBtn
	description  	   : create the Button of the QQ.
	param 	 	 	   : self
	last-modified-date : Dec. 2 2013
	create-time  	   : Oct.22 2013
]]
LenovoBareMallPlatformView.createQQBtn = function ( self )
	local btn = nil;
	local btnData = CreatingViewUsingData.switchLoginView.qqLoginBtn;
	btn = UICreator.createBtn(btnData.fileName, btnData.x, btnData.y, self, function ( self )
		self:onClick(PlatformConfig.QQLogin);
	end);
	local text = UICreator.createText(btnData.text, 0, -36, 150, 32, kAlignCenter, 28, 75, 43, 28);
	text:setAlign(kAlignBottom);
	btn:addChild(text);
	return btn;
end

--[[
	function name	   : TrunkPlatformView.createSinaBtn
	description  	   : create the Button of the Sina.
	param 	 	 	   : self
	last-modified-date : Dec. 2 2013
	create-time  	   : Oct.22 2013
]]
LenovoBareMallPlatformView.createSinaBtn = function ( self )
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
	function name	   : TrunkPlatformView.createBoyaaBtn
	description  	   : create the Button of the Boyaa.
	param 	 	 	   : self
	last-modified-date : Dec. 2 2013
	create-time  	   : Oct.22 2013
]]
LenovoBareMallPlatformView.createBoyaaBtn = function ( self )
	local btn = nil;
	local btnData = CreatingViewUsingData.switchLoginView.boyaaLoginBtn;
	btn = UICreator.createBtn(btnData.fileName, btnData.x, btnData.y, self, function ( self )
		self:onClick(PlatformConfig.BoyaaLogin);
	end);
	local text = UICreator.createText(btnData.text, 0, -36, 150, 32, kAlignCenter, 28, 75, 43, 28);
	text:setAlign(kAlignBottom);
	btn:addChild(text);
	return btn;
end


--[[
	function name	   : LenovoBareMallPlatformView.dtor
	description  	   : Destruct the class.
	param 	 	 	   : self
	last-modified-date : Feb.12 2014
	create-time  	   : Feb.12 2014
]]
LenovoBareMallPlatformView.dtor = function(self)
	CustomNode.hide(self);
	self:removeAllChildren();
end

--[[
	function name	   : LenovoBareMallPlatformView.onClick
	description  	   : Destruct the class.
	param 	 	 	   : self
	last-modified-date : Feb.12 2014
	create-time  	   : Feb.12 2014
]]
-- LenovoBareMallPlatformView.onClick = function(self,loginMethod)
-- 	if loginMethod == PlatformFactory.curPlatform.curLoginType then
-- 		PlatformFactory.curPlatform:logout();
-- 	else
-- 		PlatformFactory.curPlatform:clearCurUserGameData();
-- 	end
-- 	umengStatics_lua(kUmengBaiduLogin);
-- 	PlatformFactory.curPlatform:login(loginMethod);
-- 	delete(self);
-- 	self = nil;
-- end

--百度渠道联运的登录方式列表
LenovoBareMallPlatformView.loginBtnCreateFunMap = {
	[PlatformConfig.SinaLogin] 	= LenovoBareMallPlatformView.createSinaBtn,
	[PlatformConfig.QQLogin] 	= LenovoBareMallPlatformView.createQQBtn,
	[PlatformConfig.BoyaaLogin] = LenovoBareMallPlatformView.createBoyaaBtn,
	[PlatformConfig.GuestLogin] = LenovoBareMallPlatformView.createGuestBtn
};