local roomActivity=
{
	name="roomActivity",type=0,typeName="View",time=0,x=0,y=0,width=1280,height=800,visible=1,fillParentWidth=1,fillParentHeight=1,nodeAlign=kAlignCenter,
	{
		name="background",type=1,typeName="Image",time=49259625,x=0,y=0,width=632,height=426,visible=1,fillParentWidth=0,fillParentHeight=0,nodeAlign=kAlignCenter,file="Commonx/pop_window_small.png",gridLeft=50,gridRight=50,gridTop=100,gridBottom=50,
		{
			name="baseNode",type=0,typeName="View",time=49281348,x=0,y=0,width=600,height=348,visible=1,fillParentWidth=0,fillParentHeight=0,nodeAlign=kAlignCenter,
			{
				name="titleText",type=4,typeName="Text",time=49269847,x=0,y=-10,width=200,height=40,visible=1,fillParentWidth=0,fillParentHeight=0,nodeAlign=kAlignTop,fontSize=40,textAlign=kAlignCenter,colorRed=255,colorGreen=255,colorBlue=255,string=[[金币大派送]]
			},
			{
				name="innerBg",type=1,typeName="Image",time=94817860,x=0,y=65,width=524,height=196,visible=1,fillParentWidth=0,fillParentHeight=0,nodeAlign=kAlignTop,file="Room/roomActivityBg.png",
				{
					name="view_top",type=0,typeName="View",time=94817882,x=0,y=0,width=543,height=100,visible=1,fillParentWidth=1,fillParentHeight=0,nodeAlign=kAlignTop,
					{
						name="staticImg",type=1,typeName="Image",time=94817883,x=-130,y=30,width=142,height=120,visible=1,fillParentWidth=0,fillParentHeight=0,nodeAlign=kAlignCenter,file="apply/award0.png"
					},
					{
						name="text_des_info",type=4,typeName="Text",time=94817884,x=265,y=0,width=140,height=35,visible=1,fillParentWidth=0,fillParentHeight=0,nodeAlign=kAlignLeft,fontSize=34,textAlign=kAlignLeft,colorRed=75,colorGreen=43,colorBlue=28,string=[[免费送您]]
					},
					{
						name="text_des_coid",type=4,typeName="Text",time=94817885,x=100,y=60,width=70,height=35,visible=1,fillParentWidth=0,fillParentHeight=0,nodeAlign=kAlignRight,fontSize=34,textAlign=kAlignLeft,colorRed=75,colorGreen=43,colorBlue=28,string=[[金币]]
					},
					{
						name="view_coid",type=0,typeName="View",time=94817886,x=175,y=60,width=130,height=35,visible=1,fillParentWidth=0,fillParentHeight=0,nodeAlign=kAlignRight,
						{
							name="text_coin",type=4,typeName="Text",time=94817887,x=0,y=0,width=0,height=0,visible=1,fillParentWidth=0,fillParentHeight=0,nodeAlign=kAlignCenter,fontSize=35,textAlign=kAlignLeft,colorRed=204,colorGreen=68,colorBlue=0
						}
					}
				},
				{
					name="view_bottom",type=0,typeName="View",time=94817884,x=0,y=0,width=543,height=75,visible=1,fillParentWidth=1,fillParentHeight=0,nodeAlign=kAlignBottom,
					{
						name="progressBg",type=1,typeName="Image",time=94817885,x=0,y=15,width=470,height=27,visible=1,fillParentWidth=0,fillParentHeight=0,nodeAlign=kAlignBottom,file="Hall/setting/progress_bar_bg.png",
						{
							name="progressImg",type=1,typeName="Image",time=94817886,x=0,y=0,width=470,height=27,visible=1,fillParentWidth=0,fillParentHeight=0,nodeAlign=kAlignTopLeft,file="Hall/setting/progress_bar.png"
						},
						{
							name="progressText",type=4,typeName="Text",time=94817887,x=0,y=0,width=52,height=26,visible=1,fillParentWidth=0,fillParentHeight=0,nodeAlign=kAlignCenter,fontSize=26,textAlign=kAlignLeft,colorRed=255,colorGreen=255,colorBlue=255,string=[[100%]]
						}
					}
				}
			},
			{
				name="confirmButton",type=2,typeName="Button",time=94817866,x=0,y=5,width=222,height=74,visible=1,fillParentWidth=0,fillParentHeight=0,nodeAlign=kAlignBottom,file="Commonx/green_big_wide_btn.png",
				{
					name="text",type=4,typeName="Text",time=94817867,x=0,y=-4,width=0,height=0,visible=1,fillParentWidth=0,fillParentHeight=0,nodeAlign=kAlignCenter,fontSize=32,textAlign=kAlignCenter,colorRed=255,colorGreen=255,colorBlue=255,string=[[立即充值]]
				}
			}
		}
	}
}
return roomActivity;