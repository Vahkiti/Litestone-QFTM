//////////////////////////////////////////////////////////////
/// Shadero Sprite: Sprite Shader Editor - by VETASOFT 2020 //
/// Shader generate with Shadero 1.9.9                      //
/// http://u3d.as/V7t #AssetStore                           //
/// http://www.shadero.com #Docs                            //
//////////////////////////////////////////////////////////////

Shader "Shadero Customs/FL VI"
{
Properties
{
[PerRendererData] _MainTex("Sprite Texture", 2D) = "white" {}
ZoomUV_Zoom_2("ZoomUV_Zoom_2", Range(0.2, 4)) = 4
ZoomUV_PosX_2("ZoomUV_PosX_2", Range(-3, 3)) = 0.5
ZoomUV_PosY_2("ZoomUV_PosY_2", Range(-3, 3)) =0.5
ZoomUV_Zoom_1("ZoomUV_Zoom_1", Range(0.2, 4)) = 1.71
ZoomUV_PosX_1("ZoomUV_PosX_1", Range(-3, 3)) = 0.5
ZoomUV_PosY_1("ZoomUV_PosY_1", Range(-3, 3)) =0.5
_PremadeGradients_Offset_1("_PremadeGradients_Offset_1", Range(-1, 1)) =0
_PremadeGradients_Fade_1("_PremadeGradients_Fade_1", Range(0, 1)) =1
_PremadeGradients_Speed_1("_PremadeGradients_Speed_1", Range(-2, 2)) =0
_NewTex_1("NewTex_1(RGB)", 2D) = "white" { }
_OperationBlend_Fade_1("_OperationBlend_Fade_1", Range(0, 1)) = 0.875
_ShinyFX_Pos_1("_ShinyFX_Pos_1", Range(-1, 1)) = 0
_ShinyFX_Size_1("_ShinyFX_Size_1", Range(-1, 1)) = -0.127
_ShinyFX_Smooth_1("_ShinyFX_Smooth_1", Range(0, 1)) = 0.172
_ShinyFX_Intensity_1("_ShinyFX_Intensity_1", Range(0, 4)) = 2.604
_ShinyFX_Speed_1("_ShinyFX_Speed_1", Range(0, 8)) = 0
_SpriteFade("SpriteFade", Range(0, 1)) = 1.0

// required for UI.Mask
[HideInInspector]_StencilComp("Stencil Comparison", Float) = 8
[HideInInspector]_Stencil("Stencil ID", Float) = 0
[HideInInspector]_StencilOp("Stencil Operation", Float) = 0
[HideInInspector]_StencilWriteMask("Stencil Write Mask", Float) = 255
[HideInInspector]_StencilReadMask("Stencil Read Mask", Float) = 255
[HideInInspector]_ColorMask("Color Mask", Float) = 15

}

SubShader
{

Tags {"Queue" = "Transparent" "IgnoreProjector" = "true" "RenderType" = "Transparent" "PreviewType"="Plane" "CanUseSpriteAtlas"="True" }
ZWrite Off Blend SrcAlpha OneMinusSrcAlpha Cull Off 

GrabPass { "_GrabTexture"  } 

// required for UI.Mask
Stencil
{
Ref [_Stencil]
Comp [_StencilComp]
Pass [_StencilOp]
ReadMask [_StencilReadMask]
WriteMask [_StencilWriteMask]
}

Pass
{

CGPROGRAM
#pragma vertex vert
#pragma fragment frag
#pragma fragmentoption ARB_precision_hint_fastest
#include "UnityCG.cginc"

struct appdata_t{
float4 vertex   : POSITION;
float4 color    : COLOR;
float2 texcoord : TEXCOORD0;
};

struct v2f
{
float2 texcoord  : TEXCOORD0;
float4 vertex   : SV_POSITION;
float2 screenuv : TEXCOORD1;
float4 color    : COLOR;
};

sampler2D _GrabTexture;
sampler2D _MainTex;
float _SpriteFade;
float ZoomUV_Zoom_2;
float ZoomUV_PosX_2;
float ZoomUV_PosY_2;
float ZoomUV_Zoom_1;
float ZoomUV_PosX_1;
float ZoomUV_PosY_1;
float _PremadeGradients_Offset_1;
float _PremadeGradients_Fade_1;
float _PremadeGradients_Speed_1;
sampler2D _NewTex_1;
float _OperationBlend_Fade_1;
float _ShinyFX_Pos_1;
float _ShinyFX_Size_1;
float _ShinyFX_Smooth_1;
float _ShinyFX_Intensity_1;
float _ShinyFX_Speed_1;

v2f vert(appdata_t IN)
{
v2f OUT;
OUT.vertex = UnityObjectToClipPos(IN.vertex);
float4 screenpos = ComputeGrabScreenPos(OUT.vertex);
OUT.screenuv = screenpos.xy / screenpos.w;
OUT.texcoord = IN.texcoord;
OUT.color = IN.color;
return OUT;
}


float2 ZoomUV(float2 uv, float zoom, float posx, float posy)
{
float2 center = float2(posx, posy);
uv -= center;
uv = uv * zoom;
uv += center;
return uv;
}
float4 OperationBlend(float4 origin, float4 overlay, float blend)
{
float4 o = origin; 
o.a = overlay.a + origin.a * (1 - overlay.a);
o.rgb = (overlay.rgb * overlay.a + origin.rgb * origin.a * (1 - overlay.a)) * (o.a+0.0000001);
o.a = saturate(o.a);
o = lerp(origin, o, blend);
return o;
}
float4 Color_PreGradients(float4 rgba, float4 a, float4 b, float4 c, float4 d, float offset, float fade, float speed)
{
float gray = (rgba.r + rgba.g + rgba.b) / 3;
gray += offset+(speed*_Time*20);
float4 result = a + b * cos(6.28318 * (c * gray + d));
result.a = rgba.a;
result.rgb = lerp(rgba.rgb, result.rgb, fade);
return result;
}
float4 ShinyFX(float4 txt, float2 uv, float pos, float size, float smooth, float intensity, float speed)
{
pos = pos + 0.5+sin(_Time*20*speed)*0.5;
uv = uv - float2(pos, 0.5);
float a = atan2(uv.x, uv.y) + 1.4, r = 3.1415;
float d = cos(floor(0.5 + a / r) * r - a) * length(uv);
float dist = 1.0 - smoothstep(size, size + smooth, d);
txt.rgb += dist*intensity;
return txt;
}
float4 frag (v2f i) : COLOR
{
float2 ZoomUV_2 = ZoomUV(i.screenuv,ZoomUV_Zoom_2,ZoomUV_PosX_2,ZoomUV_PosY_2);
float2 ZoomUV_1 = ZoomUV(ZoomUV_2,ZoomUV_Zoom_1,ZoomUV_PosX_1,ZoomUV_PosY_1);
float4 uv_rgba_1 =  float4(ZoomUV_1.r,ZoomUV_1.g,0,1);
float4 _PremadeGradients_1 = Color_PreGradients(uv_rgba_1,float4(0.5,0.5,0.5,1),float4(0.5,0.5,0.5,1),float4(0.8,0.8,0.8,1),float4(0,0.33,0.67,1),_PremadeGradients_Offset_1,_PremadeGradients_Fade_1,_PremadeGradients_Speed_1);
float4 NewTex_1 = tex2D(_NewTex_1, i.texcoord);
float4 OperationBlend_1 = OperationBlend(_PremadeGradients_1, NewTex_1, _OperationBlend_Fade_1); 
float4 _ShinyFX_1 = ShinyFX(OperationBlend_1,i.screenuv,_ShinyFX_Pos_1,_ShinyFX_Size_1,_ShinyFX_Smooth_1,_ShinyFX_Intensity_1,_ShinyFX_Speed_1);
float4 FinalResult = _ShinyFX_1;
FinalResult.rgb *= i.color.rgb;
FinalResult.a = FinalResult.a * _SpriteFade * i.color.a;
return FinalResult;
}

ENDCG
}
}
Fallback "Sprites/Default"
}
