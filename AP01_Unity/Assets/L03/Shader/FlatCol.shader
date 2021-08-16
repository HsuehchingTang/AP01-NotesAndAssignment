Shader "AP01/L03/FlatCol" { /*路徑名稱*/
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
                float4 vertex : POSITION;
            };
            /*輸出結構*/
            struct VertexOutput { 
                float4 pos : SV_POSITION;
            };
            /*頂點Shader*/
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.pos = UnityObjectToClipPos( v.vertex );
                return o;
            }
            /*像素Shader*/
            float4 frag(VertexOutput i) : COLOR {
////// Lighting:
////// Emissive:
                return float4(1,0.4,0.6,1);
            }

            ENDCG
        }
    }
    FallBack "Diffuse"
}
