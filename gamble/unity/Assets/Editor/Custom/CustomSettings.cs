﻿using UnityEngine;
using System;
using System.Collections.Generic;
using LuaInterface;
using Game;
using BindType = ToLuaMenu.BindType;
using System.Reflection;
using UnityEditor.Animations;
using UnityEngine.EventSystems;
using UnityEngine.Tizen;
using UnityEngine.UI;

public static class CustomSettings
{
    public static string saveDir = Application.dataPath + "/Source/Generate/";
    public static string luaDir = Application.dataPath + "/Lua/";
    public static string toluaBaseType = Application.dataPath + "/ToLua/BaseType/";
    public static string toluaLuaDir = Application.dataPath + "/ToLua/Lua";

    //导出时强制做为静态类的类型(注意customTypeList 还要添加这个类型才能导出)
    //unity 有些类作为sealed class, 其实完全等价于静态类
    public static List<Type> staticClassTypes = new List<Type>
	{        
		typeof(UnityEngine.SystemInfo),
		typeof(UnityEngine.Application),
        typeof(UnityEngine.Time),
        typeof(UnityEngine.Screen),
        typeof(UnityEngine.SleepTimeout),
        typeof(UnityEngine.Input),
        typeof(UnityEngine.Resources),
        typeof(UnityEngine.Physics),
        typeof(UnityEngine.RenderSettings),
        typeof(UnityEngine.QualitySettings),
        typeof(UnityEngine.GL),
        typeof(UnityEngine.KeyCode),

    };

    //附加导出委托类型(在导出委托时, customTypeList 中牵扯的委托类型都会导出， 无需写在这里)
    public static DelegateType[] customDelegateList = 
    {        
        _DT(typeof(Action)),        
        _DT(typeof(UnityEngine.Events.UnityAction)), 
       // _DT(typeof(TweenCallback)),
             
    };

    //在这里添加你要导出注册到lua的类型列表
    public static BindType[] customTypeList = 
    {                
        //------------------------为例子导出--------------------------------
        //_GT(typeof(TestEventListener)),
        //_GT(typeof(TestAccount)),
        //_GT(typeof(Dictionary<int, TestAccount>)).SetLibName("AccountMap"),
        //_GT(typeof(KeyValuePair<int, TestAccount>)),    
        //_GT(typeof(TestExport)),
        //_GT(typeof(TestExport.Space)),
        //-------------------------------------------------------------------        
        _GT(typeof(Debugger)),                      
        
//#if USING_DOTWEENING
        _GT(typeof(Component)),
        _GT(typeof(Transform)),
        _GT(typeof(RectTransform)),
        _GT(typeof(Rect)),
        _GT(typeof(Material)),
        _GT(typeof(Light)),
        _GT(typeof(Rigidbody)),
        _GT(typeof(Camera)),
        _GT(typeof(AudioSource)),
        _GT(typeof(LineRenderer)),
        _GT(typeof(TrailRenderer)),
//#else
        //_GT(typeof(DOTween)),
        //_GT(typeof(DG.Tweening.Core.TweenerCore<Vector3, Vector3, VectorOptions>)),
        //_GT(typeof(DG.Tweening.Core.TweenerCore<Vector2, Vector2, VectorOptions>)),
       // _GT(typeof(Tween)).SetBaseType(typeof(System.Object)).AddExtendType(typeof(TweenExtensions)),
       // _GT(typeof(Sequence)).AddExtendType(typeof(TweenSettingsExtensions)),
       // _GT(typeof(Tweener)).AddExtendType(typeof(TweenSettingsExtensions)),
       // _GT(typeof(LoopType)),
       // _GT(typeof(PathMode)),
       // _GT(typeof(PathType)),
       // _GT(typeof(RotateMode)),
       // _GT(typeof(Component)).AddExtendType(typeof(ShortcutExtensions)),
       // _GT(typeof(Transform)).AddExtendType(typeof(ShortcutExtensions)),
       // _GT(typeof(RectTransform)).AddExtendType(typeof(ShortcutExtensions46)),
       // _GT(typeof(Rect)),
       // _GT(typeof(Light)).AddExtendType(typeof(ShortcutExtensions)),
       // _GT(typeof(Material)).AddExtendType(typeof(ShortcutExtensions)),
       // _GT(typeof(Rigidbody)).AddExtendType(typeof(ShortcutExtensions)),
       // _GT(typeof(Camera)).AddExtendType(typeof(ShortcutExtensions)),
       // _GT(typeof(AudioSource)).AddExtendType(typeof(ShortcutExtensions)),
        //_GT(typeof(LineRenderer)).AddExtendType(typeof(ShortcutExtensions)),
        //_GT(typeof(TrailRenderer)).AddExtendType(typeof(ShortcutExtensions)),    
//#endif   
                        
        _GT(typeof(Behaviour)),
        _GT(typeof(MonoBehaviour)),        
        _GT(typeof(GameObject)),
		_GT(typeof(TrackedReference)),
		_GT(typeof(SystemInfo)),
        _GT(typeof(Application)),
        _GT(typeof(Physics)),
        _GT(typeof(Collider)),
        _GT(typeof(Time)),        
        _GT(typeof(Texture)),
        _GT(typeof(Texture2D)),
        _GT(typeof(Shader)),
        _GT(typeof(Renderer)),
        _GT(typeof(WWW)),
        _GT(typeof(Screen)),
        _GT(typeof(CameraClearFlags)),
        _GT(typeof(AudioClip)),
        _GT(typeof(AssetBundle)),
        _GT(typeof(ParticleSystem)),
        _GT(typeof(AsyncOperation)).SetBaseType(typeof(System.Object)),
        _GT(typeof(LightType)),
        _GT(typeof(SleepTimeout)),
        _GT(typeof(Animator)),
        _GT(typeof(Input)),
        _GT(typeof(KeyCode)),
        _GT(typeof(SkinnedMeshRenderer)),
        _GT(typeof(Space)),        
                                           
        _GT(typeof(MeshRenderer)),            
        _GT(typeof(ParticleEmitter)),
        _GT(typeof(ParticleRenderer)),
        _GT(typeof(ParticleAnimator)), 
                              
        _GT(typeof(BoxCollider)),
        _GT(typeof(MeshCollider)),
        _GT(typeof(SphereCollider)),        
        _GT(typeof(CharacterController)),
        _GT(typeof(CapsuleCollider)),
        
        _GT(typeof(Animation)),        
        _GT(typeof(AnimationClip)).SetBaseType(typeof(UnityEngine.Object)),        
        _GT(typeof(AnimationState)),
        _GT(typeof(AnimationBlendMode)),
        _GT(typeof(QueueMode)),  
        _GT(typeof(PlayMode)),
        _GT(typeof(WrapMode)),

        _GT(typeof(QualitySettings)),
        _GT(typeof(RenderSettings)),                                                   
		_GT(typeof(BlendWeights)),           
		_GT(typeof(RenderTexture)),         
		_GT(typeof(LuaObject)),  
		_GT(typeof(Utils)),  
		_GT(typeof(LuaGame)),  
        _GT(typeof(Loader)),
        _GT(typeof(Text)),
        _GT(typeof(Image)),
        _GT(typeof(RawImage)),
        _GT(typeof(Button)),
        _GT(typeof(Toggle)),
        _GT(typeof(Slider)),
        _GT(typeof(Scrollbar)),
        _GT(typeof(Dropdown)),
        _GT(typeof(InputField)),
        _GT(typeof(Canvas)),
        _GT(typeof(PlayerPrefs)),
        _GT(typeof(ScrollRect)),
        _GT(typeof(Button.ButtonClickedEvent)),
        _GT(typeof(Scrollbar.ScrollEvent)),
        _GT(typeof(Toggle.ToggleEvent)),
        _GT(typeof(Slider.SliderEvent)),
        _GT(typeof(RuntimeAnimatorController)),
        _GT(typeof(AnimationEvent)),
        _GT(typeof(AvatarIKGoal)),
        _GT(typeof(ControllerColliderHit)),
        _GT(typeof(AnimatorStateInfo)),
        _GT(typeof(PointerEventData)),
        _GT(typeof(GraphicRaycaster)),
        _GT(typeof(RectTransformUtility)),
        _GT(typeof(ScrollRect.ScrollRectEvent)),
    };

    public static List<Type> dynamicList = new List<Type>()
    {
        /*typeof(MeshRenderer),
        typeof(ParticleEmitter),
        typeof(ParticleRenderer),
        typeof(ParticleAnimator),

        typeof(BoxCollider),
        typeof(MeshCollider),
        typeof(SphereCollider),
        typeof(CharacterController),
        typeof(CapsuleCollider),

        typeof(Animation),
        typeof(AnimationClip),
        typeof(AnimationState),        

        typeof(BlendWeights),
        typeof(RenderTexture),
        typeof(Rigidbody),*/
    };

    //重载函数，相同参数个数，相同位置out参数匹配出问题时, 需要强制匹配解决
    //使用方法参见例子14
    public static List<Type> outList = new List<Type>()
    {

    };

    static BindType _GT(Type t)
    {
        return new BindType(t);
    }

    static DelegateType _DT(Type t)
    {
        return new DelegateType(t);
    }
}