// Shader created with Shader Forge v1.40 
// Shader Forge (c) Freya Holmer - http://www.acegikmo.com/shaderforge/
// Note: Manually altering this data may prevent you from opening it in Shader Forge
/*SF_DATA;ver:1.40;sub:START;pass:START;ps:flbk:,iptp:0,cusa:False,bamd:0,cgin:,cpap:True,lico:1,lgpr:1,limd:0,spmd:1,trmd:0,grmd:0,uamb:True,mssp:True,bkdf:False,hqlp:False,rprd:False,enco:False,rmgx:True,imps:True,rpth:0,vtps:0,hqsc:True,nrmq:1,nrsp:0,vomd:0,spxs:False,tesm:0,olmd:1,culm:0,bsrc:0,bdst:1,dpts:2,wrdp:True,dith:0,atcv:False,rfrpo:True,rfrpn:Refraction,coma:15,ufog:False,aust:True,igpj:False,qofs:0,qpre:1,rntp:1,fgom:False,fgoc:False,fgod:False,fgor:False,fgmd:0,fgcr:0.5,fgcg:0.5,fgcb:0.5,fgca:1,fgde:0.01,fgrn:0,fgrf:300,stcl:False,atwp:False,stva:128,stmr:255,stmw:255,stcp:6,stps:0,stfa:0,stfz:0,ofsf:0,ofsu:0,f2p0:False,fnsp:False,fnfb:False,fsmp:False;n:type:ShaderForge.SFN_Final,id:3138,x:33438,y:32588,varname:node_3138,prsc:2|emission-9439-OUT;n:type:ShaderForge.SFN_NormalVector,id:210,x:31902,y:33030,prsc:2,pt:False;n:type:ShaderForge.SFN_LightVector,id:8495,x:31902,y:33185,varname:node_8495,prsc:2;n:type:ShaderForge.SFN_Dot,id:2043,x:32098,y:33112,varname:node_2043,prsc:2,dt:0|A-210-OUT,B-8495-OUT;n:type:ShaderForge.SFN_ScreenPos,id:5613,x:32194,y:32311,varname:node_5613,prsc:2,sctp:0;n:type:ShaderForge.SFN_Depth,id:6034,x:32194,y:32478,varname:node_6034,prsc:2;n:type:ShaderForge.SFN_Multiply,id:1202,x:32412,y:32429,varname:node_1202,prsc:2|A-5613-UVOUT,B-6034-OUT;n:type:ShaderForge.SFN_Tex2d,id:2767,x:32594,y:32429,ptovrint:False,ptlb:Texture,ptin:_Texture,varname:node_2767,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:0d7392ae31d2b4bf0b40152dd501c46b,ntxv:0,isnm:False|UVIN-1202-OUT;n:type:ShaderForge.SFN_Multiply,id:6010,x:31902,y:32859,varname:node_6010,prsc:2|A-8694-OUT,B-303-RGB;n:type:ShaderForge.SFN_Slider,id:8694,x:31590,y:32818,ptovrint:False,ptlb:midArea,ptin:_midArea,varname:node_8694,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0.4364056,max:1;n:type:ShaderForge.SFN_Color,id:303,x:31651,y:32929,ptovrint:False,ptlb:midColor,ptin:_midColor,varname:node_303,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:0.03426487,c2:0.6603774,c3:0.2862633,c4:1;n:type:ShaderForge.SFN_ComponentMask,id:4275,x:32098,y:32666,varname:node_4275,prsc:2,cc1:0,cc2:-1,cc3:-1,cc4:-1|IN-6010-OUT;n:type:ShaderForge.SFN_ComponentMask,id:6317,x:32098,y:32812,varname:node_6317,prsc:2,cc1:1,cc2:-1,cc3:-1,cc4:-1|IN-6010-OUT;n:type:ShaderForge.SFN_ComponentMask,id:184,x:32098,y:32961,varname:node_184,prsc:2,cc1:2,cc2:-1,cc3:-1,cc4:-1|IN-6010-OUT;n:type:ShaderForge.SFN_Step,id:9371,x:32274,y:32666,varname:node_9371,prsc:2|A-4275-OUT,B-2043-OUT;n:type:ShaderForge.SFN_Step,id:2987,x:32274,y:32812,varname:node_2987,prsc:2|A-6317-OUT,B-2043-OUT;n:type:ShaderForge.SFN_Step,id:43,x:32274,y:32961,varname:node_43,prsc:2|A-184-OUT,B-2043-OUT;n:type:ShaderForge.SFN_Append,id:3838,x:32459,y:32758,varname:node_3838,prsc:2|A-9371-OUT,B-2987-OUT;n:type:ShaderForge.SFN_Append,id:3186,x:32459,y:32940,varname:node_3186,prsc:2|A-3838-OUT,B-43-OUT;n:type:ShaderForge.SFN_Multiply,id:9512,x:32956,y:32977,varname:node_9512,prsc:2|A-4795-OUT,B-7956-RGB;n:type:ShaderForge.SFN_Color,id:7956,x:32781,y:33162,ptovrint:False,ptlb:DarkColor,ptin:_DarkColor,varname:node_7956,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:0.3962264,c2:0.02803488,c3:0.02803488,c4:1;n:type:ShaderForge.SFN_Color,id:3363,x:32781,y:32835,ptovrint:False,ptlb:LightColor,ptin:_LightColor,varname:node_3363,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:1,c2:0.7877358,c3:0.7877358,c4:1;n:type:ShaderForge.SFN_Multiply,id:7508,x:32781,y:32674,varname:node_7508,prsc:2|A-3186-OUT,B-3363-RGB;n:type:ShaderForge.SFN_Multiply,id:7365,x:32956,y:32560,varname:node_7365,prsc:2|A-2767-RGB,B-7508-OUT;n:type:ShaderForge.SFN_Add,id:9439,x:33225,y:32752,varname:node_9439,prsc:2|A-7365-OUT,B-9512-OUT;n:type:ShaderForge.SFN_RemapRange,id:4795,x:32781,y:32977,varname:node_4795,prsc:2,frmn:-1,frmx:1,tomn:0,tomx:1|IN-3186-OUT;proporder:8694-303-2767-3363-7956;pass:END;sub:END;*/

Shader "AP01/L04/Case01" {
    Properties {
        _midArea ("midArea", Range(0, 1)) = 0.4364056
        _midColor ("midColor", Color) = (0.03426487,0.6603774,0.2862633,1)
        _Texture ("Texture", 2D) = "white" {}
        _LightColor ("LightColor", Color) = (1,0.7877358,0.7877358,1)
        _DarkColor ("DarkColor", Color) = (0.3962264,0.02803488,0.02803488,1)
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
            uniform sampler2D _Texture; uniform float4 _Texture_ST;
            UNITY_INSTANCING_BUFFER_START( Props )
                UNITY_DEFINE_INSTANCED_PROP( float, _midArea)
                UNITY_DEFINE_INSTANCED_PROP( float4, _midColor)
                UNITY_DEFINE_INSTANCED_PROP( float4, _DarkColor)
                UNITY_DEFINE_INSTANCED_PROP( float4, _LightColor)
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
                float2 node_1202 = ((sceneUVs * 2 - 1).rg*partZ);
                float4 _Texture_var = tex2D(_Texture,TRANSFORM_TEX(node_1202, _Texture));
                float _midArea_var = UNITY_ACCESS_INSTANCED_PROP( Props, _midArea );
                float4 _midColor_var = UNITY_ACCESS_INSTANCED_PROP( Props, _midColor );
                float3 node_6010 = (_midArea_var*_midColor_var.rgb);
                float node_2043 = dot(i.normalDir,lightDirection);
                float3 node_3186 = float3(float2(step(node_6010.r,node_2043),step(node_6010.g,node_2043)),step(node_6010.b,node_2043));
                float4 _LightColor_var = UNITY_ACCESS_INSTANCED_PROP( Props, _LightColor );
                float4 _DarkColor_var = UNITY_ACCESS_INSTANCED_PROP( Props, _DarkColor );
                float3 emissive = ((_Texture_var.rgb*(node_3186*_LightColor_var.rgb))+((node_3186*0.5+0.5)*_DarkColor_var.rgb));
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
            uniform sampler2D _Texture; uniform float4 _Texture_ST;
            UNITY_INSTANCING_BUFFER_START( Props )
                UNITY_DEFINE_INSTANCED_PROP( float, _midArea)
                UNITY_DEFINE_INSTANCED_PROP( float4, _midColor)
                UNITY_DEFINE_INSTANCED_PROP( float4, _DarkColor)
                UNITY_DEFINE_INSTANCED_PROP( float4, _LightColor)
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
