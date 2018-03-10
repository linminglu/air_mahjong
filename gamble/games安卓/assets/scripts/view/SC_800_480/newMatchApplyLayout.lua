local newMatchApplyLayout=
{
	name="newMatchApplyLayout",type=0,typeName="View",time=0,x=0,y=0,width=1280,height=720,visible=1,fillParentWidth=0,fillParentHeight=0,nodeAlign=kAlignTopLeft,
	{
		name="bgImage",type=1,typeName="Image",time=66368359,x=0,y=0,width=1280,height=720,visible=1,fillParentWidth=0,fillParentHeight=1,nodeAlign=kAlignTopLeft,file="apply/apply.jpg",gridLeft=20,gridRight=20,gridTop=20,gridBottom=20,
		{
			name="win_right",type=1,typeName="Image",time=95327621,x=0,y=0,width=76,height=155,visible=1,fillParentWidth=0,fillParentHeight=0,nodeAlign=kAlignTopRight,file="apply/window.png"
		},
		{
			name="win_left",type=1,typeName="Image",time=95328520,x=0,y=0,width=76,height=155,visible=1,fillParentWidth=0,fillParentHeight=0,nodeAlign=kAlignTopLeft,file="apply/window.png"
		},
		{
			name="bamboo_left",type=1,typeName="Image",time=95328892,x=0,y=0,width=96,height=162,visible=1,fillParentWidth=0,fillParentHeight=0,nodeAlign=kAlignTopLeft,file="Room/roomInfo/bambooLeft.png"
		},
		{
			name="bamboo_right",type=1,typeName="Image",time=95328914,x=0,y=0,width=64,height=148,visible=1,fillParentWidth=0,fillParentHeight=0,nodeAlign=kAlignTopRight,file="Room/roomInfo/bambooRight.png"
		},
		{
			name="topImg",type=1,typeName="Image",time=95329141,x=0,y=0,width=608,height=124,visible=1,fillParentWidth=0,fillParentHeight=0,nodeAlign=kAlignTop,file="apply/top.png",gridLeft=20,gridRight=20,gridTop=20,gridBottom=20,
			{
				name="txtMatchName",type=4,typeName="Text",time=95329142,x=0,y=40,width=250,height=50,visible=0,fillParentWidth=0,fillParentHeight=0,nodeAlign=kAlignTop,fontSize=46,textAlign=kAlignCenter,colorRed=146,colorGreen=51,colorBlue=1,string=[[新手挑战赛]],colorA=1
			},
			{
				name="img",type=1,typeName="Image",time=115714931,x=0,y=0,width=226,height=44,visible=1,fillParentWidth=0,fillParentHeight=0,nodeAlign=kAlignCenter,file="apply/img_title_1.png"
			}
		},
		{
			name="btnExit",type=2,typeName="Button",time=95329143,x=20,y=20,width=80,height=82,visible=1,fillParentWidth=0,fillParentHeight=0,nodeAlign=kAlignTopLeft,file="Commonx/return_btn.png",gridLeft=20,gridRight=20,gridTop=20,gridBottom=20
		},
		{
			name="btnBarrage",type=2,typeName="Button",time=109221190,x=50,y=15,width=100,height=72,visible=1,fillParentWidth=0,fillParentHeight=0,nodeAlign=kAlignTopRight,file="apply/btnBarrageOpen.png"
		},
		{
			name="viewBottom",type=0,typeName="View",time=109222153,x=0,y=0,width=1280,height=150,visible=1,fillParentWidth=0,fillParentHeight=0,nodeAlign=kAlignBottom,
			{
				name="btnGame",type=2,typeName="Button",time=109222155,x=325,y=-10,width=272,height=80,visible=1,fillParentWidth=0,fillParentHeight=0,nodeAlign=kAlignTopRight,file="apply/right.png",
				{
					name="Text1",type=4,typeName="Text",time=109222156,x=0,y=-4,width=0,height=0,visible=1,fillParentWidth=0,fillParentHeight=0,nodeAlign=kAlignCenter,fontSize=36,textAlign=kAlignLeft,colorRed=255,colorGreen=255,colorBlue=255,string=[[参与比赛]]
				}
			},
			{
				name="btnTip",type=2,typeName="Button",time=109222157,x=325,y=-10,width=272,height=80,visible=0,fillParentWidth=0,fillParentHeight=0,nodeAlign=kAlignTopRight,file="apply/right.png",
				{
					name="Text1",type=4,typeName="Text",time=109222158,x=0,y=-4,width=0,height=0,visible=1,fillParentWidth=0,fillParentHeight=0,nodeAlign=kAlignCenter,fontSize=36,textAlign=kAlignLeft,colorRed=255,colorGreen=255,colorBlue=255,string=[[开赛提醒]]
				}
			},
			{
				name="btnHelp",type=2,typeName="Button",time=111548249,x=325,y=-10,width=272,height=80,visible=1,fillParentWidth=0,fillParentHeight=0,nodeAlign=kAlignTopLeft,file="apply/left.png",
				{
					name="Text11",type=4,typeName="Text",time=111548373,x=0,y=-4,width=0,height=0,visible=1,fillParentWidth=0,fillParentHeight=0,nodeAlign=kAlignCenter,fontSize=36,textAlign=kAlignLeft,colorRed=255,colorGreen=255,colorBlue=255,string=[[奖励详情]],colorA=1
				}
			},
			{
				name="btnJoin",type=2,typeName="Button",time=115907732,x=325,y=-10,width=272,height=80,visible=0,fillParentWidth=0,fillParentHeight=0,nodeAlign=kAlignTopRight,file="apply/right.png",
				{
					name="Text1",type=4,typeName="Text",time=115907733,x=0,y=-4,width=0,height=0,visible=1,fillParentWidth=0,fillParentHeight=0,nodeAlign=kAlignCenter,fontSize=36,textAlign=kAlignLeft,colorRed=255,colorGreen=255,colorBlue=255,string=[[报名比赛]]
				}
			}
		},
		{
			name="v",type=0,typeName="View",time=115704223,x=0,y=0,width=1026,height=370,visible=1,fillParentWidth=0,fillParentHeight=0,nodeAlign=kAlignCenter,
			{
				name="panda",type=1,typeName="Image",time=115704302,x=0,y=-15,width=202,height=240,visible=0,fillParentWidth=0,fillParentHeight=0,nodeAlign=kAlignBottomLeft,file="apply/panda.png"
			},
			{
				name="coin",type=1,typeName="Image",time=115704308,x=6,y=104,width=110,height=84,visible=0,fillParentWidth=0,fillParentHeight=0,nodeAlign=kAlignBottomRight,file="apply/img_coin.png"
			},
			{
				name="tip",type=1,typeName="Image",time=115704404,x=0,y=-13,width=540,height=60,visible=1,fillParentWidth=0,fillParentHeight=0,nodeAlign=kAlignBottom,file="apply/blank_3.png",gridLeft=20,gridRight=20,gridTop=20,gridBottom=20
			},
			{
				name="win_1",type=1,typeName="Image",time=115705311,x=0,y=35,width=284,height=184,visible=1,fillParentWidth=0,fillParentHeight=0,nodeAlign=kAlignBottom,file="apply/img_1.png",
				{
					name="award",type=1,typeName="Image",time=115711928,x=0,y=-155,width=262,height=190,visible=1,fillParentWidth=0,fillParentHeight=0,nodeAlign=kAlignTop,file="Commonx/blank.png"
				},
				{
					name="award_t",type=1,typeName="Image",time=115712758,x=0,y=40,width=260,height=40,visible=1,fillParentWidth=0,fillParentHeight=0,nodeAlign=kAlignTop,file="apply/blank_2.png",gridLeft=10,gridRight=10,gridTop=10,gridBottom=10,
					{
						name="t",type=4,typeName="Text",time=115712759,x=0,y=0,width=0,height=0,visible=1,fillParentWidth=0,fillParentHeight=0,nodeAlign=kAlignCenter,fontSize=24,textAlign=kAlignLeft,colorRed=255,colorGreen=255,colorBlue=255
					}
				}
			},
			{
				name="win_2",type=1,typeName="Image",time=115705356,x=110,y=-19,width=248,height=160,visible=1,fillParentWidth=0,fillParentHeight=0,nodeAlign=kAlignLeft,file="apply/img_2.png",
				{
					name="award",type=1,typeName="Image",time=115713320,x=0,y=-110,width=183,height=133,visible=1,fillParentWidth=0,fillParentHeight=0,nodeAlign=kAlignTop,file="Commonx/blank.png"
				},
				{
					name="award_t",type=1,typeName="Image",time=115713325,x=0,y=28,width=220,height=40,visible=1,fillParentWidth=0,fillParentHeight=0,nodeAlign=kAlignTop,file="apply/blank_2.png",gridLeft=10,gridRight=10,gridTop=10,gridBottom=10,
					{
						name="t",type=4,typeName="Text",time=115713326,x=0,y=0,width=0,height=0,visible=1,fillParentWidth=0,fillParentHeight=0,nodeAlign=kAlignCenter,fontSize=22,textAlign=kAlignLeft,colorRed=255,colorGreen=255,colorBlue=255
					}
				}
			},
			{
				name="win_3",type=1,typeName="Image",time=115705358,x=110,y=-19,width=248,height=160,visible=1,fillParentWidth=0,fillParentHeight=0,nodeAlign=kAlignRight,file="apply/img_3.png",
				{
					name="award",type=1,typeName="Image",time=115712441,x=0,y=-110,width=183,height=133,visible=1,fillParentWidth=0,fillParentHeight=0,nodeAlign=kAlignTop,file="Commonx/blank.png"
				},
				{
					name="award_t",type=1,typeName="Image",time=115712894,x=0,y=28,width=220,height=40,visible=1,fillParentWidth=0,fillParentHeight=0,nodeAlign=kAlignTop,file="apply/blank_2.png",gridLeft=10,gridRight=10,gridTop=10,gridBottom=10,
					{
						name="t",type=4,typeName="Text",time=115712895,x=0,y=0,width=0,height=0,visible=1,fillParentWidth=0,fillParentHeight=0,nodeAlign=kAlignCenter,fontSize=22,textAlign=kAlignLeft,colorRed=255,colorGreen=255,colorBlue=255
					}
				}
			},
			{
				name="awardString",type=4,typeName="Text",time=115875906,x=13,y=97,width=230,height=50,visible=1,fillParentWidth=0,fillParentHeight=0,nodeAlign=kAlignCenter,fontSize=30,textAlign=kAlignCenter,colorRed=204,colorGreen=68,colorBlue=0,colorA=1
			}
		},
		{
			name="btn_info",type=2,typeName="Button",time=115719157,x=172,y=10,width=80,height=82,visible=1,fillParentWidth=0,fillParentHeight=0,nodeAlign=kAlignTopRight,file="apply/btn_info.png"
		},
		{
			name="btn_record",type=2,typeName="Button",time=115896494,x=0,y=130,width=56,height=156,visible=1,fillParentWidth=0,fillParentHeight=0,nodeAlign=kAlignTopRight,file="apply/btn_reward.png"
		},
		{
			name="btn_invite",type=2,typeName="Button",time=115719157,x=110,y=150,width=126,height=130,visible=1,fillParentWidth=0,fillParentHeight=0,nodeAlign=kAlignBottomRight,file="apply/btn_invite.png"
		}
	}
}
return newMatchApplyLayout;