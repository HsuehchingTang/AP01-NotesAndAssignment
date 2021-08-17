Shader "AP01/L03/SelfLambert" { /*路徑名稱*/
    Properties { /*材質面板參數：給美術編輯用的區域定義*/
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

            /*輸入結構*/
            struct VertexInput { 
                float4 vertex : POSITION; //模型頂點 
                float3 normal : NORMAL; //模型法線
            };
            /*輸出結構*/
            struct VertexOutput { 
                float4 pos : SV_POSITION;//頂點在螢幕的位置
                float3 nDirWS : TEXCOORD0TEXCOORD0;//平面空間中的法線資訊
            };
            /*頂點Shader*/
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0; //新建一個輸出結構 
                o.pos = UnityObjectToClipPos( v.vertex ); //換算頂點位置 
                o.nDirWS = UnityObjectToWorldNormal( v.normal ); //換算法線資訊  
                return o;

            }
            /*像素Shader*/
            float4 frag(VertexOutput i) : COLOR {
                float3 nDir = i.nDirWS; 
                float3 lDir = normalize(_WorldSpaceLightPos0.xyz); 
                //normalize 可以不加，但是以防萬一
                float nDotl = dot(nDir,lDir); //nDir Dot lDir
                float Lembert = max(0.0, nDotl);//在0跟nDotl的數值中取最大
                float SelfLembert = nDotl * 0.5 + 0.5;

                return float4(SelfLembert, SelfLembert, SelfLembert,1);
            }

            ENDCG
        }
    }
    FallBack "Diffuse"
}
