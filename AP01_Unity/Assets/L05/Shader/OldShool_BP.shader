Shader "AP01/L05/OldShool_BP" { /*路徑名稱*/

    Properties { /*材質面板參數：給美術編輯用的區域定義*/
        _MainCol        ("Color", color)                    = (1.0, 1.0, 1.0, 1.0)
        _SpecularPow    ("SpecularPower", range(1, 90))     = 30
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
            #include "UnityCG.cginc"
            #pragma multi_compile_fwdbase_fullshadows
            #pragma target 3.0

            /*聲明*/
            //uniform vert,frag 共用
            //uniform vert 專用
            //uniform vert,frag 之間傳數據 
            uniform float3 _MainCol;
            uniform float _SpecularPow;

            /*輸入結構*/
            struct VertexInput { 
                float4 vertex : POSITION;   //模型頂點 
                float3 normal : NORMAL;     //模型法線
                
            };
            /*輸出結構*/
            struct VertexOutput {
                float4 posCS : SV_POSITION;     //螢幕空間頂點位置  
                float4 posWS : TEXCOORD0;       //世界空間頂點位置-新增 
                float3 nDirWS : TEXCOORD1;      //世界空間法向量
            };
            /*頂點Shader*/
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;                   //新建一個輸出結構 
                o.posCS = UnityObjectToClipPos( v.vertex );         //換算頂點位置 OS>CS 
                o.posWS = mul(unity_ObjectToWorld, v.vertex );      //換算頂點位置 OS>WS
                o.nDirWS = UnityObjectToWorldNormal( v.normal );    //換算法線方向 OS>WS  
                return o;
            }
            /*像素Shader*/
            float4 frag(VertexOutput i) : COLOR {
                //準備向量 
                float3 nDir = i.nDirWS;                                         //模型法向量
                float3 lDir = normalize(_WorldSpaceLightPos0.xyz);              //光方向 
                float3 vDir = normalize(_WorldSpaceCameraPos.xyz - i.posWS);    
                float3 hDir = normalize(vDir + lDir);                           

                //準備點乘結果 
                float nDotl = dot(nDir,lDir);   //nDir Dot lDir 
                float nDoth = dot(nDir,hDir);   //nDir Dot hDir 
                
                //光照模型 
                float lembert = max(0.0, nDotl);                        //蘭伯特 
                float blinnPhong = pow(max(0.0, nDoth), _SpecularPow);  //布林逢 

                float3 finalRGB = _MainCol * lembert + blinnPhong;      //結果顏色 

                //返回結果
                return float4(finalRGB, 1.0);
            }

            ENDCG
        }
    }
    FallBack "Diffuse"
}
