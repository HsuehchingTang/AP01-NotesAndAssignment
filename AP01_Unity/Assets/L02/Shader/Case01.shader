// Shader created with Shader Forge v1.40 
// Shader Forge (c) Freya Holmer - http://www.acegikmo.com/shaderforge/
// Note: Manually altering this data may prevent you from opening it in Shader Forge
/*SF_DATA;ver:1.40;sub:START;pass:START;ps:flbk:,iptp:0,cusa:False,bamd:0,cgin:,cpap:True,lico:1,lgpr:1,limd:0,spmd:1,trmd:0,grmd:0,uamb:True,mssp:True,bkdf:False,hqlp:False,rprd:False,enco:False,rmgx:True,imps:True,rpth:0,vtps:0,hqsc:True,nrmq:1,nrsp:0,vomd:0,spxs:False,tesm:0,olmd:1,culm:0,bsrc:0,bdst:1,dpts:2,wrdp:True,dith:0,atcv:False,rfrpo:True,rfrpn:Refraction,coma:15,ufog:False,aust:True,igpj:False,qofs:0,qpre:1,rntp:1,fgom:False,fgoc:False,fgod:False,fgor:False,fgmd:0,fgcr:0.5,fgcg:0.5,fgcb:0.5,fgca:1,fgde:0.01,fgrn:0,fgrf:300,stcl:False,atwp:False,stva:128,stmr:255,stmw:255,stcp:6,stps:0,stfa:0,stfz:0,ofsf:0,ofsu:0,f2p0:False,fnsp:False,fnfb:False,fsmp:False;n:type:ShaderForge.SFN_Final,id:3138,x:34147,y:32610,varname:node_3138,prsc:2|emission-1084-OUT;n:type:ShaderForge.SFN_LightVector,id:1357,x:32032,y:32480,varname:node_1357,prsc:2;n:type:ShaderForge.SFN_NormalVector,id:5125,x:32032,y:32621,prsc:2,pt:False;n:type:ShaderForge.SFN_Dot,id:3418,x:32208,y:32532,varname:node_3418,prsc:2,dt:0|A-1357-OUT,B-5125-OUT;n:type:ShaderForge.SFN_Vector1,id:2196,x:32208,y:32685,varname:node_2196,prsc:2,v1:0.5;n:type:ShaderForge.SFN_Multiply,id:5454,x:32387,y:32532,varname:node_5454,prsc:2|A-3418-OUT,B-2196-OUT;n:type:ShaderForge.SFN_Add,id:1376,x:32567,y:32532,varname:node_1376,prsc:2|A-5454-OUT,B-2196-OUT;n:type:ShaderForge.SFN_Append,id:7907,x:32757,y:32532,varname:node_7907,prsc:2|A-1376-OUT,B-2196-OUT;n:type:ShaderForge.SFN_Tex2d,id:8462,x:32925,y:32532,ptovrint:False,ptlb:node_8462,ptin:_node_8462,varname:node_8462,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:fb1c0f256e8cf4dba902585af9d95660,ntxv:0,isnm:False|UVIN-7907-OUT;n:type:ShaderForge.SFN_NormalVector,id:2995,x:32029,y:33036,prsc:2,pt:False;n:type:ShaderForge.SFN_LightVector,id:1527,x:32566,y:33008,varname:node_1527,prsc:2;n:type:ShaderForge.SFN_Vector4Property,id:443,x:32029,y:32879,ptovrint:False,ptlb:HighLight01,ptin:_HighLight01,varname:node_443,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:0,v2:0,v3:0,v4:0;n:type:ShaderForge.SFN_Add,id:5931,x:32268,y:32941,varname:node_5931,prsc:2|A-443-XYZ,B-2995-OUT;n:type:ShaderForge.SFN_Add,id:8328,x:32268,y:33133,varname:node_8328,prsc:2|A-1812-XYZ,B-2995-OUT;n:type:ShaderForge.SFN_Vector4Property,id:1812,x:32029,y:33210,ptovrint:False,ptlb:HighLight02,ptin:_HighLight02,varname:_node_443_copy,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:0,v2:-0.2,v3:0,v4:0;n:type:ShaderForge.SFN_Dot,id:4975,x:32724,y:32939,varname:node_4975,prsc:2,dt:0|A-7453-OUT,B-1527-OUT;n:type:ShaderForge.SFN_Dot,id:9335,x:32724,y:33132,varname:node_9335,prsc:2,dt:0|A-5859-OUT,B-1527-OUT;n:type:ShaderForge.SFN_Normalize,id:7453,x:32447,y:32941,varname:node_7453,prsc:2|IN-5931-OUT;n:type:ShaderForge.SFN_Normalize,id:5859,x:32447,y:33133,varname:node_5859,prsc:2|IN-8328-OUT;n:type:ShaderForge.SFN_Slider,id:6638,x:32566,y:32847,ptovrint:False,ptlb:LightPointSize01,ptin:_LightPointSize01,varname:node_6638,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0.996,max:1;n:type:ShaderForge.SFN_If,id:1254,x:33047,y:32937,varname:node_1254,prsc:2|A-4975-OUT,B-6638-OUT,GT-6567-OUT,EQ-2353-OUT,LT-2353-OUT;n:type:ShaderForge.SFN_Vector1,id:2353,x:32849,y:33089,varname:node_2353,prsc:2,v1:0;n:type:ShaderForge.SFN_Vector1,id:6567,x:32849,y:33034,varname:node_6567,prsc:2,v1:1;n:type:ShaderForge.SFN_If,id:1003,x:33047,y:33132,varname:node_1003,prsc:2|A-9335-OUT,B-2396-OUT,GT-6567-OUT,EQ-2353-OUT,LT-2353-OUT;n:type:ShaderForge.SFN_Slider,id:2396,x:32567,y:33314,ptovrint:False,ptlb:LightPointSize02,ptin:_LightPointSize02,varname:_LightPointSize02,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0.999,max:1;n:type:ShaderForge.SFN_Max,id:7868,x:33235,y:32937,varname:node_7868,prsc:2|A-1254-OUT,B-1003-OUT;n:type:ShaderForge.SFN_Clamp01,id:3529,x:33416,y:32937,varname:node_3529,prsc:2|IN-7868-OUT;n:type:ShaderForge.SFN_Lerp,id:9586,x:33625,y:32760,varname:node_9586,prsc:2|A-8462-RGB,B-1704-RGB,T-3529-OUT;n:type:ShaderForge.SFN_Color,id:1704,x:33235,y:32783,ptovrint:False,ptlb:LightPointColor,ptin:_LightPointColor,varname:node_1704,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:1,c2:1,c3:0.9009434,c4:1;n:type:ShaderForge.SFN_Fresnel,id:7226,x:33495,y:33125,varname:node_7226,prsc:2|EXP-6525-OUT;n:type:ShaderForge.SFN_ValueProperty,id:6525,x:33326,y:33145,ptovrint:False,ptlb:FresnelSize,ptin:_FresnelSize,varname:node_6525,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:3;n:type:ShaderForge.SFN_Multiply,id:2109,x:33683,y:33165,varname:node_2109,prsc:2|A-7226-OUT,B-9796-RGB;n:type:ShaderForge.SFN_Color,id:9796,x:33495,y:33286,ptovrint:False,ptlb:FresnelColor,ptin:_FresnelColor,varname:_LightPointColor_copy,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:0.8730279,c2:1,c3:0.6179246,c4:1;n:type:ShaderForge.SFN_Blend,id:1084,x:33919,y:32913,varname:node_1084,prsc:2,blmd:6,clmp:True|SRC-9586-OUT,DST-2109-OUT;proporder:8462-443-6638-1812-2396-1704-6525-9796;pass:END;sub:END;*/

Shader "AP01/L02/Case01" {
    Properties {
        _node_8462 ("node_8462", 2D) = "white" {}
        _HighLight01 ("HighLight01", Vector) = (0,0,0,0)
        _LightPointSize01 ("LightPointSize01", Range(0, 1)) = 0.996
        _HighLight02 ("HighLight02", Vector) = (0,-0.2,0,0)
        _LightPointSize02 ("LightPointSize02", Range(0, 1)) = 0.999
        _LightPointColor ("LightPointColor", Color) = (1,1,0.9009434,1)
        _FresnelSize ("FresnelSize", Float ) = 3
        _FresnelColor ("FresnelColor", Color) = (0.8730279,1,0.6179246,1)
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
            uniform sampler2D _node_8462; uniform float4 _node_8462_ST;
            UNITY_INSTANCING_BUFFER_START( Props )
                UNITY_DEFINE_INSTANCED_PROP( float4, _HighLight01)
                UNITY_DEFINE_INSTANCED_PROP( float4, _HighLight02)
                UNITY_DEFINE_INSTANCED_PROP( float, _LightPointSize01)
                UNITY_DEFINE_INSTANCED_PROP( float, _LightPointSize02)
                UNITY_DEFINE_INSTANCED_PROP( float4, _LightPointColor)
                UNITY_DEFINE_INSTANCED_PROP( float, _FresnelSize)
                UNITY_DEFINE_INSTANCED_PROP( float4, _FresnelColor)
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
////// Lighting:
////// Emissive:
                float node_2196 = 0.5;
                float2 node_7907 = float2(((dot(lightDirection,i.normalDir)*node_2196)+node_2196),node_2196);
                float4 _node_8462_var = tex2D(_node_8462,TRANSFORM_TEX(node_7907, _node_8462));
                float4 _LightPointColor_var = UNITY_ACCESS_INSTANCED_PROP( Props, _LightPointColor );
                float4 _HighLight01_var = UNITY_ACCESS_INSTANCED_PROP( Props, _HighLight01 );
                float _LightPointSize01_var = UNITY_ACCESS_INSTANCED_PROP( Props, _LightPointSize01 );
                float node_1254_if_leA = step(dot(normalize((_HighLight01_var.rgb+i.normalDir)),lightDirection),_LightPointSize01_var);
                float node_1254_if_leB = step(_LightPointSize01_var,dot(normalize((_HighLight01_var.rgb+i.normalDir)),lightDirection));
                float node_2353 = 0.0;
                float node_6567 = 1.0;
                float4 _HighLight02_var = UNITY_ACCESS_INSTANCED_PROP( Props, _HighLight02 );
                float _LightPointSize02_var = UNITY_ACCESS_INSTANCED_PROP( Props, _LightPointSize02 );
                float node_1003_if_leA = step(dot(normalize((_HighLight02_var.rgb+i.normalDir)),lightDirection),_LightPointSize02_var);
                float node_1003_if_leB = step(_LightPointSize02_var,dot(normalize((_HighLight02_var.rgb+i.normalDir)),lightDirection));
                float node_3529 = saturate(max(lerp((node_1254_if_leA*node_2353)+(node_1254_if_leB*node_6567),node_2353,node_1254_if_leA*node_1254_if_leB),lerp((node_1003_if_leA*node_2353)+(node_1003_if_leB*node_6567),node_2353,node_1003_if_leA*node_1003_if_leB)));
                float _FresnelSize_var = UNITY_ACCESS_INSTANCED_PROP( Props, _FresnelSize );
                float4 _FresnelColor_var = UNITY_ACCESS_INSTANCED_PROP( Props, _FresnelColor );
                float3 emissive = saturate((1.0-(1.0-lerp(_node_8462_var.rgb,_LightPointColor_var.rgb,node_3529))*(1.0-(pow(1.0-max(0,dot(normalDirection, viewDirection)),_FresnelSize_var)*_FresnelColor_var.rgb))));
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
            uniform sampler2D _node_8462; uniform float4 _node_8462_ST;
            UNITY_INSTANCING_BUFFER_START( Props )
                UNITY_DEFINE_INSTANCED_PROP( float4, _HighLight01)
                UNITY_DEFINE_INSTANCED_PROP( float4, _HighLight02)
                UNITY_DEFINE_INSTANCED_PROP( float, _LightPointSize01)
                UNITY_DEFINE_INSTANCED_PROP( float, _LightPointSize02)
                UNITY_DEFINE_INSTANCED_PROP( float4, _LightPointColor)
                UNITY_DEFINE_INSTANCED_PROP( float, _FresnelSize)
                UNITY_DEFINE_INSTANCED_PROP( float4, _FresnelColor)
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
