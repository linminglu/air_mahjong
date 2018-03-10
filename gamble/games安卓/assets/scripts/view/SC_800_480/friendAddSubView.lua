friendAddSubView=
{
	name="friendAddSubView",type=0,typeName="View",time=0,x=0,y=0,width=1280,height=800,visible=1,fillParentWidth=1,fillParentHeight=1,nodeAlign=kAlignTopLeft,
	{
		name="img_bg",type=1,typeName="Image",time=54784833,x=40,y=140,width=1200,height=620,fillTopLeftX=40,fillTopLeftY=140,fillBottomRightX=40,fillBottomRightY=40,visible=1,fillParentWidth=1,fillParentHeight=0,nodeAlign=kAlignTop,file="rank/listview_bg.png",gridLeft=10,gridRight=10,gridTop=10,gridBottom=10,
		{
			name="img_split_v",type=1,typeName="Image",time=54786204,x=307,y=150,width=2,height=469,visible=1,fillParentWidth=0,fillParentHeight=0,nodeAlign=kAlignTopLeft,file="Common/subViewSplite2.png"
		},
		{
			name="view_friend_infor",type=0,typeName="View",time=54788818,x=310,y=67,width=890,height=553,visible=1,fillParentWidth=0,fillParentHeight=0,nodeAlign=kAlignTopLeft,
			{
				name="view_headicon",type=0,typeName="View",time=54799303,x=0,y=0,width=890,height=210,visible=1,fillParentWidth=0,fillParentHeight=0,nodeAlign=kAlignTop,
				{
					name="img_edit_bg",type=1,typeName="Image",time=54876768,x=60,y=50,width=580,height=78,visible=1,fillParentWidth=0,fillParentHeight=0,nodeAlign=kAlignTopLeft,file="friend/searchEdit.png",gridLeft=30,gridRight=30,gridTop=0,gridBottom=0,
					{
						name="et_search",type=6,typeName="EditText",time=54877086,x=10,y=0,width=560,height=78,visible=1,fillParentWidth=1,fillParentHeight=1,nodeAlign=kAlignTopLeft,fontSize=30,textAlign=kAlignLeft,colorRed=40,colorGreen=40,colorBlue=40,string=[[]]
					}
				},
				{
					name="btn_search",type=2,typeName="Button",time=54876979,x=660,y=58,width=170,height=64,visible=1,fillParentWidth=0,fillParentHeight=0,nodeAlign=kAlignTopLeft,file="Common/blank.png",
					{
						name="Image3",type=1,typeName="Image",time=54876980,x=42,y=0,width=86,height=64,visible=1,fillParentWidth=0,fillParentHeight=0,nodeAlign=kAlignTopLeft,file="Common/subViewBtnG2.png",gridLeft=10,gridRight=10,gridTop=0,gridBottom=0
					},
					{
						name="Image4",type=1,typeName="Image",time=54876981,x=0,y=0,width=44,height=64,visible=1,fillParentWidth=0,fillParentHeight=0,nodeAlign=kAlignTopLeft,file="Common/subViewBtnG1.png"
					},
					{
						name="Image5",type=1,typeName="Image",time=54876982,x=126,y=0,width=44,height=64,visible=1,fillParentWidth=0,fillParentHeight=0,nodeAlign=kAlignTopLeft,file="Common/subViewBtnG3.png"
					},
					{
						name="Text1",type=4,typeName="Text",time=54876983,x=0,y=0,width=200,height=64,visible=1,fillParentWidth=1,fillParentHeight=1,nodeAlign=kAlignCenter,fontSize=32,textAlign=kAlignCenter,colorRed=255,colorGreen=255,colorBlue=255,string=[[搜 索]]
					}
				},
				{
					name="text_myid",type=4,typeName="Text",time=54877401,x=60,y=150,width=120,height=30,visible=1,fillParentWidth=0,fillParentHeight=0,nodeAlign=kAlignTopLeft,fontSize=30,textAlign=kAlignLeft,colorRed=255,colorGreen=240,colorBlue=207,string=[[]]
				}
			},
			{
				name="view_search_result",type=0,typeName="View",time=54800871,x=0,y=212,width=890,height=340,visible=1,fillParentWidth=0,fillParentHeight=0,nodeAlign=kAlignTopLeft,
				{
					name="view_not_found",type=0,typeName="View",time=54964618,x=0,y=0,width=890,height=340,visible=0,fillParentWidth=0,fillParentHeight=0,nodeAlign=kAlignCenter,
					{
						name="text_result",type=4,typeName="Text",time=54964521,x=280,y=0,width=420,height=30,visible=1,fillParentWidth=0,fillParentHeight=0,nodeAlign=kAlignLeft,fontSize=30,textAlign=kAlignLeft,colorRed=255,colorGreen=240,colorBlue=207,string=[[没有找到ID为:12345678 的玩家]]
					},
					{
						name="Image2",type=1,typeName="Image",time=54964391,x=180,y=0,width=72,height=72,visible=1,fillParentWidth=0,fillParentHeight=0,nodeAlign=kAlignLeft,file="friend/warning.png"
					}
				},
				{
					name="view_found",type=2,typeName="Button",time=56601365,x=0,y=0,width=890,height=120,visible=0,fillParentWidth=0,fillParentHeight=0,nodeAlign=kAlignTop,file="Common/blank.png",
					{
						name="img_split",type=1,typeName="Image",time=54974510,x=0,y=118,width=470,height=2,visible=1,fillParentWidth=1,fillParentHeight=0,nodeAlign=kAlignTopLeft,file="Common/subViewSplite.png"
					},
					{
						name="view_adapt",type=0,typeName="View",time=56878344,x=0,y=0,width=890,height=120,visible=1,fillParentWidth=0,fillParentHeight=0,nodeAlign=kAlignTop,
						{
							name="view_detail",type=0,typeName="View",time=54974511,x=190,y=0,width=230,height=120,visible=1,fillParentWidth=0,fillParentHeight=0,nodeAlign=kAlignTopLeft,
							{
								name="view_name",type=0,typeName="View",time=54974512,x=0,y=10,width=230,height=50,visible=1,fillParentWidth=0,fillParentHeight=0,nodeAlign=kAlignTopLeft,
								{
									name="Image2",type=1,typeName="Image",time=54974513,x=0,y=0,width=35,height=34,visible=1,fillParentWidth=0,fillParentHeight=0,nodeAlign=kAlignLeft,file="Commonx/female.png"
								},
								{
									name="text_name",type=4,typeName="Text",time=54974514,x=40,y=0,width=200,height=30,visible=1,fillParentWidth=0,fillParentHeight=0,nodeAlign=kAlignLeft,fontSize=30,textAlign=kAlignLeft,colorRed=255,colorGreen=240,colorBlue=207,string=[[]]
								}
							},
							{
								name="view_money",type=0,typeName="View",time=54974515,x=0,y=60,width=230,height=50,visible=1,fillParentWidth=0,fillParentHeight=0,nodeAlign=kAlignTopLeft,
								{
									name="Image2",type=1,typeName="Image",time=54974516,x=-3,y=0,width=39,height=39,visible=1,fillParentWidth=0,fillParentHeight=0,nodeAlign=kAlignLeft,file="Common/coinSmall.png"
								},
								{
									name="text_money",type=4,typeName="Text",time=54974517,x=40,y=0,width=200,height=30,visible=1,fillParentWidth=0,fillParentHeight=0,nodeAlign=kAlignLeft,fontSize=30,textAlign=kAlignLeft,colorRed=250,colorGreen=200,colorBlue=0,string=[[]]
								}
							}
						},
						{
							name="btn_add",type=2,typeName="Button",time=54974683,x=660,y=0,width=170,height=64,visible=1,fillParentWidth=0,fillParentHeight=0,nodeAlign=kAlignLeft,file="Common/blank.png",
							{
								name="Image3",type=1,typeName="Image",time=54974684,x=42,y=0,width=86,height=64,visible=1,fillParentWidth=0,fillParentHeight=0,nodeAlign=kAlignTopLeft,file="Common/subViewBtnG2.png",gridLeft=10,gridRight=10,gridTop=0,gridBottom=0
							},
							{
								name="Image4",type=1,typeName="Image",time=54974685,x=0,y=0,width=44,height=64,visible=1,fillParentWidth=0,fillParentHeight=0,nodeAlign=kAlignTopLeft,file="Common/subViewBtnG1.png"
							},
							{
								name="Image5",type=1,typeName="Image",time=54974686,x=126,y=0,width=44,height=64,visible=1,fillParentWidth=0,fillParentHeight=0,nodeAlign=kAlignTopLeft,file="Common/subViewBtnG3.png"
							},
							{
								name="Text1",type=4,typeName="Text",time=54974687,x=0,y=0,width=200,height=64,visible=1,fillParentWidth=1,fillParentHeight=1,nodeAlign=kAlignCenter,fontSize=32,textAlign=kAlignCenter,colorRed=255,colorGreen=255,colorBlue=255,string=[[添加好友]]
							}
						},
						{
							name="img_headicon",type=1,typeName="Image",time=56601740,x=70,y=0,width=84,height=84,visible=1,fillParentWidth=0,fillParentHeight=0,nodeAlign=kAlignLeft,file="Common/default_man.png"
						}
					}
				}
			},
			{
				name="img_split_h",type=1,typeName="Image",time=54786755,x=0,y=210,width=890,height=2,visible=1,fillParentWidth=0,fillParentHeight=0,nodeAlign=kAlignTopLeft,file="rank/horizontal_line.png"
			}
		},
		{
			name="img_title",type=1,typeName="Image",time=54875098,x=0,y=0,width=1200,height=66,visible=1,fillParentWidth=0,fillParentHeight=0,nodeAlign=kAlignTopLeft,file="friend/add_friend_title_bg.png",
			{
				name="view_add_friend_title",type=0,typeName="View",time=54875254,x=0,y=0,width=307,height=65,visible=1,fillParentWidth=0,fillParentHeight=0,nodeAlign=kAlignTopLeft,
				{
					name="text_name112",type=4,typeName="Text",time=54875294,x=0,y=0,width=0,height=0,visible=1,fillParentWidth=0,fillParentHeight=0,nodeAlign=kAlignCenter,fontSize=30,textAlign=kAlignLeft,colorRed=255,colorGreen=240,colorBlue=207,string=[[添加好友]]
				}
			},
			{
				name="view_search_title",type=0,typeName="View",time=54875330,x=307,y=0,width=892,height=65,visible=1,fillParentWidth=0,fillParentHeight=0,nodeAlign=kAlignTopLeft,
				{
					name="text_name112",type=4,typeName="Text",time=54875331,x=0,y=0,width=0,height=0,visible=1,fillParentWidth=0,fillParentHeight=0,nodeAlign=kAlignCenter,fontSize=30,textAlign=kAlignLeft,colorRed=255,colorGreen=240,colorBlue=207,string=[[搜索游戏ID]]
				}
			}
		},
		{
			name="img_search_friend",type=1,typeName="Image",time=54875642,x=0,y=65,width=328,height=86,visible=1,fillParentWidth=0,fillParentHeight=0,nodeAlign=kAlignTopLeft,file="friend/search_bg.png",
			{
				name="Image8",type=1,typeName="Image",time=54875923,x=30,y=0,width=64,height=64,visible=1,fillParentWidth=0,fillParentHeight=0,nodeAlign=kAlignLeft,file="friend/search_icon.png"
			},
			{
				name="text_name1121",type=4,typeName="Text",time=54875980,x=110,y=0,width=150,height=30,visible=1,fillParentWidth=0,fillParentHeight=0,nodeAlign=kAlignLeft,fontSize=30,textAlign=kAlignLeft,colorRed=255,colorGreen=240,colorBlue=207,string=[[搜索游戏ID]]
			}
		}
	}
}
--m_xxreference["D:_Mahjong_SCMahjong_Lua_SCMahjong_Lua_1.6_Resource_scripts_view_SC_800_480_friendAddSubView.lua"]=1;
