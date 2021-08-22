// Shader created with Shader Forge v1.40 
// Shader Forge (c) Freya Holmer - http://www.acegikmo.com/shaderforge/
// Note: Manually altering this data may prevent you from opening it in Shader Forge
/*SF_DATA;ver:1.40;sub:START;pass:START;ps:flbk:,iptp:0,cusa:False,bamd:0,cgin:,cpap:True,lico:1,lgpr:1,limd:0,spmd:1,trmd:0,grmd:0,uamb:True,mssp:True,bkdf:False,hqlp:False,rprd:False,enco:False,rmgx:True,imps:True,rpth:0,vtps:0,hqsc:True,nrmq:1,nrsp:0,vomd:0,spxs:False,tesm:0,olmd:1,culm:0,bsrc:0,bdst:1,dpts:2,wrdp:True,dith:0,atcv:False,rfrpo:True,rfrpn:Refraction,coma:15,ufog:False,aust:True,igpj:False,qofs:0,qpre:1,rntp:1,fgom:False,fgoc:False,fgod:False,fgor:False,fgmd:0,fgcr:0.5,fgcg:0.5,fgcb:0.5,fgca:1,fgde:0.01,fgrn:0,fgrf:300,stcl:False,atwp:False,stva:128,stmr:255,stmw:255,stcp:6,stps:0,stfa:0,stfz:0,ofsf:0,ofsu:0,f2p0:False,fnsp:False,fnfb:False,fsmp:False;n:type:ShaderForge.SFN_Final,id:3138,x:33287,y:32727,varname:node_3138,prsc:2|emission-4701-OUT;n:type:ShaderForge.SFN_LightVector,id:7960,x:31998,y:33274,varname:node_7960,prsc:2;n:type:ShaderForge.SFN_HalfVector,id:1092,x:31998,y:32935,varname:node_1092,prsc:2;n:type:ShaderForge.SFN_Dot,id:9537,x:32224,y:33274,varname:node_9537,prsc:2,dt:0|A-7960-OUT,B-5909-OUT;n:type:ShaderForge.SFN_Dot,id:9463,x:32224,y:32951,varname:node_9463,prsc:2,dt:0|A-5909-OUT,B-1092-OUT;n:type:ShaderForge.SFN_NormalVector,id:5909,x:31998,y:33106,prsc:2,pt:False;n:type:ShaderForge.SFN_Clamp01,id:3347,x:32397,y:33274,varname:node_3347,prsc:2|IN-9537-OUT;n:type:ShaderForge.SFN_Slider,id:7166,x:32145,y:33181,ptovrint:False,ptlb:Exp,ptin:_Exp,varname:node_7166,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:30,max:90;n:type:ShaderForge.SFN_Exp,id:7739,x:32476,y:33106,varname:node_7739,prsc:2,et:0|IN-7166-OUT;n:type:ShaderForge.SFN_Power,id:4701,x:32565,y:32951,varname:node_4701,prsc:2|VAL-4162-OUT,EXP-7739-OUT;n:type:ShaderForge.SFN_Clamp01,id:4162,x:32397,y:32951,varname:node_4162,prsc:2|IN-9463-OUT;n:type:ShaderForge.SFN_TexCoord,id:6913,x:31989,y:32471,varname:node_6913,prsc:2,uv:0,uaff:False;n:type:ShaderForge.SFN_Multiply,id:1907,x:32177,y:32423,varname:node_1907,prsc:2|A-5813-OUT,B-6913-UVOUT;n:type:ShaderForge.SFN_Multiply,id:2466,x:32177,y:32547,varname:node_2466,prsc:2|A-9512-OUT,B-6913-UVOUT;n:type:ShaderForge.SFN_ValueProperty,id:9512,x:31989,y:32641,ptovrint:False,ptlb:SmallPointSize,ptin:_SmallPointSize,varname:node_9512,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:1;n:type:ShaderForge.SFN_ValueProperty,id:5813,x:31989,y:32409,ptovrint:False,ptlb:BigPointSize,ptin:_BigPointSize,varname:_node_9512_copy,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:3;n:type:ShaderForge.SFN_Tex2dAsset,id:2340,x:32177,y:32707,ptovrint:False,ptlb:TextureAsset,ptin:_TextureAsset,varname:node_2340,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:3f0557706a74f420cb4996beec69cdd0,ntxv:0,isnm:False;n:type:ShaderForge.SFN_Tex2d,id:5588,x:32374,y:32423,varname:node_5588,prsc:2,tex:3f0557706a74f420cb4996beec69cdd0,ntxv:0,isnm:False|UVIN-1907-OUT,TEX-2340-TEX;n:type:ShaderForge.SFN_Tex2d,id:7498,x:32374,y:32547,varname:node_5588,prsc:2,tex:3f0557706a74f420cb4996beec69cdd0,ntxv:0,isnm:False|UVIN-2466-OUT,TEX-2340-TEX;n:type:ShaderForge.SFN_Multiply,id:7464,x:32569,y:32457,varname:node_7464,prsc:2|A-5588-R,B-7498-R;n:type:ShaderForge.SFN_Lerp,id:3803,x:32782,y:32457,varname:node_3803,prsc:2|A-3787-OUT,B-7464-OUT,T-6936-OUT;n:type:ShaderForge.SFN_Slider,id:6936,x:32412,y:32700,ptovrint:False,ptlb:NoisePower,ptin:_NoisePower,varname:node_6936,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:-1,cur:0,max:1;n:type:ShaderForge.SFN_Vector3,id:3787,x:32569,y:32583,varname:node_3787,prsc:2,v1:0.5,v2:0.5,v3:0.5;proporder:7166-9512-2340-5813-6936;pass:END;sub:END;*/

Shader "AP01/L04/Case02" {
    Properties {
        _Exp ("Exp", Range(0, 90)) = 30
        _SmallPointSize ("SmallPointSize", Float ) = 1
        _TextureAsset ("TextureAsset", 2D) = "white" {}
        _BigPointSize ("BigPointSize", Float ) = 3
        _NoisePower ("NoisePower", Range(-1, 1)) = 0
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
                UNITY_DEFINE_INSTANCED_PROP( float, _Exp)
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
                float3 viewDirection = normalize(_WorldSpaceCameraPos.xyz - i.posWorld.xyz);
                float3 normalDirection = i.normalDir;
                float3 lightDirection = normalize(_WorldSpaceLightPos0.xyz);
                float3 halfDirection = normalize(viewDirection+lightDirection);
////// Lighting:
////// Emissive:
                float _Exp_var = UNITY_ACCESS_INSTANCED_PROP( Props, _Exp );
                float node_4701 = pow(saturate(dot(i.normalDir,halfDirection)),exp(_Exp_var));
                float3 emissive = float3(node_4701,node_4701,node_4701);
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
                UNITY_DEFINE_INSTANCED_PROP( float, _Exp)
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
