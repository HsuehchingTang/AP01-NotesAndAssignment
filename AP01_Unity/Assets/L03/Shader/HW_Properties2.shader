// Shader created with Shader Forge v1.40 
// Shader Forge (c) Freya Holmer - http://www.acegikmo.com/shaderforge/
// Note: Manually altering this data may prevent you from opening it in Shader Forge
/*SF_DATA;ver:1.40;sub:START;pass:START;ps:flbk:,iptp:0,cusa:False,bamd:0,cgin:,cpap:True,lico:1,lgpr:1,limd:0,spmd:1,trmd:0,grmd:0,uamb:True,mssp:True,bkdf:False,hqlp:False,rprd:False,enco:False,rmgx:True,imps:True,rpth:0,vtps:0,hqsc:True,nrmq:1,nrsp:0,vomd:0,spxs:False,tesm:0,olmd:1,culm:0,bsrc:0,bdst:1,dpts:2,wrdp:True,dith:0,atcv:False,rfrpo:True,rfrpn:Refraction,coma:15,ufog:False,aust:True,igpj:False,qofs:0,qpre:1,rntp:1,fgom:False,fgoc:False,fgod:False,fgor:False,fgmd:0,fgcr:0.5,fgcg:0.5,fgcb:0.5,fgca:1,fgde:0.01,fgrn:0,fgrf:300,stcl:False,atwp:False,stva:128,stmr:255,stmw:255,stcp:6,stps:0,stfa:0,stfz:0,ofsf:0,ofsu:0,f2p0:False,fnsp:False,fnfb:False,fsmp:False;n:type:ShaderForge.SFN_Final,id:3138,x:33530,y:32521,varname:node_3138,prsc:2|emission-3934-OUT;n:type:ShaderForge.SFN_NormalVector,id:5654,x:32438,y:32666,prsc:2,pt:False;n:type:ShaderForge.SFN_Dot,id:62,x:32610,y:32519,varname:node_62,prsc:2,dt:0|A-6415-OUT,B-5654-OUT;n:type:ShaderForge.SFN_RemapRange,id:769,x:32785,y:32519,varname:node_769,prsc:2,frmn:-1,frmx:1,tomn:0,tomx:1|IN-62-OUT;n:type:ShaderForge.SFN_Color,id:3310,x:32438,y:32915,ptovrint:False,ptlb:ColorDark暗面,ptin:_ColorDark,varname:node_3310,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:0.6698113,c2:0.1683362,c3:0,c4:1;n:type:ShaderForge.SFN_Slider,id:9183,x:32438,y:33094,ptovrint:False,ptlb:Slider顏色彩度,ptin:_Slider,varname:node_9183,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0,max:1;n:type:ShaderForge.SFN_Lerp,id:3934,x:33008,y:32675,varname:node_3934,prsc:2|A-7501-OUT,B-1319-RGB,T-769-OUT;n:type:ShaderForge.SFN_Color,id:1319,x:32304,y:32834,ptovrint:False,ptlb:ColorLight亮面,ptin:_ColorLight,varname:node_1319,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:1,c2:1,c3:1,c4:1;n:type:ShaderForge.SFN_LightVector,id:6415,x:32438,y:32519,varname:node_6415,prsc:2;n:type:ShaderForge.SFN_Multiply,id:7501,x:32657,y:32915,varname:node_7501,prsc:2|A-3310-RGB,B-9183-OUT;proporder:9183-1319-3310;pass:END;sub:END;*/

Shader "AP01/L03/Properties2" {
    Properties {
        _Slider ("Slider顏色彩度", Range(0, 1)) = 0
        _ColorLight ("ColorLight亮面", Color) = (1,1,1,1)
        _ColorDark ("ColorDark暗面", Color) = (0.6698113,0.1683362,0,1)
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
            UNITY_INSTANCING_BUFFER_START( Props )
                UNITY_DEFINE_INSTANCED_PROP( float4, _ColorDark)
                UNITY_DEFINE_INSTANCED_PROP( float, _Slider)
                UNITY_DEFINE_INSTANCED_PROP( float4, _ColorLight)
            UNITY_INSTANCING_BUFFER_END( Props )
            struct VertexInput {
                float4 vertex : POSITION;
                float3 normal : NORMAL;
            };
            struct VertexOutput {
                float4 pos : SV_POSITION;
                UNITY_VERTEX_INPUT_INSTANCE_ID
                float4 posWorld : TEXCOORD0;
                float3 normalDir : TEXCOORD1;
                LIGHTING_COORDS(2,3)
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                UNITY_SETUP_INSTANCE_ID( v );
                UNITY_TRANSFER_INSTANCE_ID( v, o );
                o.normalDir = UnityObjectToWorldNormal(v.normal);
                o.posWorld = mul(unity_ObjectToWorld, v.vertex);
                o.pos = UnityObjectToClipPos( v.vertex );
                TRANSFER_VERTEX_TO_FRAGMENT(o)
                return o;
            }
            float4 frag(VertexOutput i) : COLOR {
                UNITY_SETUP_INSTANCE_ID( i );
                i.normalDir = normalize(i.normalDir);
                float3 normalDirection = i.normalDir;
                float3 lightDirection = normalize(_WorldSpaceLightPos0.xyz);
////// Lighting:
////// Emissive:
                float4 _ColorDark_var = UNITY_ACCESS_INSTANCED_PROP( Props, _ColorDark );
                float _Slider_var = UNITY_ACCESS_INSTANCED_PROP( Props, _Slider );
                float4 _ColorLight_var = UNITY_ACCESS_INSTANCED_PROP( Props, _ColorLight );
                float3 emissive = lerp((_ColorDark_var.rgb*_Slider_var),_ColorLight_var.rgb,(dot(lightDirection,i.normalDir)*0.5+0.5));
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
            UNITY_INSTANCING_BUFFER_START( Props )
                UNITY_DEFINE_INSTANCED_PROP( float4, _ColorDark)
                UNITY_DEFINE_INSTANCED_PROP( float, _Slider)
                UNITY_DEFINE_INSTANCED_PROP( float4, _ColorLight)
            UNITY_INSTANCING_BUFFER_END( Props )
            struct VertexInput {
                float4 vertex : POSITION;
                float3 normal : NORMAL;
            };
            struct VertexOutput {
                float4 pos : SV_POSITION;
                UNITY_VERTEX_INPUT_INSTANCE_ID
                float4 posWorld : TEXCOORD0;
                float3 normalDir : TEXCOORD1;
                LIGHTING_COORDS(2,3)
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                UNITY_SETUP_INSTANCE_ID( v );
                UNITY_TRANSFER_INSTANCE_ID( v, o );
                o.normalDir = UnityObjectToWorldNormal(v.normal);
                o.posWorld = mul(unity_ObjectToWorld, v.vertex);
                o.pos = UnityObjectToClipPos( v.vertex );
                TRANSFER_VERTEX_TO_FRAGMENT(o)
                return o;
            }
            float4 frag(VertexOutput i) : COLOR {
                UNITY_SETUP_INSTANCE_ID( i );
                i.normalDir = normalize(i.normalDir);
                float3 normalDirection = i.normalDir;
                float3 lightDirection = normalize(lerp(_WorldSpaceLightPos0.xyz, _WorldSpaceLightPos0.xyz - i.posWorld.xyz,_WorldSpaceLightPos0.w));
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
