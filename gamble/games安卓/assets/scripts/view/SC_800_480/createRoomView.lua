local createRoomView=
{
	name="createRoomView",type=0,typeName="View",time=0,x=0,y=0,width=850,height=600,visible=1,fillParentWidth=0,fillParentHeight=0,nodeAlign=kAlignCenter,
	{
		name="bgImg",type=1,typeName="Image",time=31387748,x=0,y=0,width=862,height=544,visible=1,fillParentWidth=0,fillParentHeight=0,nodeAlign=kAlignCenter,file="Commonx/pop_window_mid.png",gridLeft=50,gridRight=50,gridTop=100,gridBottom=50,
		{
			name="titleText",type=4,typeName="Text",time=31387772,x=0,y=25,width=0,height=0,visible=1,fillParentWidth=0,fillParentHeight=0,nodeAlign=kAlignTop,fontSize=40,textAlign=kAlignCenter,colorRed=255,colorGreen=255,colorBlue=255,string=[[创建房间]]
		},
		{
			name="nameImg",type=1,typeName="Image",time=31389120,x=230,y=130,width=545,height=65,visible=1,fillParentWidth=0,fillParentHeight=0,nodeAlign=kAlignTopLeft,file="Commonx/text_editor_bg2.png",gridLeft=20,gridRight=20,gridTop=20,gridBottom=20,
			{
				name="nameEdit",type=6,typeName="EditText",time=31389850,x=0,y=0,width=520,height=30,visible=1,fillParentWidth=0,fillParentHeight=0,nodeAlign=kAlignCenter,fontSize=30,textAlign=kAlignLeft,colorRed=173,colorGreen=158,colorBlue=149
			}
		},
		{
			name="diImg",type=1,typeName="Image",time=31389144,x=230,y=225,width=545,height=65,visible=1,fillParentWidth=0,fillParentHeight=0,nodeAlign=kAlignTopLeft,file="Commonx/blank.png",gridLeft=20,gridRight=20,gridTop=20,gridBottom=20
		},
		{
			name="xzchBtn",type=2,typeName="Button",time=31389537,x=340,y=328,width=44,height=46,visible=0,fillParentWidth=0,fillParentHeight=0,nodeAlign=kAlignTopLeft,file="Commonx/checkbox_quare_selected.png"
		},
		{
			name="noxzchBtn",type=2,typeName="Button",time=31389545,x=340,y=328,width=44,height=46,visible=1,fillParentWidth=0,fillParentHeight=0,nodeAlign=kAlignTopLeft,file="Commonx/checkbox_quare_normal.png"
		},
		{
			name="hszBtn",type=2,typeName="Button",time=31389556,x=85,y=328,width=44,height=46,visible=1,fillParentWidth=0,fillParentHeight=0,nodeAlign=kAlignTopLeft,file="Commonx/checkbox_quare_selected.png"
		},
		{
			name="xlchBtn",type=2,typeName="Button",time=31389571,x=595,y=328,width=44,height=46,visible=1,fillParentWidth=0,fillParentHeight=0,nodeAlign=kAlignTopLeft,file="Commonx/checkbox_quare_selected.png"
		},
		{
			name="noXlchBtn",type=2,typeName="Button",time=31389580,x=595,y=328,width=44,height=46,visible=0,fillParentWidth=0,fillParentHeight=0,nodeAlign=kAlignTopLeft,file="Commonx/checkbox_quare_normal.png"
		},
		{
			name="Text1",type=4,typeName="Text",time=52019754,x=85,y=148,width=0,height=0,visible=1,fillParentWidth=0,fillParentHeight=0,nodeAlign=kAlignTopLeft,fontSize=30,textAlign=kAlignLeft,colorRed=75,colorGreen=43,colorBlue=28,string=[[房间名称:]]
		},
		{
			name="Text3",type=4,typeName="Text",time=52019954,x=85,y=243,width=0,height=0,visible=1,fillParentWidth=0,fillParentHeight=0,nodeAlign=kAlignTopLeft,fontSize=30,textAlign=kAlignLeft,colorRed=75,colorGreen=43,colorBlue=28,string=[[底    注:]]
		},
		{
			name="Text5",type=4,typeName="Text",time=52020771,x=400,y=335,width=0,height=0,visible=1,fillParentWidth=0,fillParentHeight=0,nodeAlign=kAlignTopLeft,fontSize=30,textAlign=kAlignLeft,colorRed=75,colorGreen=43,colorBlue=28,string=[[血战到底]]
		},
		{
			name="Text6",type=4,typeName="Text",time=52020809,x=145,y=335,width=0,height=0,visible=1,fillParentWidth=0,fillParentHeight=0,nodeAlign=kAlignTopLeft,fontSize=30,textAlign=kAlignLeft,colorRed=75,colorGreen=43,colorBlue=28,string=[[换三张]]
		},
		{
			name="Text7",type=4,typeName="Text",time=52020839,x=655,y=335,width=0,height=0,visible=1,fillParentWidth=0,fillParentHeight=0,nodeAlign=kAlignTopLeft,fontSize=30,textAlign=kAlignLeft,colorRed=75,colorGreen=43,colorBlue=28,string=[[血流成河]]
		},
		{
			name="confirmBtn",type=2,typeName="Button",time=53866866,x=470,y=432,width=222,height=74,visible=1,fillParentWidth=0,fillParentHeight=0,nodeAlign=kAlignTopLeft,file="Commonx/green_big_wide_btn.png",
			{
				name="confirmText",type=4,typeName="Text",time=53866870,x=0,y=-4,width=0,height=0,visible=1,fillParentWidth=0,fillParentHeight=0,nodeAlign=kAlignCenter,fontSize=36,textAlign=kAlignCenter,colorRed=255,colorGreen=255,colorBlue=255,string=[[创 建]]
			}
		},
		{
			name="cancelBtn",type=2,typeName="Button",time=53866958,x=170,y=432,width=222,height=74,visible=1,fillParentWidth=0,fillParentHeight=0,nodeAlign=kAlignTopLeft,file="Commonx/red_big_wide_btn.png",
			{
				name="cancelText",type=4,typeName="Text",time=53866962,x=0,y=-4,width=0,height=0,visible=1,fillParentWidth=0,fillParentHeight=0,nodeAlign=kAlignCenter,fontSize=36,textAlign=kAlignCenter,colorRed=255,colorGreen=255,colorBlue=255,string=[[取 消]]
			}
		}
	}
}
return createRoomView;