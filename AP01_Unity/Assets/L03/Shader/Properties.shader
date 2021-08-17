// Shader created with Shader Forge v1.40 
// Shader Forge (c) Freya Holmer - http://www.acegikmo.com/shaderforge/
// Note: Manually altering this data may prevent you from opening it in Shader Forge
/*SF_DATA;ver:1.40;sub:START;pass:START;ps:flbk:,iptp:0,cusa:False,bamd:0,cgin:,cpap:True,lico:1,lgpr:1,limd:0,spmd:1,trmd:0,grmd:0,uamb:True,mssp:True,bkdf:False,hqlp:False,rprd:False,enco:False,rmgx:True,imps:True,rpth:0,vtps:0,hqsc:True,nrmq:1,nrsp:0,vomd:0,spxs:False,tesm:0,olmd:1,culm:0,bsrc:0,bdst:1,dpts:2,wrdp:True,dith:0,atcv:False,rfrpo:True,rfrpn:Refraction,coma:15,ufog:False,aust:True,igpj:False,qofs:0,qpre:1,rntp:1,fgom:False,fgoc:False,fgod:False,fgor:False,fgmd:0,fgcr:0.5,fgcg:0.5,fgcb:0.5,fgca:1,fgde:0.01,fgrn:0,fgrf:300,stcl:False,atwp:False,stva:128,stmr:255,stmw:255,stcp:6,stps:0,stfa:0,stfz:0,ofsf:0,ofsu:0,f2p0:False,fnsp:False,fnfb:False,fsmp:False;n:type:ShaderForge.SFN_Final,id:3138,x:33525,y:32515,varname:node_3138,prsc:2|emission-2851-OUT;n:type:ShaderForge.SFN_Vector4Property,id:765,x:32271,y:32519,ptovrint:False,ptlb:Vecter4偽光照方向,ptin:_Vecter4,varname:node_765,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:0,v2:1,v3:0,v4:0;n:type:ShaderForge.SFN_Normalize,id:3508,x:32438,y:32519,varname:node_3508,prsc:2|IN-765-XYZ;n:type:ShaderForge.SFN_NormalVector,id:5654,x:32438,y:32666,prsc:2,pt:False;n:type:ShaderForge.SFN_Dot,id:62,x:32610,y:32519,varname:node_62,prsc:2,dt:0|A-3508-OUT,B-5654-OUT;n:type:ShaderForge.SFN_RemapRange,id:769,x:32785,y:32519,varname:node_769,prsc:2,frmn:-1,frmx:1,tomn:0,tomx:1|IN-62-OUT;n:type:ShaderForge.SFN_Color,id:3310,x:32375,y:32851,ptovrint:False,ptlb:Color偽光照顏色,ptin:_Color,varname:node_3310,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:0.8,c2:0.4,c3:0.6,c4:1;n:type:ShaderForge.SFN_Multiply,id:8189,x:32631,y:32835,varname:node_8189,prsc:2|A-769-OUT,B-3310-RGB;n:type:ShaderForge.SFN_Multiply,id:2567,x:32813,y:32835,varname:node_2567,prsc:2|A-8189-OUT,B-9183-OUT;n:type:ShaderForge.SFN_Slider,id:9183,x:32416,y:33024,ptovrint:False,ptlb:Slider偽光照強度,ptin:_Slider,varname:node_9183,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:1,max:2;n:type:ShaderForge.SFN_TexCoord,id:8504,x:32635,y:33138,varname:node_8504,prsc:2,uv:0,uaff:False;n:type:ShaderForge.SFN_Tex2d,id:3879,x:32812,y:33138,ptovrint:False,ptlb:Texture自訂貼圖,ptin:_Texture,varname:node_3879,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,ntxv:0,isnm:False|UVIN-8504-UVOUT;n:type:ShaderForge.SFN_Multiply,id:783,x:33001,y:33009,varname:node_783,prsc:2|A-2567-OUT,B-3879-RGB;n:type:ShaderForge.SFN_SwitchProperty,id:2851,x:33226,y:33009,ptovrint:False,ptlb:Switch偽光照開關_copy,ptin:_Switch_copy,varname:_Switch_copy,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,on:True|A-3879-RGB,B-783-OUT;proporder:3879-2851-765-3310-9183;pass:END;sub:END;*/

Shader "AP01/L03/Properties" {
    Properties {
        _Texture ("Texture自訂貼圖", 2D) = "white" {}
        [MaterialToggle] _Switch_copy ("Switch偽光照開關_copy", Float ) = 0
        _Vecter4 ("Vecter4偽光照方向", Vector) = (0,1,0,0)
        _Color ("Color偽光照顏色", Color) = (0.8,0.4,0.6,1)
        _Slider ("Slider偽光照強度", Range(0, 2)) = 1
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
            #pragma multi_compile_fwdbase_fullshadows
            #pragma target 3.0
            uniform sampler2D _Texture; uniform float4 _Texture_ST;
            UNITY_INSTANCING_BUFFER_START( Props )
                UNITY_DEFINE_INSTANCED_PROP( float4, _Vecter4)
                UNITY_DEFINE_INSTANCED_PROP( float4, _Color)
                UNITY_DEFINE_INSTANCED_PROP( float, _Slider)
                UNITY_DEFINE_INSTANCED_PROP( fixed, _Switch_copy)
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
                float3 normalDir : TEXCOORD1;
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                UNITY_SETUP_INSTANCE_ID( v );
                UNITY_TRANSFER_INSTANCE_ID( v, o );
                o.uv0 = v.texcoord0;
                o.normalDir = UnityObjectToWorldNormal(v.normal);
                o.pos = UnityObjectToClipPos( v.vertex );
                return o;
            }
            float4 frag(VertexOutput i) : COLOR {
                UNITY_SETUP_INSTANCE_ID( i );
                i.normalDir = normalize(i.normalDir);
                float3 normalDirection = i.normalDir;
////// Lighting:
////// Emissive:
                float4 _Texture_var = tex2D(_Texture,TRANSFORM_TEX(i.uv0, _Texture));
                float4 _Vecter4_var = UNITY_ACCESS_INSTANCED_PROP( Props, _Vecter4 );
                float4 _Color_var = UNITY_ACCESS_INSTANCED_PROP( Props, _Color );
                float _Slider_var = UNITY_ACCESS_INSTANCED_PROP( Props, _Slider );
                float3 _Switch_copy_var = lerp( _Texture_var.rgb, ((((dot(normalize(_Vecter4_var.rgb),i.normalDir)*0.5+0.5)*_Color_var.rgb)*_Slider_var)*_Texture_var.rgb), UNITY_ACCESS_INSTANCED_PROP( Props, _Switch_copy ) );
                float3 emissive = _Switch_copy_var;
                float3 finalColor = emissive;
                return fixed4(finalColor,1);
            }
            ENDCG
        }
    }
    FallBack "Diffuse"
    CustomEditor "ShaderForgeMaterialInspector"
}
