local changePaizhiWnd=
{
	name="changePaizhiWnd",type=0,typeName="View",time=0,x=0,y=0,width=1280,height=800,visible=1,fillParentWidth=1,fillParentHeight=1,nodeAlign=kAlignTopLeft,
	{
		name="img_bg",type=1,typeName="Image",time=79512703,x=0,y=0,width=500,height=350,visible=1,fillParentWidth=0,fillParentHeight=0,nodeAlign=kAlignCenter,file="Commonx/pop_window_small.png",gridLeft=40,gridRight=40,gridTop=40,gridBottom=40,
		{
			name="btn_close",type=2,typeName="Button",time=79512802,x=-20,y=-20,width=66,height=70,visible=1,fillParentWidth=0,fillParentHeight=0,nodeAlign=kAlignTopRight,file="Commonx/close_btn.png",file2="Commonx/close_btn_disable.png"
		},
		{
			name="text_title",type=4,typeName="Text",time=79512921,x=0,y=30,width=120,height=30,visible=1,fillParentWidth=0,fillParentHeight=0,nodeAlign=kAlignTop,fontSize=30,textAlign=kAlignLeft,colorRed=255,colorGreen=255,colorBlue=255,string=[[温馨提示]]
		},
		{
			name="btn_cancel",type=2,typeName="Button",time=79513069,x=-110,y=30,width=150,height=64,visible=1,fillParentWidth=0,fillParentHeight=0,nodeAlign=kAlignBottom,file="Commonx/red_small_btn.png",
			{
				name="Text1",type=4,typeName="Text",time=79513222,x=0,y=-4,width=0,height=0,visible=1,fillParentWidth=0,fillParentHeight=0,nodeAlign=kAlignCenter,fontSize=25,textAlign=kAlignLeft,colorRed=255,colorGreen=255,colorBlue=255,string=[[取消]]
			}
		},
		{
			name="btn_ok",type=2,typeName="Button",time=79513072,x=110,y=30,width=150,height=64,visible=1,fillParentWidth=0,fillParentHeight=0,nodeAlign=kAlignBottom,file="Commonx/green_small_btn.png",
			{
				name="Text11",type=4,typeName="Text",time=79513246,x=0,y=-4,width=0,height=0,visible=1,fillParentWidth=0,fillParentHeight=0,nodeAlign=kAlignCenter,fontSize=25,textAlign=kAlignLeft,colorRed=255,colorGreen=255,colorBlue=255,string=[[确定]]
			}
		},
		{
			name="img_inner_bg",type=0,typeName="View",time=94717261,x=0,y=-10,width=450,height=170,visible=1,fillParentWidth=0,fillParentHeight=0,nodeAlign=kAlignCenter,
			{
				name="text_tips",type=4,typeName="Text",time=94717292,x=0,y=0,width=52,height=26,visible=1,fillParentWidth=0,fillParentHeight=0,nodeAlign=kAlignCenter,fontSize=26,textAlign=kAlignLeft,colorRed=75,colorGreen=43,colorBlue=28,string=[[提示]]
			}
		}
	}
}
return changePaizhiWnd;