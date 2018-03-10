local loginPopuLayout=
{
	name="loginPopuLayout",type=0,typeName="View",time=0,x=0,y=0,width=1280,height=800,visible=1,fillParentWidth=0,fillParentHeight=0,nodeAlign=kAlignCenter,
	{
		name="bg",type=1,typeName="Image",time=33633083,x=0,y=0,width=1022,height=644,visible=1,fillParentWidth=0,fillParentHeight=0,nodeAlign=kAlignCenter,file="Commonx/pop_window_big.png",gridLeft=50,gridRight=50,gridTop=100,gridBottom=50,
		{
			name="closeBtn",type=2,typeName="Button",time=33633430,x=-15,y=-15,width=66,height=70,visible=1,fillParentWidth=0,fillParentHeight=0,nodeAlign=kAlignTopRight,file="Commonx/close_btn.png",file2="Commonx/close_btn_disable.png"
		},
		{
			name="bottomView",type=0,typeName="View",time=33633629,x=16,y=485,width=990,height=135,visible=1,fillParentWidth=0,fillParentHeight=0,nodeAlign=kAlignTopLeft,
			{
				name="signBtn",type=2,typeName="Button",time=91956757,x=20,y=0,width=222,height=74,visible=1,fillParentWidth=0,fillParentHeight=0,nodeAlign=kAlignRight,file="Commonx/green_big_wide_btn.png",gridLeft=30,gridRight=30,gridTop=32,gridBottom=32,
				{
					name="text",type=4,typeName="Text",time=91956758,x=0,y=-4,width=0,height=0,visible=1,fillParentWidth=0,fillParentHeight=0,nodeAlign=kAlignCenter,fontSize=32,textAlign=kAlignCenter,colorRed=255,colorGreen=255,colorBlue=255,string=[[签  到]]
				}
			},
			{
				name="buqianBtn",type=2,typeName="Button",time=91956768,x=260,y=0,width=222,height=74,visible=1,fillParentWidth=0,fillParentHeight=0,nodeAlign=kAlignRight,file="Commonx/green_big_wide_btn.png",gridLeft=30,gridRight=30,gridTop=32,gridBottom=32,
				{
					name="text1",type=4,typeName="Text",time=91956769,x=0,y=-4,width=0,height=0,visible=1,fillParentWidth=0,fillParentHeight=0,nodeAlign=kAlignCenter,fontSize=32,textAlign=kAlignCenter,colorRed=255,colorGreen=255,colorBlue=255,string=[[购  买]]
				}
			},
			{
				name="View1",type=0,typeName="View",time=91957117,x=260,y=0,width=200,height=35,visible=1,fillParentWidth=0,fillParentHeight=0,nodeAlign=kAlignLeft,
				{
					name="signTime",type=4,typeName="Text",time=91957222,x=0,y=0,width=130,height=26,visible=1,fillParentWidth=0,fillParentHeight=0,nodeAlign=kAlignTopLeft,fontSize=26,textAlign=kAlignLeft,colorRed=75,colorGreen=43,colorBlue=28,string=[[本月签到：]]
				},
				{
					name="signDay",type=4,typeName="Text",time=91957226,x=115,y=0,width=42,height=0,visible=1,fillParentWidth=0,fillParentHeight=0,nodeAlign=kAlignTopLeft,fontSize=26,textAlign=kAlignCenter,colorRed=204,colorGreen=68,colorBlue=0,string=[[0]]
				},
				{
					name="signTime_tian",type=4,typeName="Text",time=91957229,x=160,y=0,width=30,height=26,visible=1,fillParentWidth=0,fillParentHeight=0,nodeAlign=kAlignTopLeft,fontSize=26,textAlign=kAlignLeft,colorRed=75,colorGreen=43,colorBlue=28,string=[[天]]
				}
			},
			{
				name="View2",type=0,typeName="View",time=91957367,x=0,y=0,width=260,height=67,visible=1,fillParentWidth=0,fillParentHeight=0,nodeAlign=kAlignTopLeft,
				{
					name="buTime",type=4,typeName="Text",time=91957515,x=30,y=30,width=130,height=26,visible=1,fillParentWidth=0,fillParentHeight=0,nodeAlign=kAlignTopLeft,fontSize=26,textAlign=kAlignLeft,colorRed=75,colorGreen=43,colorBlue=28,string=[[本月漏签：]]
				},
				{
					name="unsignDay",type=4,typeName="Text",time=91957520,x=145,y=30,width=40,height=26,visible=1,fillParentWidth=0,fillParentHeight=0,nodeAlign=kAlignTopLeft,fontSize=26,textAlign=kAlignCenter,colorRed=204,colorGreen=68,colorBlue=0,string=[[0]]
				},
				{
					name="buTime_ci",type=4,typeName="Text",time=91957529,x=185,y=30,width=30,height=26,visible=1,fillParentWidth=0,fillParentHeight=0,nodeAlign=kAlignTopLeft,fontSize=26,textAlign=kAlignLeft,colorRed=75,colorGreen=43,colorBlue=28,string=[[天]]
				}
			},
			{
				name="View3",type=0,typeName="View",time=91957404,x=0,y=67,width=260,height=68,visible=1,fillParentWidth=0,fillParentHeight=0,nodeAlign=kAlignTopLeft,
				{
					name="cardText",type=4,typeName="Text",time=91957536,x=30,y=10,width=130,height=26,visible=1,fillParentWidth=0,fillParentHeight=0,nodeAlign=kAlignTopLeft,fontSize=26,textAlign=kAlignLeft,colorRed=75,colorGreen=43,colorBlue=28,string=[[补签卡剩：]]
				},
				{
					name="cardNum",type=4,typeName="Text",time=91957539,x=145,y=10,width=40,height=26,visible=1,fillParentWidth=0,fillParentHeight=0,nodeAlign=kAlignTopLeft,fontSize=26,textAlign=kAlignCenter,colorRed=204,colorGreen=68,colorBlue=0,string=[[0]]
				},
				{
					name="cardText_zhang",type=4,typeName="Text",time=91957542,x=185,y=10,width=30,height=26,visible=1,fillParentWidth=0,fillParentHeight=0,nodeAlign=kAlignTopLeft,fontSize=26,textAlign=kAlignLeft,colorRed=75,colorGreen=43,colorBlue=28,string=[[张]]
				}
			}
		},
		{
			name="title",type=4,typeName="Text",time=52451871,x=0,y=24,width=160,height=40,visible=1,fillParentWidth=0,fillParentHeight=0,nodeAlign=kAlignTop,fontSize=40,textAlign=kAlignLeft,colorRed=255,colorGreen=255,colorBlue=255,string=[[签到有礼]]
		},
		{
			name="contentView",type=0,typeName="View",time=91958374,x=16,y=82,width=990,height=402,visible=1,fillParentWidth=0,fillParentHeight=0,nodeAlign=kAlignTopLeft,
			{
				name="sign1",type=0,typeName="View",time=91958573,x=-380,y=0,width=190,height=365,visible=1,fillParentWidth=0,fillParentHeight=0,nodeAlign=kAlignCenter,
				{
					name="bg",type=1,typeName="Image",time=91958693,x=0,y=0,width=150,height=150,visible=1,fillParentWidth=0,fillParentHeight=0,nodeAlign=kAlignCenter,file="Hall/sign/bg.png",
					{
						name="icon",type=1,typeName="Image",time=91959361,x=0,y=0,width=150,height=150,visible=1,fillParentWidth=0,fillParentHeight=0,nodeAlign=kAlignCenter,file="Hall/sign/default.png"
					}
				},
				{
					name="name",type=4,typeName="Text",time=91958746,x=0,y=-105,width=0,height=0,visible=1,fillParentWidth=0,fillParentHeight=0,nodeAlign=kAlignCenter,fontSize=26,textAlign=kAlignCenter,colorRed=206,colorGreen=138,colorBlue=57,string=[[3次签到礼包]]
				},
				{
					name="type",type=4,typeName="Text",time=91958826,x=0,y=105,width=0,height=0,visible=1,fillParentWidth=0,fillParentHeight=0,nodeAlign=kAlignCenter,fontSize=26,textAlign=kAlignCenter,colorRed=204,colorGreen=68,colorBlue=0,string=[[VIP]]
				},
				{
					name="have",type=1,typeName="Image",time=91958859,x=0,y=10,width=150,height=46,visible=0,fillParentWidth=0,fillParentHeight=0,nodeAlign=kAlignBottom,file="Hall/sign/signed.png"
				},
				{
					name="tip",type=1,typeName="Image",time=91958974,x=0,y=15,width=112,height=49,visible=0,fillParentWidth=0,fillParentHeight=0,nodeAlign=kAlignTopRight,file="Hall/sign/sign_0d.png",
					{
						name="txt",type=4,typeName="Text",time=91959062,x=0,y=-7,width=0,height=0,visible=1,fillParentWidth=0,fillParentHeight=0,nodeAlign=kAlignCenter,fontSize=22,textAlign=kAlignLeft,colorRed=255,colorGreen=255,colorBlue=255,string=[[点击领取]]
					}
				}
			},
			{
				name="sign2",type=0,typeName="View",time=91959169,x=-190,y=0,width=190,height=365,visible=1,fillParentWidth=0,fillParentHeight=0,nodeAlign=kAlignCenter,
				{
					name="bg",type=1,typeName="Image",time=91959171,x=0,y=0,width=150,height=150,visible=1,fillParentWidth=0,fillParentHeight=0,nodeAlign=kAlignCenter,file="Hall/sign/bg.png",
					{
						name="icon",type=1,typeName="Image",time=91959420,x=0,y=0,width=150,height=150,visible=1,fillParentWidth=0,fillParentHeight=0,nodeAlign=kAlignCenter,file="Hall/sign/default.png"
					}
				},
				{
					name="name",type=4,typeName="Text",time=91959172,x=0,y=-105,width=0,height=0,visible=1,fillParentWidth=0,fillParentHeight=0,nodeAlign=kAlignCenter,fontSize=26,textAlign=kAlignCenter,colorRed=206,colorGreen=138,colorBlue=57,string=[[3次签到礼包]]
				},
				{
					name="type",type=4,typeName="Text",time=91959173,x=0,y=105,width=0,height=0,visible=1,fillParentWidth=0,fillParentHeight=0,nodeAlign=kAlignCenter,fontSize=26,textAlign=kAlignCenter,colorRed=204,colorGreen=68,colorBlue=0,string=[[VIP]]
				},
				{
					name="have",type=1,typeName="Image",time=91959174,x=0,y=10,width=150,height=46,visible=0,fillParentWidth=0,fillParentHeight=0,nodeAlign=kAlignBottom,file="Hall/sign/signed.png"
				},
				{
					name="tip",type=1,typeName="Image",time=91959175,x=0,y=15,width=112,height=49,visible=0,fillParentWidth=0,fillParentHeight=0,nodeAlign=kAlignTopRight,file="Hall/sign/sign_0d.png",
					{
						name="txt",type=4,typeName="Text",time=91959176,x=0,y=-7,width=0,height=0,visible=1,fillParentWidth=0,fillParentHeight=0,nodeAlign=kAlignCenter,fontSize=22,textAlign=kAlignLeft,colorRed=255,colorGreen=255,colorBlue=255,string=[[点击领取]]
					}
				}
			},
			{
				name="sign3",type=0,typeName="View",time=91959174,x=0,y=0,width=190,height=365,visible=1,fillParentWidth=0,fillParentHeight=0,nodeAlign=kAlignCenter,
				{
					name="bg",type=1,typeName="Image",time=91959176,x=0,y=0,width=150,height=150,visible=1,fillParentWidth=0,fillParentHeight=0,nodeAlign=kAlignCenter,file="Hall/sign/bg.png",
					{
						name="icon",type=1,typeName="Image",time=91959429,x=0,y=0,width=150,height=150,visible=1,fillParentWidth=0,fillParentHeight=0,nodeAlign=kAlignCenter,file="Hall/sign/default.png"
					}
				},
				{
					name="name",type=4,typeName="Text",time=91959177,x=0,y=-105,width=0,height=0,visible=1,fillParentWidth=0,fillParentHeight=0,nodeAlign=kAlignCenter,fontSize=26,textAlign=kAlignCenter,colorRed=206,colorGreen=138,colorBlue=57,string=[[3次签到礼包]]
				},
				{
					name="type",type=4,typeName="Text",time=91959178,x=0,y=105,width=0,height=0,visible=1,fillParentWidth=0,fillParentHeight=0,nodeAlign=kAlignCenter,fontSize=26,textAlign=kAlignCenter,colorRed=204,colorGreen=68,colorBlue=0,string=[[VIP]]
				},
				{
					name="have",type=1,typeName="Image",time=91959179,x=0,y=10,width=150,height=46,visible=0,fillParentWidth=0,fillParentHeight=0,nodeAlign=kAlignBottom,file="Hall/sign/signed.png"
				},
				{
					name="tip",type=1,typeName="Image",time=91959180,x=0,y=15,width=112,height=49,visible=0,fillParentWidth=0,fillParentHeight=0,nodeAlign=kAlignTopRight,file="Hall/sign/sign_0d.png",
					{
						name="txt",type=4,typeName="Text",time=91959181,x=0,y=-7,width=0,height=0,visible=1,fillParentWidth=0,fillParentHeight=0,nodeAlign=kAlignCenter,fontSize=22,textAlign=kAlignLeft,colorRed=255,colorGreen=255,colorBlue=255,string=[[点击领取]]
					}
				}
			},
			{
				name="sign4",type=0,typeName="View",time=91959176,x=190,y=0,width=190,height=365,visible=1,fillParentWidth=0,fillParentHeight=0,nodeAlign=kAlignCenter,
				{
					name="bg",type=1,typeName="Image",time=91959178,x=0,y=0,width=150,height=150,visible=1,fillParentWidth=0,fillParentHeight=0,nodeAlign=kAlignCenter,file="Hall/sign/bg.png",
					{
						name="icon",type=1,typeName="Image",time=91959436,x=0,y=0,width=150,height=150,visible=1,fillParentWidth=0,fillParentHeight=0,nodeAlign=kAlignCenter,file="Hall/sign/default.png"
					}
				},
				{
					name="name",type=4,typeName="Text",time=91959179,x=0,y=-105,width=0,height=0,visible=1,fillParentWidth=0,fillParentHeight=0,nodeAlign=kAlignCenter,fontSize=26,textAlign=kAlignCenter,colorRed=206,colorGreen=138,colorBlue=57,string=[[3次签到礼包]]
				},
				{
					name="type",type=4,typeName="Text",time=91959180,x=0,y=105,width=0,height=0,visible=1,fillParentWidth=0,fillParentHeight=0,nodeAlign=kAlignCenter,fontSize=26,textAlign=kAlignCenter,colorRed=204,colorGreen=68,colorBlue=0,string=[[VIP]]
				},
				{
					name="have",type=1,typeName="Image",time=91959181,x=0,y=10,width=150,height=46,visible=0,fillParentWidth=0,fillParentHeight=0,nodeAlign=kAlignBottom,file="Hall/sign/signed.png"
				},
				{
					name="tip",type=1,typeName="Image",time=91959182,x=0,y=15,width=112,height=49,visible=0,fillParentWidth=0,fillParentHeight=0,nodeAlign=kAlignTopRight,file="Hall/sign/sign_0d.png",
					{
						name="txt",type=4,typeName="Text",time=91959183,x=0,y=-7,width=0,height=0,visible=1,fillParentWidth=0,fillParentHeight=0,nodeAlign=kAlignCenter,fontSize=22,textAlign=kAlignLeft,colorRed=255,colorGreen=255,colorBlue=255,string=[[点击领取]]
					}
				}
			},
			{
				name="sign5",type=0,typeName="View",time=91959179,x=380,y=0,width=190,height=365,visible=1,fillParentWidth=0,fillParentHeight=0,nodeAlign=kAlignCenter,
				{
					name="bg",type=1,typeName="Image",time=91959181,x=0,y=0,width=150,height=150,visible=1,fillParentWidth=0,fillParentHeight=0,nodeAlign=kAlignCenter,file="Hall/sign/bg.png",
					{
						name="icon",type=1,typeName="Image",time=91959444,x=0,y=0,width=150,height=150,visible=1,fillParentWidth=0,fillParentHeight=0,nodeAlign=kAlignCenter,file="Hall/sign/default.png"
					}
				},
				{
					name="name",type=4,typeName="Text",time=91959182,x=0,y=-105,width=0,height=0,visible=1,fillParentWidth=0,fillParentHeight=0,nodeAlign=kAlignCenter,fontSize=26,textAlign=kAlignCenter,colorRed=206,colorGreen=138,colorBlue=57,string=[[3次签到礼包]]
				},
				{
					name="type",type=4,typeName="Text",time=91959183,x=0,y=105,width=0,height=0,visible=1,fillParentWidth=0,fillParentHeight=0,nodeAlign=kAlignCenter,fontSize=26,textAlign=kAlignCenter,colorRed=204,colorGreen=68,colorBlue=0,string=[[VIP]]
				},
				{
					name="have",type=1,typeName="Image",time=91959184,x=0,y=10,width=150,height=46,visible=0,fillParentWidth=0,fillParentHeight=0,nodeAlign=kAlignBottom,file="Hall/sign/signed.png"
				},
				{
					name="tip",type=1,typeName="Image",time=91959185,x=0,y=15,width=112,height=49,visible=0,fillParentWidth=0,fillParentHeight=0,nodeAlign=kAlignTopRight,file="Hall/sign/sign_0d.png",
					{
						name="txt",type=4,typeName="Text",time=91959186,x=0,y=-7,width=0,height=0,visible=1,fillParentWidth=0,fillParentHeight=0,nodeAlign=kAlignCenter,fontSize=22,textAlign=kAlignLeft,colorRed=255,colorGreen=255,colorBlue=255,string=[[点击领取]]
					}
				}
			}
		},
		{
			name="splitLine2",type=1,typeName="Image",time=91958467,x=16,y=485,width=990,height=2,visible=1,fillParentWidth=0,fillParentHeight=0,nodeAlign=kAlignTopLeft,file="Commonx/split_hori.png"
		}
	}
}
return loginPopuLayout;