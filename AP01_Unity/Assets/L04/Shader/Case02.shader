// Shader created with Shader Forge v1.40 
// Shader Forge (c) Freya Holmer - http://www.acegikmo.com/shaderforge/
// Note: Manually altering this data may prevent you from opening it in Shader Forge
/*SF_DATA;ver:1.40;sub:START;pass:START;ps:flbk:,iptp:0,cusa:False,bamd:0,cgin:,cpap:True,lico:1,lgpr:1,limd:0,spmd:1,trmd:0,grmd:0,uamb:True,mssp:True,bkdf:False,hqlp:False,rprd:False,enco:False,rmgx:True,imps:True,rpth:0,vtps:0,hqsc:True,nrmq:1,nrsp:0,vomd:0,spxs:False,tesm:0,olmd:1,culm:0,bsrc:0,bdst:1,dpts:2,wrdp:True,dith:0,atcv:False,rfrpo:True,rfrpn:Refraction,coma:15,ufog:False,aust:True,igpj:False,qofs:0,qpre:1,rntp:1,fgom:False,fgoc:False,fgod:False,fgor:False,fgmd:0,fgcr:0.5,fgcg:0.5,fgcb:0.5,fgca:1,fgde:0.01,fgrn:0,fgrf:300,stcl:False,atwp:False,stva:128,stmr:255,stmw:255,stcp:6,stps:0,stfa:0,stfz:0,ofsf:0,ofsu:0,f2p0:False,fnsp:False,fnfb:False,fsmp:False;n:type:ShaderForge.SFN_Final,id:3138,x:33687,y:32779,varname:node_3138,prsc:2|emission-5982-OUT;n:type:ShaderForge.SFN_LightVector,id:7960,x:31998,y:33274,varname:node_7960,prsc:2;n:type:ShaderForge.SFN_HalfVector,id:1092,x:31994,y:33044,varname:node_1092,prsc:2;n:type:ShaderForge.SFN_Dot,id:9537,x:32224,y:33274,varname:node_9537,prsc:2,dt:0|A-5909-OUT,B-7960-OUT;n:type:ShaderForge.SFN_Dot,id:9463,x:32224,y:32951,varname:node_9463,prsc:2,dt:0|A-5909-OUT,B-1092-OUT;n:type:ShaderForge.SFN_NormalVector,id:5909,x:31994,y:32888,prsc:2,pt:False;n:type:ShaderForge.SFN_Clamp01,id:3347,x:32397,y:33274,varname:node_3347,prsc:2|IN-9537-OUT;n:type:ShaderForge.SFN_Slider,id:7166,x:32224,y:33137,ptovrint:False,ptlb:SpacPower 高光幕次,ptin:_SpacPower,varname:node_7166,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:20,max:90;n:type:ShaderForge.SFN_Power,id:4701,x:32584,y:32951,varname:node_4701,prsc:2|VAL-4162-OUT,EXP-7166-OUT;n:type:ShaderForge.SFN_Clamp01,id:4162,x:32397,y:32951,varname:node_4162,prsc:2|IN-9463-OUT;n:type:ShaderForge.SFN_TexCoord,id:6913,x:31989,y:32471,varname:node_6913,prsc:2,uv:0,uaff:False;n:type:ShaderForge.SFN_Multiply,id:1907,x:32177,y:32423,varname:node_1907,prsc:2|A-5813-OUT,B-6913-UVOUT;n:type:ShaderForge.SFN_Multiply,id:2466,x:32177,y:32547,varname:node_2466,prsc:2|A-9512-OUT,B-6913-UVOUT;n:type:ShaderForge.SFN_ValueProperty,id:9512,x:31989,y:32641,ptovrint:False,ptlb:TexTiling2 躁點縮放,ptin:_TexTiling2,varname:node_9512,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:1;n:type:ShaderForge.SFN_ValueProperty,id:5813,x:31989,y:32409,ptovrint:False,ptlb:TexTiling1 躁點縮放,ptin:_TexTiling1,varname:_node_9512_copy,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:3;n:type:ShaderForge.SFN_Tex2dAsset,id:2340,x:32177,y:32707,ptovrint:False,ptlb:NoiseTex 躁點貼圖,ptin:_NoiseTex,varname:node_2340,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:3f0557706a74f420cb4996beec69cdd0,ntxv:0,isnm:False;n:type:ShaderForge.SFN_Multiply,id:7464,x:32569,y:32457,varname:node_7464,prsc:2|A-2638-R,B-8593-R;n:type:ShaderForge.SFN_Lerp,id:3803,x:32776,y:32537,varname:node_3803,prsc:2|A-3787-OUT,B-7464-OUT,T-6936-OUT;n:type:ShaderForge.SFN_Slider,id:6936,x:32490,y:32795,ptovrint:False,ptlb:NoisePower 躁點強度,ptin:_NoisePower,varname:node_6936,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:-1,cur:0,max:1;n:type:ShaderForge.SFN_Vector3,id:3787,x:32569,y:32583,varname:node_3787,prsc:2,v1:0.5,v2:0.5,v3:0.5;n:type:ShaderForge.SFN_Blend,id:1811,x:33049,y:32698,varname:node_1811,prsc:2,blmd:10,clmp:True|SRC-4701-OUT,DST-3803-OUT;n:type:ShaderForge.SFN_Blend,id:2183,x:32876,y:33172,varname:node_2183,prsc:2,blmd:10,clmp:True|SRC-3347-OUT,DST-3803-OUT;n:type:ShaderForge.SFN_Round,id:9255,x:33218,y:32698,varname:node_9255,prsc:2|IN-1811-OUT;n:type:ShaderForge.SFN_Round,id:539,x:33043,y:33172,varname:node_539,prsc:2|IN-2183-OUT;n:type:ShaderForge.SFN_Color,id:6970,x:33218,y:32866,ptovrint:False,ptlb:SpacColor 高光,ptin:_SpacColor,varname:node_6970,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:0.9,c2:0.9,c3:0.9,c4:1;n:type:ShaderForge.SFN_Color,id:860,x:32876,y:33010,ptovrint:False,ptlb:LightColor 亮部,ptin:_LightColor,varname:_SpacColor_copy,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:0.5,c2:0.5,c3:0.5,c4:1;n:type:ShaderForge.SFN_Color,id:7760,x:33043,y:33010,ptovrint:False,ptlb:DarkColor 暗部,ptin:_DarkColor,varname:_LightColor_copy,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:0,c2:0,c3:0,c4:1;n:type:ShaderForge.SFN_Lerp,id:2660,x:33260,y:33092,varname:node_2660,prsc:2|A-7760-RGB,B-860-RGB,T-539-OUT;n:type:ShaderForge.SFN_Lerp,id:5982,x:33478,y:32880,varname:node_5982,prsc:2|A-2660-OUT,B-6970-RGB,T-9255-OUT;n:type:ShaderForge.SFN_Tex2d,id:2638,x:32372,y:32423,varname:node_2638,prsc:2,tex:3f0557706a74f420cb4996beec69cdd0,ntxv:0,isnm:False|UVIN-1907-OUT,TEX-2340-TEX;n:type:ShaderForge.SFN_Tex2d,id:8593,x:32372,y:32611,varname:node_8593,prsc:2,tex:3f0557706a74f420cb4996beec69cdd0,ntxv:0,isnm:False|UVIN-2466-OUT,TEX-2340-TEX;proporder:7166-6970-860-7760-2340-6936-5813-9512;pass:END;sub:END;*/

Shader "AP01/L04/Case02" {
    Properties {
        _SpacPower ("SpacPower 高光幕次", Range(0, 90)) = 20
        _SpacColor ("SpacColor 高光", Color) = (0.9,0.9,0.9,1)
        _LightColor ("LightColor 亮部", Color) = (0.5,0.5,0.5,1)
        _DarkColor ("DarkColor 暗部", Color) = (0,0,0,1)
        _NoiseTex ("NoiseTex 躁點貼圖", 2D) = "white" {}
        _NoisePower ("NoisePower 躁點強度", Range(-1, 1)) = 0
        _TexTiling1 ("TexTiling1 躁點縮放", Float ) = 3
        _TexTiling2 ("TexTiling2 躁點縮放", Float ) = 1
    }
    SubShader {
        Tags {
            "RenderType"="Opaque"
        }
        Pass {
            Name "FORWARD"
            Tags {
                "LightMode"="ForwardBase"
            }
            
            
            CGPROGRAM
            #pragma vertex vert
            #pragma fragment frag
            #pragma multi_compile_instancing
            #include "UnityCG.cginc"
            #include "AutoLight.cginc"
            #pragma multi_compile_fwdbase_fullshadows
            #pragma target 3.0
            uniform sampler2D _NoiseTex; uniform float4 _NoiseTex_ST;
            UNITY_INSTANCING_BUFFER_START( Props )
                UNITY_DEFINE_INSTANCED_PROP( float, _SpacPower)
                UNITY_DEFINE_INSTANCED_PROP( float, _TexTiling2)
                UNITY_DEFINE_INSTANCED_PROP( float, _TexTiling1)
                UNITY_DEFINE_INSTANCED_PROP( float, _NoisePower)
                UNITY_DEFINE_INSTANCED_PROP( float4, _SpacColor)
                UNITY_DEFINE_INSTANCED_PROP( float4, _LightColor)
                UNITY_DEFINE_INSTANCED_PROP( float4, _DarkColor)
            UNITY_INSTANCING_BUFFER_END( Props )
            struct VertexInput {
                float4 vertex : POSITION;
                float3 normal : NORMAL;
                float2 texcoord0 : TEXCOORD0;
            };
            struct VertexOutput {
                float4 pos : SV_POSITION;
                UNITY_VERTEX_INPUT_INSTANCE_ID
                float2 uv0 : TEXCOORD0;
                float4 posWorld : TEXCOORD1;
                float3 normalDir : TEXCOORD2;
                LIGHTING_COORDS(3,4)
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                UNITY_SETUP_INSTANCE_ID( v );
                UNITY_TRANSFER_INSTANCE_ID( v, o );
                o.uv0 = v.texcoord0;
                o.normalDir = UnityObjectToWorldNormal(v.normal);
                o.posWorld = mul(unity_ObjectToWorld, v.vertex);
                o.pos = UnityObjectToClipPos( v.vertex );
                TRANSFER_VERTEX_TO_FRAGMENT(o)
                return o;
            }
            float4 frag(VertexOutput i) : COLOR {
                UNITY_SETUP_INSTANCE_ID( i );
                i.normalDir = normalize(i.normalDir);
                float3 viewDirection = normalize(_WorldSpaceCameraPos.xyz - i.posWorld.xyz);
                float3 normalDirection = i.normalDir;
                float3 lightDirection = normalize(_WorldSpaceLightPos0.xyz);
                float3 halfDirection = normalize(viewDirection+lightDirection);
////// Lighting:
////// Emissive:
                float4 _DarkColor_var = UNITY_ACCESS_INSTANCED_PROP( Props, _DarkColor );
                float4 _LightColor_var = UNITY_ACCESS_INSTANCED_PROP( Props, _LightColor );
                float _TexTiling1_var = UNITY_ACCESS_INSTANCED_PROP( Props, _TexTiling1 );
                float2 node_1907 = (_TexTiling1_var*i.uv0);
                float4 node_2638 = tex2D(_NoiseTex,TRANSFORM_TEX(node_1907, _NoiseTex));
                float _TexTiling2_var = UNITY_ACCESS_INSTANCED_PROP( Props, _TexTiling2 );
                float2 node_2466 = (_TexTiling2_var*i.uv0);
                float4 node_8593 = tex2D(_NoiseTex,TRANSFORM_TEX(node_2466, _NoiseTex));
                float node_7464 = (node_2638.r*node_8593.r);
                float _NoisePower_var = UNITY_ACCESS_INSTANCED_PROP( Props, _NoisePower );
                float3 node_3803 = lerp(float3(0.5,0.5,0.5),float3(node_7464,node_7464,node_7464),_NoisePower_var);
                float4 _SpacColor_var = UNITY_ACCESS_INSTANCED_PROP( Props, _SpacColor );
                float _SpacPower_var = UNITY_ACCESS_INSTANCED_PROP( Props, _SpacPower );
                float3 emissive = lerp(lerp(_DarkColor_var.rgb,_LightColor_var.rgb,round(saturate(( node_3803 > 0.5 ? (1.0-(1.0-2.0*(node_3803-0.5))*(1.0-saturate(dot(i.normalDir,lightDirection)))) : (2.0*node_3803*saturate(dot(i.normalDir,lightDirection))) )))),_SpacColor_var.rgb,round(saturate(( node_3803 > 0.5 ? (1.0-(1.0-2.0*(node_3803-0.5))*(1.0-pow(saturate(dot(i.normalDir,halfDirection)),_SpacPower_var))) : (2.0*node_3803*pow(saturate(dot(i.normalDir,halfDirection)),_SpacPower_var)) ))));
                float3 finalColor = emissive;
                return fixed4(finalColor,1);
            }
            ENDCG
        }
        Pass {
            Name "FORWARD_DELTA"
            Tags {
                "LightMode"="ForwardAdd"
            }
            Blend One One
            
            
            CGPROGRAM
            #pragma vertex vert
            #pragma fragment frag
            #pragma multi_compile_instancing
            #include "UnityCG.cginc"
            #include "AutoLight.cginc"
            #pragma multi_compile_fwdadd_fullshadows
            #pragma target 3.0
            uniform sampler2D _NoiseTex; uniform float4 _NoiseTex_ST;
            UNITY_INSTANCING_BUFFER_START( Props )
                UNITY_DEFINE_INSTANCED_PROP( float, _SpacPower)
                UNITY_DEFINE_INSTANCED_PROP( float, _TexTiling2)
                UNITY_DEFINE_INSTANCED_PROP( float, _TexTiling1)
                UNITY_DEFINE_INSTANCED_PROP( float, _NoisePower)
                UNITY_DEFINE_INSTANCED_PROP( float4, _SpacColor)
                UNITY_DEFINE_INSTANCED_PROP( float4, _LightColor)
                UNITY_DEFINE_INSTANCED_PROP( float4, _DarkColor)
            UNITY_INSTANCING_BUFFER_END( Props )
            struct VertexInput {
                float4 vertex : POSITION;
                float3 normal : NORMAL;
                float2 texcoord0 : TEXCOORD0;
            };
            struct VertexOutput {
                float4 pos : SV_POSITION;
                UNITY_VERTEX_INPUT_INSTANCE_ID
                float2 uv0 : TEXCOORD0;
                float4 posWorld : TEXCOORD1;
                float3 normalDir : TEXCOORD2;
                LIGHTING_COORDS(3,4)
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                UNITY_SETUP_INSTANCE_ID( v );
                UNITY_TRANSFER_INSTANCE_ID( v, o );
                o.uv0 = v.texcoord0;
                o.normalDir = UnityObjectToWorldNormal(v.normal);
                o.posWorld = mul(unity_ObjectToWorld, v.vertex);
                o.pos = UnityObjectToClipPos( v.vertex );
                TRANSFER_VERTEX_TO_FRAGMENT(o)
                return o;
            }
            float4 frag(VertexOutput i) : COLOR {
                UNITY_SETUP_INSTANCE_ID( i );
                i.normalDir = normalize(i.normalDir);
                float3 viewDirection = normalize(_WorldSpaceCameraPos.xyz - i.posWorld.xyz);
                float3 normalDirection = i.normalDir;
                float3 lightDirection = normalize(lerp(_WorldSpaceLightPos0.xyz, _WorldSpaceLightPos0.xyz - i.posWorld.xyz,_WorldSpaceLightPos0.w));
                float3 halfDirection = normalize(viewDirection+lightDirection);
////// Lighting:
                float3 finalColor = 0;
                return fixed4(finalColor * 1,0);
            }
            ENDCG
        }
    }
    FallBack "Diffuse"
    CustomEditor "ShaderForgeMaterialInspector"
}
