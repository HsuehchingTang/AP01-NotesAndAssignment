// Shader created with Shader Forge v1.40 
// Shader Forge (c) Freya Holmer - http://www.acegikmo.com/shaderforge/
// Note: Manually altering this data may prevent you from opening it in Shader Forge
/*SF_DATA;ver:1.40;sub:START;pass:START;ps:flbk:,iptp:0,cusa:False,bamd:0,cgin:,cpap:True,lico:1,lgpr:1,limd:0,spmd:1,trmd:0,grmd:0,uamb:True,mssp:True,bkdf:False,hqlp:False,rprd:False,enco:False,rmgx:True,imps:True,rpth:0,vtps:0,hqsc:True,nrmq:1,nrsp:0,vomd:0,spxs:False,tesm:0,olmd:1,culm:0,bsrc:0,bdst:1,dpts:2,wrdp:True,dith:0,atcv:False,rfrpo:True,rfrpn:Refraction,coma:15,ufog:False,aust:True,igpj:False,qofs:0,qpre:1,rntp:1,fgom:False,fgoc:False,fgod:False,fgor:False,fgmd:0,fgcr:0.5,fgcg:0.5,fgcb:0.5,fgca:1,fgde:0.01,fgrn:0,fgrf:300,stcl:False,atwp:False,stva:128,stmr:255,stmw:255,stcp:6,stps:0,stfa:0,stfz:0,ofsf:0,ofsu:0,f2p0:False,fnsp:False,fnfb:False,fsmp:False;n:type:ShaderForge.SFN_Final,id:3138,x:33492,y:32312,varname:node_3138,prsc:2|emission-6055-OUT,olwid-5176-OUT,olcol-8198-RGB;n:type:ShaderForge.SFN_ScreenPos,id:8024,x:32291,y:32345,varname:node_8024,prsc:2,sctp:0;n:type:ShaderForge.SFN_Depth,id:8406,x:32291,y:32499,varname:node_8406,prsc:2;n:type:ShaderForge.SFN_Multiply,id:1463,x:32504,y:32417,varname:node_1463,prsc:2|A-8024-UVOUT,B-8406-OUT;n:type:ShaderForge.SFN_Tex2d,id:4664,x:32695,y:32417,ptovrint:False,ptlb:node_4664,ptin:_node_4664,varname:node_4664,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:f8effdc519d61483989e3f93d6d821c6,ntxv:0,isnm:False|UVIN-1463-OUT;n:type:ShaderForge.SFN_NormalVector,id:7794,x:32484,y:32780,prsc:2,pt:False;n:type:ShaderForge.SFN_LightVector,id:9826,x:32484,y:32648,varname:node_9826,prsc:2;n:type:ShaderForge.SFN_Dot,id:7714,x:32695,y:32676,varname:node_7714,prsc:2,dt:0|A-9826-OUT,B-7794-OUT;n:type:ShaderForge.SFN_Step,id:8622,x:32921,y:32521,varname:node_8622,prsc:2|A-4664-RGB,B-7714-OUT;n:type:ShaderForge.SFN_Lerp,id:5943,x:33117,y:32226,varname:node_5943,prsc:2|A-477-RGB,B-65-RGB,T-8622-OUT;n:type:ShaderForge.SFN_Color,id:477,x:32858,y:32136,ptovrint:False,ptlb:ColorDark,ptin:_ColorDark,varname:node_477,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:0.2,c2:0.6558778,c3:0.8,c4:1;n:type:ShaderForge.SFN_Color,id:65,x:32858,y:32305,ptovrint:False,ptlb:ColorLight,ptin:_ColorLight,varname:_Color02,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:0.6941972,c2:0.7192399,c3:0.754717,c4:1;n:type:ShaderForge.SFN_Multiply,id:9781,x:32921,y:32751,varname:node_9781,prsc:2|A-7714-OUT,B-1024-RGB;n:type:ShaderForge.SFN_Color,id:1024,x:32695,y:32862,ptovrint:False,ptlb:Color,ptin:_Color,varname:_ColorLight_copy,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:0.06247773,c2:0.1097682,c3:0.1132075,c4:1;n:type:ShaderForge.SFN_Add,id:6055,x:33192,y:32418,varname:node_6055,prsc:2|A-5943-OUT,B-9781-OUT;n:type:ShaderForge.SFN_Color,id:8198,x:33218,y:32762,ptovrint:False,ptlb:OutlinrColor,ptin:_OutlinrColor,varname:node_8198,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:0.03831434,c2:0.07657604,c3:0.1981132,c4:1;n:type:ShaderForge.SFN_ValueProperty,id:5176,x:33218,y:32669,ptovrint:False,ptlb:OutlinrValue,ptin:_OutlinrValue,varname:node_5176,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:0.02;proporder:4664-477-65-1024-8198-5176;pass:END;sub:END;*/

Shader "AP01/L02/Case02" {
    Properties {
        _node_4664 ("node_4664", 2D) = "white" {}
        _ColorDark ("ColorDark", Color) = (0.2,0.6558778,0.8,1)
        _ColorLight ("ColorLight", Color) = (0.6941972,0.7192399,0.754717,1)
        _Color ("Color", Color) = (0.06247773,0.1097682,0.1132075,1)
        _OutlinrColor ("OutlinrColor", Color) = (0.03831434,0.07657604,0.1981132,1)
        _OutlinrValue ("OutlinrValue", Float ) = 0.02
    }
    SubShader {
        Tags {
            "RenderType"="Opaque"
        }
        Pass {
            Name "Outline"
            Tags {
            }
            Cull Front
            
            CGPROGRAM
            #pragma vertex vert
            #pragma fragment frag
            #pragma multi_compile_instancing
            #include "UnityCG.cginc"
            #pragma fragmentoption ARB_precision_hint_fastest
            #pragma multi_compile_shadowcaster
            #pragma target 3.0
            UNITY_INSTANCING_BUFFER_START( Props )
                UNITY_DEFINE_INSTANCED_PROP( float4, _OutlinrColor)
                UNITY_DEFINE_INSTANCED_PROP( float, _OutlinrValue)
            UNITY_INSTANCING_BUFFER_END( Props )
            struct VertexInput {
                float4 vertex : POSITION;
                float3 normal : NORMAL;
            };
            struct VertexOutput {
                float4 pos : SV_POSITION;
                UNITY_VERTEX_INPUT_INSTANCE_ID
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                UNITY_SETUP_INSTANCE_ID( v );
                UNITY_TRANSFER_INSTANCE_ID( v, o );
                float _OutlinrValue_var = UNITY_ACCESS_INSTANCED_PROP( Props, _OutlinrValue );
                o.pos = UnityObjectToClipPos( float4(v.vertex.xyz + v.normal*_OutlinrValue_var,1) );
                return o;
            }
            float4 frag(VertexOutput i) : COLOR {
                UNITY_SETUP_INSTANCE_ID( i );
                float4 _OutlinrColor_var = UNITY_ACCESS_INSTANCED_PROP( Props, _OutlinrColor );
                return fixed4(_OutlinrColor_var.rgb,0);
            }
            ENDCG
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
            uniform sampler2D _node_4664; uniform float4 _node_4664_ST;
            UNITY_INSTANCING_BUFFER_START( Props )
                UNITY_DEFINE_INSTANCED_PROP( float4, _ColorDark)
                UNITY_DEFINE_INSTANCED_PROP( float4, _ColorLight)
                UNITY_DEFINE_INSTANCED_PROP( float4, _Color)
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
                float4 projPos : TEXCOORD2;
                LIGHTING_COORDS(3,4)
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                UNITY_SETUP_INSTANCE_ID( v );
                UNITY_TRANSFER_INSTANCE_ID( v, o );
                o.normalDir = UnityObjectToWorldNormal(v.normal);
                o.posWorld = mul(unity_ObjectToWorld, v.vertex);
                o.pos = UnityObjectToClipPos( v.vertex );
                o.projPos = ComputeScreenPos (o.pos);
                COMPUTE_EYEDEPTH(o.projPos.z);
                TRANSFER_VERTEX_TO_FRAGMENT(o)
                return o;
            }
            float4 frag(VertexOutput i) : COLOR {
                UNITY_SETUP_INSTANCE_ID( i );
                i.normalDir = normalize(i.normalDir);
                float3 normalDirection = i.normalDir;
                float partZ = max(0,i.projPos.z - _ProjectionParams.g);
                float2 sceneUVs = (i.projPos.xy / i.projPos.w);
                float3 lightDirection = normalize(_WorldSpaceLightPos0.xyz);
////// Lighting:
////// Emissive:
                float4 _ColorDark_var = UNITY_ACCESS_INSTANCED_PROP( Props, _ColorDark );
                float4 _ColorLight_var = UNITY_ACCESS_INSTANCED_PROP( Props, _ColorLight );
                float2 node_1463 = ((sceneUVs * 2 - 1).rg*partZ);
                float4 _node_4664_var = tex2D(_node_4664,TRANSFORM_TEX(node_1463, _node_4664));
                float node_7714 = dot(lightDirection,i.normalDir);
                float4 _Color_var = UNITY_ACCESS_INSTANCED_PROP( Props, _Color );
                float3 emissive = (lerp(_ColorDark_var.rgb,_ColorLight_var.rgb,step(_node_4664_var.rgb,node_7714))+(node_7714*_Color_var.rgb));
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
            uniform sampler2D _node_4664; uniform float4 _node_4664_ST;
            UNITY_INSTANCING_BUFFER_START( Props )
                UNITY_DEFINE_INSTANCED_PROP( float4, _ColorDark)
                UNITY_DEFINE_INSTANCED_PROP( float4, _ColorLight)
                UNITY_DEFINE_INSTANCED_PROP( float4, _Color)
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
                float4 projPos : TEXCOORD2;
                LIGHTING_COORDS(3,4)
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                UNITY_SETUP_INSTANCE_ID( v );
                UNITY_TRANSFER_INSTANCE_ID( v, o );
                o.normalDir = UnityObjectToWorldNormal(v.normal);
                o.posWorld = mul(unity_ObjectToWorld, v.vertex);
                o.pos = UnityObjectToClipPos( v.vertex );
                o.projPos = ComputeScreenPos (o.pos);
                COMPUTE_EYEDEPTH(o.projPos.z);
                TRANSFER_VERTEX_TO_FRAGMENT(o)
                return o;
            }
            float4 frag(VertexOutput i) : COLOR {
                UNITY_SETUP_INSTANCE_ID( i );
                i.normalDir = normalize(i.normalDir);
                float3 normalDirection = i.normalDir;
                float partZ = max(0,i.projPos.z - _ProjectionParams.g);
                float2 sceneUVs = (i.projPos.xy / i.projPos.w);
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
