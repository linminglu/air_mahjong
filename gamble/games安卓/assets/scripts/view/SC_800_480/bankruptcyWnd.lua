local bankruptcyWnd=
{
	name="bankruptcyWnd",type=0,typeName="View",time=0,x=0,y=0,width=1280,height=720,visible=1,fillParentWidth=1,fillParentHeight=1,nodeAlign=kAlignCenter,
	{
		name="img_win_bg",type=1,typeName="Image",time=52889550,x=0,y=20,width=862,height=484,visible=1,fillParentWidth=0,fillParentHeight=0,nodeAlign=kAlignCenter,file="bankraptcy/br_dialog_bg.png",gridLeft=50,gridRight=50,gridTop=50,gridBottom=50,
		{
			name="Image2",type=1,typeName="Image",time=52890160,x=0,y=-85,width=479,height=156,visible=1,fillParentWidth=0,fillParentHeight=0,nodeAlign=kAlignTop,file="bankraptcy/br_title_bg.png",
			{
				name="Image4",type=1,typeName="Image",time=52890791,x=0,y=-20,width=296,height=126,visible=1,fillParentWidth=0,fillParentHeight=0,nodeAlign=kAlignCenter,file="bankraptcy/br_dialog_title.png"
			},
			{
				name="Image3",type=1,typeName="Image",time=52890536,x=20,y=-10,width=538,height=168,visible=1,fillParentWidth=0,fillParentHeight=0,nodeAlign=kAlignCenter,file="bankraptcy/br_dialog_title_decorate.png"
			}
		},
		{
			name="img_inner_bg",type=0,typeName="View",time=92902800,x=0,y=60,width=830,height=397,visible=1,fillParentWidth=0,fillParentHeight=0,nodeAlign=kAlignTop,
			{
				name="Image6",type=1,typeName="Image",time=92902836,x=5,y=92,width=739,height=2,visible=1,fillParentWidth=0,fillParentHeight=0,nodeAlign=kAlignTop,file="Commonx/split_hori.png"
			},
			{
				name="view_time",type=0,typeName="View",time=92902839,x=0,y=0,width=790,height=90,visible=1,fillParentWidth=1,fillParentHeight=0,nodeAlign=kAlignTopLeft,
				{
					name="Text1",type=4,typeName="Text",time=92902840,x=70,y=0,width=0,height=0,visible=1,fillParentWidth=0,fillParentHeight=0,nodeAlign=kAlignLeft,fontSize=26,textAlign=kAlignLeft,colorRed=75,colorGreen=43,colorBlue=28,string=[[赠送等待时间]]
				},
				{
					name="img_mm_bg",type=1,typeName="Image",time=92902841,x=270,y=0,width=52,height=62,visible=1,fillParentWidth=0,fillParentHeight=0,nodeAlign=kAlignLeft,file="bankraptcy/br_time_bg.png",
					{
						name="img_num",type=1,typeName="Image",time=92902842,x=0,y=0,width=34,height=46,visible=1,fillParentWidth=0,fillParentHeight=0,nodeAlign=kAlignCenter,file="bankraptcy/br_0.png"
					}
				},
				{
					name="img_m_bg",type=1,typeName="Image",time=92902843,x=332,y=0,width=52,height=62,visible=1,fillParentWidth=0,fillParentHeight=0,nodeAlign=kAlignLeft,file="bankraptcy/br_time_bg.png",
					{
						name="img_num",type=1,typeName="Image",time=92902844,x=0,y=0,width=34,height=46,visible=1,fillParentWidth=0,fillParentHeight=0,nodeAlign=kAlignCenter,file="bankraptcy/br_0.png"
					}
				},
				{
					name="img_ss_bg",type=1,typeName="Image",time=92902845,x=420,y=0,width=52,height=62,visible=1,fillParentWidth=0,fillParentHeight=0,nodeAlign=kAlignLeft,file="bankraptcy/br_time_bg.png",
					{
						name="img_num",type=1,typeName="Image",time=92902846,x=0,y=0,width=34,height=46,visible=1,fillParentWidth=0,fillParentHeight=0,nodeAlign=kAlignCenter,file="bankraptcy/br_0.png"
					}
				},
				{
					name="img_s_bg",type=1,typeName="Image",time=92902847,x=482,y=0,width=52,height=62,visible=1,fillParentWidth=0,fillParentHeight=0,nodeAlign=kAlignLeft,file="bankraptcy/br_time_bg.png",
					{
						name="img_num",type=1,typeName="Image",time=92902848,x=0,y=0,width=34,height=46,visible=1,fillParentWidth=0,fillParentHeight=0,nodeAlign=kAlignCenter,file="bankraptcy/br_0.png"
					}
				},
				{
					name="Image9",type=1,typeName="Image",time=92902849,x=394,y=0,width=17,height=46,visible=1,fillParentWidth=0,fillParentHeight=0,nodeAlign=kAlignLeft,file="bankraptcy/br_time_point.png"
				},
				{
					name="btn_get",type=2,typeName="Button",time=92902850,x=60,y=0,width=156,height=62,visible=1,fillParentWidth=0,fillParentHeight=0,nodeAlign=kAlignRight,file="Commonx/green_small_btn.png",
					{
						name="text_title",type=4,typeName="Text",time=92902854,x=0,y=-4,width=0,height=0,visible=1,fillParentWidth=0,fillParentHeight=0,nodeAlign=kAlignCenter,fontSize=32,textAlign=kAlignCenter,colorRed=255,colorGreen=255,colorBlue=255,string=[[领取]]
					}
				}
			},
			{
				name="view_upper_limit",type=0,typeName="View",time=92902844,x=0,y=0,width=790,height=90,visible=0,fillParentWidth=1,fillParentHeight=0,nodeAlign=kAlignTopLeft,
				{
					name="text_upper_limit_text",type=4,typeName="Text",time=92902845,x=0,y=0,width=156,height=26,visible=1,fillParentWidth=0,fillParentHeight=0,nodeAlign=kAlignCenter,fontSize=32,textAlign=kAlignLeft,colorRed=75,colorGreen=43,colorBlue=28,string=[[今天领取破产补助次数已达上限]]
				}
			},
			{
				name="img_inner_item",type=0,typeName="View",time=92902848,x=0,y=100,width=790,height=240,visible=1,fillParentWidth=1,fillParentHeight=0,nodeAlign=kAlignTopLeft,
				{
					name="img_item_bg",type=1,typeName="Image",time=92902849,x=50,y=-35,width=738,height=160,visible=1,fillParentWidth=0,fillParentHeight=0,nodeAlign=kAlignLeft,file="bankraptcy/good_bg.png",
					{
						name="Image5",type=1,typeName="Image",time=92904662,x=-25,y=0,width=270,height=182,visible=1,fillParentWidth=0,fillParentHeight=0,nodeAlign=kAlignLeft,file="bankraptcy/light_bg.png"
					},
					{
						name="Image21",type=1,typeName="Image",time=92904760,x=35,y=0,width=116,height=94,visible=1,fillParentWidth=0,fillParentHeight=0,nodeAlign=kAlignLeft,file="Commonx/windowsCoin.png"
					},
					{
						name="text_tip1",type=4,typeName="Text",time=92904764,x=250,y=5,width=360,height=70,visible=1,fillParentWidth=0,fillParentHeight=0,nodeAlign=kAlignTopLeft,fontSize=30,textAlign=kAlignLeft,colorRed=75,colorGreen=43,colorBlue=28
					},
					{
						name="text_tip2",type=4,typeName="Text",time=92904766,x=250,y=75,width=360,height=70,visible=1,fillParentWidth=0,fillParentHeight=0,nodeAlign=kAlignTopLeft,fontSize=30,textAlign=kAlignLeft,colorRed=204,colorGreen=68,colorBlue=0
					},
					{
						name="Image1",type=1,typeName="Image",time=92904771,x=112,y=5,width=86,height=90,visible=1,fillParentWidth=0,fillParentHeight=0,nodeAlign=kAlignTopLeft,file="bankraptcy/+10%_tag.png"
					},
					{
						name="Image7",type=1,typeName="Image",time=92905476,x=230,y=75,width=402,height=2,visible=1,fillParentWidth=0,fillParentHeight=0,nodeAlign=kAlignTopLeft,file="Commonx/split_hori.png"
					}
				},
				{
					name="btn_update",type=2,typeName="Button",time=92902856,x=80,y=-78,width=54,height=64,visible=1,fillParentWidth=0,fillParentHeight=0,nodeAlign=kAlignRight,file="bankraptcy/update.png"
				},
				{
					name="view_tips",type=0,typeName="View",time=92902857,x=0,y=65,width=630,height=35,visible=1,fillParentWidth=0,fillParentHeight=0,nodeAlign=kAlignCenter,
					{
						name="view_left",type=0,typeName="View",time=92902858,x=0,y=0,width=245,height=35,visible=1,fillParentWidth=0,fillParentHeight=0,nodeAlign=kAlignTopLeft,
						{
							name="text_left_tips",type=4,typeName="Text",time=92902859,x=0,y=0,width=247,height=26,visible=1,fillParentWidth=0,fillParentHeight=0,nodeAlign=kAlignCenter,fontSize=26,textAlign=kAlignLeft,colorRed=75,colorGreen=43,colorBlue=28,string=[[如有疑问请联系客服:]]
						}
					},
					{
						name="view_phone1",type=0,typeName="View",time=92902860,x=250,y=0,width=160,height=35,visible=1,fillParentWidth=0,fillParentHeight=0,nodeAlign=kAlignTopLeft,
						{
							name="btn_tel_1",type=2,typeName="Button",time=92902861,x=0,y=0,width=160,height=26,visible=1,fillParentWidth=0,fillParentHeight=0,nodeAlign=kAlignCenter,file="Commonx/blank.png",
							{
								name="Text111",type=4,typeName="Text",time=92902862,x=0,y=0,width=156,height=26,visible=1,fillParentWidth=0,fillParentHeight=0,nodeAlign=kAlignCenter,fontSize=26,textAlign=kAlignLeft,colorRed=204,colorGreen=68,colorBlue=0,string=[[400-663-1888]]
							}
						}
					},
					{
						name="view_or",type=0,typeName="View",time=92902863,x=415,y=0,width=30,height=35,visible=1,fillParentWidth=0,fillParentHeight=0,nodeAlign=kAlignTopLeft,
						{
							name="text_or",type=4,typeName="Text",time=92902864,x=0,y=0,width=30,height=26,visible=1,fillParentWidth=0,fillParentHeight=0,nodeAlign=kAlignCenter,fontSize=26,textAlign=kAlignLeft,colorRed=75,colorGreen=43,colorBlue=28,string=[[或]]
						}
					},
					{
						name="view_phone2",type=0,typeName="View",time=92902865,x=450,y=0,width=170,height=35,visible=1,fillParentWidth=0,fillParentHeight=0,nodeAlign=kAlignTopLeft,
						{
							name="btn_tel_2",type=2,typeName="Button",time=92902866,x=0,y=0,width=170,height=26,visible=1,fillParentWidth=0,fillParentHeight=0,nodeAlign=kAlignCenter,file="Commonx/blank.png",
							{
								name="Text111",type=4,typeName="Text",time=92902867,x=1,y=0,width=170,height=26,visible=1,fillParentWidth=0,fillParentHeight=0,nodeAlign=kAlignCenter,fontSize=26,textAlign=kAlignLeft,colorRed=204,colorGreen=68,colorBlue=0,string=[[0755-86166169]]
							}
						}
					}
				}
			}
		},
		{
			name="btn_confirm",type=2,typeName="Button",time=92902869,x=0,y=38,width=222,height=74,visible=1,fillParentWidth=0,fillParentHeight=0,nodeAlign=kAlignBottom,file="Commonx/green_big_wide_btn.png",
			{
				name="Text1",type=4,typeName="Text",time=92902870,x=0,y=-4,width=0,height=0,visible=1,fillParentWidth=0,fillParentHeight=0,nodeAlign=kAlignCenter,fontSize=36,textAlign=kAlignCenter,colorRed=255,colorGreen=255,colorBlue=255,string=[[确 定]]
			}
		},
		{
			name="btn_close",type=2,typeName="Button",time=92902871,x=-20,y=-20,width=66,height=70,visible=1,fillParentWidth=0,fillParentHeight=0,nodeAlign=kAlignTopRight,file="Commonx/close_btn.png",file2="Commonx/close_btn_disable.png"
		},
		{
			name="btn_cancel",type=2,typeName="Button",time=92902874,x=-145,y=38,width=222,height=74,visible=0,fillParentWidth=0,fillParentHeight=0,nodeAlign=kAlignBottom,file="Commonx/red_big_wide_btn.png",
			{
				name="Text2",type=4,typeName="Text",time=92902875,x=0,y=-4,width=0,height=74,visible=1,fillParentWidth=0,fillParentHeight=0,nodeAlign=kAlignCenter,fontSize=36,textAlign=kAlignCenter,colorRed=255,colorGreen=255,colorBlue=255,string=[[取消]]
			}
		}
	}
}
return bankruptcyWnd;