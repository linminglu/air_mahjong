﻿//this source code was auto-generated by tolua#, do not modify it
using System;
using System.Collections.Generic;
using LuaInterface;

public static class DelegateFactory
{
	public delegate Delegate DelegateValue(LuaFunction func);
	public static Dictionary<Type, DelegateValue> dict = new Dictionary<Type, DelegateValue>();
	public static Dictionary<LuaFunction, Delegate> dict2 = new Dictionary<LuaFunction, Delegate>();
	public static Dictionary<Delegate,LuaFunction> dict3 = new Dictionary<Delegate,LuaFunction>();

	static DelegateFactory()
	{
		Register();
	}

	[NoToLuaAttribute]
	public static void Register()
	{
		dict.Clear();
		dict.Add(typeof(System.Action), System_Action);
		dict.Add(typeof(UnityEngine.Events.UnityAction), UnityEngine_Events_UnityAction);
		dict.Add(typeof(UnityEngine.RectTransform.ReapplyDrivenProperties), UnityEngine_RectTransform_ReapplyDrivenProperties);
		dict.Add(typeof(UnityEngine.Camera.CameraCallback), UnityEngine_Camera_CameraCallback);
		dict.Add(typeof(UnityEngine.Application.AdvertisingIdentifierCallback), UnityEngine_Application_AdvertisingIdentifierCallback);
		dict.Add(typeof(UnityEngine.Application.LogCallback), UnityEngine_Application_LogCallback);
		dict.Add(typeof(UnityEngine.AudioClip.PCMReaderCallback), UnityEngine_AudioClip_PCMReaderCallback);
		dict.Add(typeof(UnityEngine.AudioClip.PCMSetPositionCallback), UnityEngine_AudioClip_PCMSetPositionCallback);
		dict.Add(typeof(Game.Loader.PreloadCallback), Game_Loader_PreloadCallback);
		dict.Add(typeof(Game.Loader.WWWCallback), Game_Loader_WWWCallback);
		dict.Add(typeof(Game.Loader.WWWProgress), Game_Loader_WWWProgress);
		dict.Add(typeof(UnityEngine.UI.InputField.OnValidateInput), UnityEngine_UI_InputField_OnValidateInput);
		dict.Add(typeof(UnityEngine.Canvas.WillRenderCanvases), UnityEngine_Canvas_WillRenderCanvases);
		dict.Add(typeof(UnityEngine.Events.UnityAction<float>), UnityEngine_Events_UnityAction_float);
		dict.Add(typeof(UnityEngine.Events.UnityAction<bool>), UnityEngine_Events_UnityAction_bool);
		dict.Add(typeof(UnityEngine.Events.UnityAction<UnityEngine.Vector2>), UnityEngine_Events_UnityAction_UnityEngine_Vector2);
	}

    [NoToLuaAttribute]
    public static Delegate CreateDelegate(Type t, LuaFunction func = null)
    {
        DelegateValue create = null;

        if (!dict.TryGetValue(t, out create))
        {
            throw new LuaException(string.Format("Delegate {0} not register", LuaMisc.GetTypeName(t)));            
        }

		if(!dict2.ContainsKey(func)){
			Delegate del = create (func);
			dict2[func]=del;
			dict3[del]=func;
		}
		return dict2[func];             
    }

    [NoToLuaAttribute]
    public static void RemoveDelegate(Delegate del)
    {
		if (dict3.ContainsKey (del)) {
			LuaFunction func = dict3 [del];
			dict2.Remove (func);
			dict3.Remove (del);
		}
    }

	class System_Action_Event : LuaDelegate
	{
		public System_Action_Event(LuaFunction func) : base(func) { }

		public void Call()
		{
			func.Call();
		}
	}

	public static Delegate System_Action(LuaFunction func)
	{
		if (func == null)
		{
			System.Action fn = delegate { };
			return fn;
		}

		System.Action d = (new System_Action_Event(func)).Call;
		return d;
	}

	class UnityEngine_Events_UnityAction_Event : LuaDelegate
	{
		public UnityEngine_Events_UnityAction_Event(LuaFunction func) : base(func) { }

		public void Call()
		{
			func.Call();
		}
	}

	public static Delegate UnityEngine_Events_UnityAction(LuaFunction func)
	{
		if (func == null)
		{
			UnityEngine.Events.UnityAction fn = delegate { };
			return fn;
		}

		UnityEngine.Events.UnityAction d = (new UnityEngine_Events_UnityAction_Event(func)).Call;
		return d;
	}

	class UnityEngine_RectTransform_ReapplyDrivenProperties_Event : LuaDelegate
	{
		public UnityEngine_RectTransform_ReapplyDrivenProperties_Event(LuaFunction func) : base(func) { }

		public void Call(UnityEngine.RectTransform param0)
		{
			func.BeginPCall();
			func.Push(param0);
			func.PCall();
			func.EndPCall();
		}
	}

	public static Delegate UnityEngine_RectTransform_ReapplyDrivenProperties(LuaFunction func)
	{
		if (func == null)
		{
			UnityEngine.RectTransform.ReapplyDrivenProperties fn = delegate { };
			return fn;
		}

		UnityEngine.RectTransform.ReapplyDrivenProperties d = (new UnityEngine_RectTransform_ReapplyDrivenProperties_Event(func)).Call;
		return d;
	}

	class UnityEngine_Camera_CameraCallback_Event : LuaDelegate
	{
		public UnityEngine_Camera_CameraCallback_Event(LuaFunction func) : base(func) { }

		public void Call(UnityEngine.Camera param0)
		{
			func.BeginPCall();
			func.Push(param0);
			func.PCall();
			func.EndPCall();
		}
	}

	public static Delegate UnityEngine_Camera_CameraCallback(LuaFunction func)
	{
		if (func == null)
		{
			UnityEngine.Camera.CameraCallback fn = delegate { };
			return fn;
		}

		UnityEngine.Camera.CameraCallback d = (new UnityEngine_Camera_CameraCallback_Event(func)).Call;
		return d;
	}

	class UnityEngine_Application_AdvertisingIdentifierCallback_Event : LuaDelegate
	{
		public UnityEngine_Application_AdvertisingIdentifierCallback_Event(LuaFunction func) : base(func) { }

		public void Call(string param0,bool param1,string param2)
		{
			func.BeginPCall();
			func.Push(param0);
			func.Push(param1);
			func.Push(param2);
			func.PCall();
			func.EndPCall();
		}
	}

	public static Delegate UnityEngine_Application_AdvertisingIdentifierCallback(LuaFunction func)
	{
		if (func == null)
		{
			UnityEngine.Application.AdvertisingIdentifierCallback fn = delegate { };
			return fn;
		}

		UnityEngine.Application.AdvertisingIdentifierCallback d = (new UnityEngine_Application_AdvertisingIdentifierCallback_Event(func)).Call;
		return d;
	}

	class UnityEngine_Application_LogCallback_Event : LuaDelegate
	{
		public UnityEngine_Application_LogCallback_Event(LuaFunction func) : base(func) { }

		public void Call(string param0,string param1,UnityEngine.LogType param2)
		{
			func.BeginPCall();
			func.Push(param0);
			func.Push(param1);
			func.Push(param2);
			func.PCall();
			func.EndPCall();
		}
	}

	public static Delegate UnityEngine_Application_LogCallback(LuaFunction func)
	{
		if (func == null)
		{
			UnityEngine.Application.LogCallback fn = delegate { };
			return fn;
		}

		UnityEngine.Application.LogCallback d = (new UnityEngine_Application_LogCallback_Event(func)).Call;
		return d;
	}

	class UnityEngine_AudioClip_PCMReaderCallback_Event : LuaDelegate
	{
		public UnityEngine_AudioClip_PCMReaderCallback_Event(LuaFunction func) : base(func) { }

		public void Call(float[] param0)
		{
			func.BeginPCall();
			func.Push(param0);
			func.PCall();
			func.EndPCall();
		}
	}

	public static Delegate UnityEngine_AudioClip_PCMReaderCallback(LuaFunction func)
	{
		if (func == null)
		{
			UnityEngine.AudioClip.PCMReaderCallback fn = delegate { };
			return fn;
		}

		UnityEngine.AudioClip.PCMReaderCallback d = (new UnityEngine_AudioClip_PCMReaderCallback_Event(func)).Call;
		return d;
	}

	class UnityEngine_AudioClip_PCMSetPositionCallback_Event : LuaDelegate
	{
		public UnityEngine_AudioClip_PCMSetPositionCallback_Event(LuaFunction func) : base(func) { }

		public void Call(int param0)
		{
			func.BeginPCall();
			func.Push(param0);
			func.PCall();
			func.EndPCall();
		}
	}

	public static Delegate UnityEngine_AudioClip_PCMSetPositionCallback(LuaFunction func)
	{
		if (func == null)
		{
			UnityEngine.AudioClip.PCMSetPositionCallback fn = delegate { };
			return fn;
		}

		UnityEngine.AudioClip.PCMSetPositionCallback d = (new UnityEngine_AudioClip_PCMSetPositionCallback_Event(func)).Call;
		return d;
	}

	class Game_Loader_PreloadCallback_Event : LuaDelegate
	{
		public Game_Loader_PreloadCallback_Event(LuaFunction func) : base(func) { }

		public void Call(bool param0)
		{
			func.BeginPCall();
			func.Push(param0);
			func.PCall();
			func.EndPCall();
		}
	}

	public static Delegate Game_Loader_PreloadCallback(LuaFunction func)
	{
		if (func == null)
		{
			Game.Loader.PreloadCallback fn = delegate { };
			return fn;
		}

		Game.Loader.PreloadCallback d = (new Game_Loader_PreloadCallback_Event(func)).Call;
		return d;
	}

	class Game_Loader_WWWCallback_Event : LuaDelegate
	{
		public Game_Loader_WWWCallback_Event(LuaFunction func) : base(func) { }

		public void Call(UnityEngine.WWW param0)
		{
			func.BeginPCall();
			func.PushObject(param0);
			func.PCall();
			func.EndPCall();
		}
	}

	public static Delegate Game_Loader_WWWCallback(LuaFunction func)
	{
		if (func == null)
		{
			Game.Loader.WWWCallback fn = delegate { };
			return fn;
		}

		Game.Loader.WWWCallback d = (new Game_Loader_WWWCallback_Event(func)).Call;
		return d;
	}

	class Game_Loader_WWWProgress_Event : LuaDelegate
	{
		public Game_Loader_WWWProgress_Event(LuaFunction func) : base(func) { }

		public void Call(float param0)
		{
			func.BeginPCall();
			func.Push(param0);
			func.PCall();
			func.EndPCall();
		}
	}

	public static Delegate Game_Loader_WWWProgress(LuaFunction func)
	{
		if (func == null)
		{
			Game.Loader.WWWProgress fn = delegate { };
			return fn;
		}

		Game.Loader.WWWProgress d = (new Game_Loader_WWWProgress_Event(func)).Call;
		return d;
	}

	class UnityEngine_UI_InputField_OnValidateInput_Event : LuaDelegate
	{
		public UnityEngine_UI_InputField_OnValidateInput_Event(LuaFunction func) : base(func) { }

		public char Call(string param0,int param1,char param2)
		{
			func.BeginPCall();
			func.Push(param0);
			func.Push(param1);
			func.Push(param2);
			func.PCall();
			char ret = (char)func.CheckNumber();
			func.EndPCall();
			return ret;
		}
	}

	public static Delegate UnityEngine_UI_InputField_OnValidateInput(LuaFunction func)
	{
		if (func == null)
		{
			UnityEngine.UI.InputField.OnValidateInput fn = delegate { return '\0'; };
			return fn;
		}

		UnityEngine.UI.InputField.OnValidateInput d = (new UnityEngine_UI_InputField_OnValidateInput_Event(func)).Call;
		return d;
	}

	class UnityEngine_Canvas_WillRenderCanvases_Event : LuaDelegate
	{
		public UnityEngine_Canvas_WillRenderCanvases_Event(LuaFunction func) : base(func) { }

		public void Call()
		{
			func.Call();
		}
	}

	public static Delegate UnityEngine_Canvas_WillRenderCanvases(LuaFunction func)
	{
		if (func == null)
		{
			UnityEngine.Canvas.WillRenderCanvases fn = delegate { };
			return fn;
		}

		UnityEngine.Canvas.WillRenderCanvases d = (new UnityEngine_Canvas_WillRenderCanvases_Event(func)).Call;
		return d;
	}

	class UnityEngine_Events_UnityAction_float_Event : LuaDelegate
	{
		public UnityEngine_Events_UnityAction_float_Event(LuaFunction func) : base(func) { }

		public void Call(float param0)
		{
			func.BeginPCall();
			func.Push(param0);
			func.PCall();
			func.EndPCall();
		}
	}

	public static Delegate UnityEngine_Events_UnityAction_float(LuaFunction func)
	{
		if (func == null)
		{
			UnityEngine.Events.UnityAction<float> fn = delegate { };
			return fn;
		}

		UnityEngine.Events.UnityAction<float> d = (new UnityEngine_Events_UnityAction_float_Event(func)).Call;
		return d;
	}

	class UnityEngine_Events_UnityAction_bool_Event : LuaDelegate
	{
		public UnityEngine_Events_UnityAction_bool_Event(LuaFunction func) : base(func) { }

		public void Call(bool param0)
		{
			func.BeginPCall();
			func.Push(param0);
			func.PCall();
			func.EndPCall();
		}
	}

	public static Delegate UnityEngine_Events_UnityAction_bool(LuaFunction func)
	{
		if (func == null)
		{
			UnityEngine.Events.UnityAction<bool> fn = delegate { };
			return fn;
		}

		UnityEngine.Events.UnityAction<bool> d = (new UnityEngine_Events_UnityAction_bool_Event(func)).Call;
		return d;
	}

	class UnityEngine_Events_UnityAction_UnityEngine_Vector2_Event : LuaDelegate
	{
		public UnityEngine_Events_UnityAction_UnityEngine_Vector2_Event(LuaFunction func) : base(func) { }

		public void Call(UnityEngine.Vector2 param0)
		{
			func.BeginPCall();
			func.Push(param0);
			func.PCall();
			func.EndPCall();
		}
	}

	public static Delegate UnityEngine_Events_UnityAction_UnityEngine_Vector2(LuaFunction func)
	{
		if (func == null)
		{
			UnityEngine.Events.UnityAction<UnityEngine.Vector2> fn = delegate { };
			return fn;
		}

		UnityEngine.Events.UnityAction<UnityEngine.Vector2> d = (new UnityEngine_Events_UnityAction_UnityEngine_Vector2_Event(func)).Call;
		return d;
	}

}

