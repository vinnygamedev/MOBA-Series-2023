// Made with Amplify Shader Editor
// Available at the Unity Asset Store - http://u3d.as/y3X 
Shader "Polytope Studio/ PT_Medieval Weapons Shader Toon"
{
	Properties
	{
		[HDR]_COATOFARMSCOLOR("COAT OF ARMS COLOR", Color) = (1,0,0,0)
		[HDR]_METAL1COLOR("METAL 1 COLOR", Color) = (0.7261481,0.7735849,0.7528313,0)
		[NoScaleOffset]_COATOFARMSMASK("COAT OF ARMS MASK", 2D) = "black" {}
		_CEL1SIZE("CEL 1 SIZE", Range( 0 , 1)) = 0.1
		_CEL2SIZE("CEL 2 SIZE", Range( 0 , 1)) = 0.4
		[HDR]_METAL2COLOR("METAL 2 COLOR", Color) = (1.678431,1.003922,0.1176471,0)
		_CEL3SIZE("CEL 3 SIZE", Range( 0 , 1)) = 0.8
		_CEL1POWER("CEL 1 POWER", Range( 0 , 1)) = 0.15
		_CEL2POWER("CEL 2 POWER", Range( 0 , 1)) = 0.15
		[HDR]_METAL3COLOR("METAL 3 COLOR", Color) = (0.597023,0.6237553,0.7395956,0)
		_CEL3POWER("CEL 3 POWER", Range( 0 , 1)) = 0.15
		[HDR]_CEL1COLOR("CEL 1 COLOR", Color) = (1,1,1,0)
		[HDR]_CEL2COLOR("CEL 2 COLOR", Color) = (1,1,1,0)
		[HDR]_METAL4COLOR("METAL 4 COLOR", Color) = (0.8791043,0.8044721,0.9422547,0)
		[HDR]_CEL3COLOR("CEL 3 COLOR", Color) = (1,1,1,0)
		[HDR]_WOOD1COLOR("WOOD 1 COLOR", Color) = (0.1981132,0.08345769,0.06261124,0)
		[HDR]_WOOD2COLOR("WOOD 2 COLOR", Color) = (0.1320755,0.06452555,0.05420079,0)
		[HDR]_WOOD3COLOR("WOOD 3 COLOR", Color) = (0.1037736,0.07509367,0.04650232,0)
		[HDR]_LEATHER1COLOR("LEATHER 1 COLOR", Color) = (0.2924528,0.1296404,0.09242612,1)
		[HDR]_LEATHER2COLOR("LEATHER 2 COLOR", Color) = (0.06603771,0.03523636,0.03146137,1)
		[HDR]_LEATHER3COLOR("LEATHER 3 COLOR", Color) = (0.1320755,0.03139969,0.02180491,1)
		[HDR]_PAINT1COLOR("PAINT 1 COLOR", Color) = (0.5450981,0.6936808,0.6980392,0)
		[HDR]_PAINT2COLOR("PAINT 2 COLOR", Color) = (0.3649431,0.5566038,0.4386422,0)
		[HDR]_PAINT3COLOR("PAINT 3 COLOR", Color) = (0.5849056,0.5418971,0.4331613,0)
		[HDR]_GEMS1COLOR("GEMS 1 COLOR", Color) = (1,0,0,0)
		[HDR]_GEMS2COLOR("GEMS 2 COLOR", Color) = (0,0.3218706,0.5754717,0)
		[HDR]_GEMS3COLOR("GEMS 3 COLOR", Color) = (0,0.4716981,0.1359325,0)
		[HDR]_FEATHERS1COLOR("FEATHERS 1 COLOR", Color) = (0.3301887,0.1241556,0.04516733,0)
		[HDR]_FEATHERS2COLOR("FEATHERS 2 COLOR", Color) = (0.509434,0.4260285,0.1802243,0)
		[HDR]_FEATHERS3COLOR("FEATHERS 3 COLOR", Color) = (0.509434,0.25712,0.25712,0)
		[HDR]_FEATHERS4COLOR("FEATHERS 4 COLOR", Color) = (0.8113208,0.2104842,0.2104842,0)
		[HDR]_FEATHERS5COLOR("FEATHERS 5 COLOR", Color) = (0.4150943,0.2615769,0.1468494,0)
		[HDR]_FEATHERS6COLOR("FEATHERS 6 COLOR", Color) = (0.7924528,0.7444169,0.6391954,0)
		[HideInInspector]_TextureSample2("Texture Sample 2", 2D) = "white" {}
		[HideInInspector]_TextureSample9("Texture Sample 9", 2D) = "white" {}
		[HideInInspector] _texcoord( "", 2D ) = "white" {}
		[HideInInspector] _texcoord2( "", 2D ) = "white" {}
		[HideInInspector] __dirty( "", Int ) = 1
	}

	SubShader
	{
		Tags{ "RenderType" = "Opaque"  "Queue" = "Geometry+0" "IsEmissive" = "true"  }
		Cull Back
		CGINCLUDE
		#include "UnityPBSLighting.cginc"
		#include "Lighting.cginc"
		#pragma target 3.0
		struct Input
		{
			float2 uv_texcoord;
			float2 uv2_texcoord2;
			float3 worldPos;
			float3 worldNormal;
		};

		uniform sampler2D _TextureSample2;
		uniform float4 _TextureSample2_ST;
		uniform float4 _PAINT3COLOR;
		uniform sampler2D _TextureSample9;
		uniform float4 _TextureSample9_ST;
		uniform float4 _PAINT2COLOR;
		uniform float4 _PAINT1COLOR;
		uniform float4 _FEATHERS6COLOR;
		uniform float4 _FEATHERS5COLOR;
		uniform float4 _FEATHERS4COLOR;
		uniform float4 _FEATHERS3COLOR;
		uniform float4 _FEATHERS2COLOR;
		uniform float4 _FEATHERS1COLOR;
		uniform float4 _WOOD3COLOR;
		uniform float4 _WOOD2COLOR;
		uniform float4 _WOOD1COLOR;
		uniform float4 _LEATHER3COLOR;
		uniform float4 _LEATHER2COLOR;
		uniform float4 _LEATHER1COLOR;
		uniform float4 _METAL4COLOR;
		uniform float4 _METAL3COLOR;
		uniform float4 _METAL2COLOR;
		uniform float4 _METAL1COLOR;
		uniform float4 _GEMS3COLOR;
		uniform float4 _GEMS2COLOR;
		uniform float4 _GEMS1COLOR;
		uniform float4 _COATOFARMSCOLOR;
		uniform sampler2D _COATOFARMSMASK;
		SamplerState sampler_COATOFARMSMASK;
		uniform float _CEL1SIZE;
		uniform float4 _CEL1COLOR;
		uniform float _CEL1POWER;
		uniform float _CEL2SIZE;
		uniform float4 _CEL2COLOR;
		uniform float _CEL2POWER;
		uniform float _CEL3SIZE;
		uniform float4 _CEL3COLOR;
		uniform float _CEL3POWER;

		inline half4 LightingUnlit( SurfaceOutput s, half3 lightDir, half atten )
		{
			return half4 ( 0, 0, 0, s.Alpha );
		}

		void surf( Input i , inout SurfaceOutput o )
		{
			float2 uv_TextureSample2 = i.uv_texcoord * _TextureSample2_ST.xy + _TextureSample2_ST.zw;
			float4 tex2DNode717 = tex2D( _TextureSample2, uv_TextureSample2 );
			float4 color719 = IsGammaSpace() ? float4(1,0.4980392,0.4980392,1) : float4(1,0.2122307,0.2122307,1);
			float2 uv_TextureSample9 = i.uv_texcoord * _TextureSample9_ST.xy + _TextureSample9_ST.zw;
			float4 tex2DNode718 = tex2D( _TextureSample9, uv_TextureSample9 );
			float4 lerpResult729 = lerp( float4( 0,0,0,0 ) , ( tex2DNode717 * _PAINT3COLOR ) , saturate( ( 1.0 - ( ( distance( color719.rgb , tex2DNode718.rgb ) - 0.1 ) / max( 0.0 , 1E-05 ) ) ) ));
			float4 color720 = IsGammaSpace() ? float4(0.4980392,0.4980392,0.4980392,1) : float4(0.2122307,0.2122307,0.2122307,1);
			float4 lerpResult731 = lerp( lerpResult729 , ( tex2DNode717 * _PAINT2COLOR ) , saturate( ( 1.0 - ( ( distance( color720.rgb , tex2DNode718.rgb ) - 0.1 ) / max( 0.0 , 1E-05 ) ) ) ));
			float4 color724 = IsGammaSpace() ? float4(0.4980392,0.4980392,0,1) : float4(0.2122307,0.2122307,0,1);
			float4 lerpResult738 = lerp( lerpResult731 , ( tex2DNode717 * _PAINT1COLOR ) , saturate( ( 1.0 - ( ( distance( color724.rgb , tex2DNode718.rgb ) - 0.1 ) / max( 0.0 , 1E-05 ) ) ) ));
			float4 color734 = IsGammaSpace() ? float4(0,0.4980392,0,1) : float4(0,0.2122307,0,1);
			float4 lerpResult741 = lerp( lerpResult738 , ( tex2DNode717 * _FEATHERS6COLOR ) , saturate( ( 1.0 - ( ( distance( color734.rgb , tex2DNode718.rgb ) - 0.1 ) / max( 0.0 , 1E-05 ) ) ) ));
			float4 color737 = IsGammaSpace() ? float4(0,0,0,1) : float4(0,0,0,1);
			float4 lerpResult746 = lerp( lerpResult741 , ( tex2DNode717 * _FEATHERS5COLOR ) , saturate( ( 1.0 - ( ( distance( color737.rgb , tex2DNode718.rgb ) - 0.0 ) / max( 0.0 , 1E-05 ) ) ) ));
			float4 color744 = IsGammaSpace() ? float4(1,1,0,1) : float4(1,1,0,1);
			float4 lerpResult752 = lerp( lerpResult746 , ( tex2DNode717 * _FEATHERS4COLOR ) , saturate( ( 1.0 - ( ( distance( color744.rgb , tex2DNode718.rgb ) - 0.0 ) / max( 0.0 , 1E-05 ) ) ) ));
			float4 color745 = IsGammaSpace() ? float4(0.4980392,0,0,1) : float4(0.2122307,0,0,1);
			float4 lerpResult758 = lerp( lerpResult752 , ( tex2DNode717 * _FEATHERS3COLOR ) , saturate( ( 1.0 - ( ( distance( color745.rgb , tex2DNode718.rgb ) - 0.1 ) / max( 0.0 , 1E-05 ) ) ) ));
			float4 color753 = IsGammaSpace() ? float4(1,0.4980392,0,1) : float4(1,0.2122307,0,1);
			float4 lerpResult761 = lerp( lerpResult758 , ( tex2DNode717 * _FEATHERS2COLOR ) , saturate( ( 1.0 - ( ( distance( color753.rgb , tex2DNode718.rgb ) - 0.1 ) / max( 0.0 , 1E-05 ) ) ) ));
			float4 color757 = IsGammaSpace() ? float4(1,0,0,1) : float4(1,0,0,1);
			float4 lerpResult767 = lerp( lerpResult761 , ( tex2DNode717 * _FEATHERS1COLOR ) , saturate( ( 1.0 - ( ( distance( color757.rgb , tex2DNode718.rgb ) - 0.0 ) / max( 0.0 , 1E-05 ) ) ) ));
			float4 color762 = IsGammaSpace() ? float4(0,0,1,0) : float4(0,0,1,0);
			float4 lerpResult772 = lerp( lerpResult767 , ( tex2DNode717 * _WOOD3COLOR ) , saturate( ( 1.0 - ( ( distance( color762.rgb , tex2DNode718.rgb ) - 0.0 ) / max( 0.0 , 1E-05 ) ) ) ));
			float4 color769 = IsGammaSpace() ? float4(0,1,1,1) : float4(0,1,1,1);
			float4 lerpResult779 = lerp( lerpResult772 , ( tex2DNode717 * _WOOD2COLOR ) , saturate( ( 1.0 - ( ( distance( color769.rgb , tex2DNode718.rgb ) - 0.0 ) / max( 0.0 , 1E-05 ) ) ) ));
			float4 color771 = IsGammaSpace() ? float4(0,1,0,1) : float4(0,1,0,1);
			float4 lerpResult785 = lerp( lerpResult779 , ( tex2DNode717 * _WOOD1COLOR ) , saturate( ( 1.0 - ( ( distance( color771.rgb , tex2DNode718.rgb ) - 0.0 ) / max( 0.0 , 1E-05 ) ) ) ));
			float4 color781 = IsGammaSpace() ? float4(1,0.4980392,1,1) : float4(1,0.2122307,1,1);
			float4 lerpResult788 = lerp( lerpResult785 , ( tex2DNode717 * _LEATHER3COLOR ) , saturate( ( 1.0 - ( ( distance( color781.rgb , tex2DNode718.rgb ) - 0.1 ) / max( 0.0 , 1E-05 ) ) ) ));
			float4 color782 = IsGammaSpace() ? float4(1,0,1,1) : float4(1,0,1,1);
			float4 lerpResult794 = lerp( lerpResult788 , ( tex2DNode717 * _LEATHER2COLOR ) , saturate( ( 1.0 - ( ( distance( color782.rgb , tex2DNode718.rgb ) - 0.0 ) / max( 0.0 , 1E-05 ) ) ) ));
			float4 color789 = IsGammaSpace() ? float4(1,1,0.4980392,1) : float4(1,1,0.2122307,1);
			float4 lerpResult801 = lerp( lerpResult794 , ( tex2DNode717 * _LEATHER1COLOR ) , saturate( ( 1.0 - ( ( distance( color789.rgb , tex2DNode718.rgb ) - 0.1 ) / max( 0.0 , 1E-05 ) ) ) ));
			float4 color797 = IsGammaSpace() ? float4(0.4980392,0.4980392,1,1) : float4(0.2122307,0.2122307,1,1);
			float4 lerpResult804 = lerp( lerpResult801 , ( tex2DNode717 * _METAL4COLOR ) , saturate( ( 1.0 - ( ( distance( color797.rgb , tex2DNode718.rgb ) - 0.1 ) / max( 0.0 , 1E-05 ) ) ) ));
			float4 color799 = IsGammaSpace() ? float4(0,0.4980392,0.4980392,1) : float4(0,0.2122307,0.2122307,1);
			float4 lerpResult810 = lerp( lerpResult804 , ( tex2DNode717 * _METAL3COLOR ) , saturate( ( 1.0 - ( ( distance( color799.rgb , tex2DNode718.rgb ) - 0.1 ) / max( 0.0 , 1E-05 ) ) ) ));
			float4 color806 = IsGammaSpace() ? float4(0,0,0.4980392,1) : float4(0,0,0.2122307,1);
			float4 lerpResult814 = lerp( lerpResult810 , ( tex2DNode717 * _METAL2COLOR ) , saturate( ( 1.0 - ( ( distance( color806.rgb , tex2DNode718.rgb ) - 0.1 ) / max( 0.0 , 1E-05 ) ) ) ));
			float4 color808 = IsGammaSpace() ? float4(0.4980392,0,0.4980392,1) : float4(0.2122307,0,0.2122307,1);
			float4 lerpResult821 = lerp( lerpResult814 , ( tex2DNode717 * _METAL1COLOR ) , saturate( ( 1.0 - ( ( distance( color808.rgb , tex2DNode718.rgb ) - 0.1 ) / max( 0.0 , 1E-05 ) ) ) ));
			float4 color815 = IsGammaSpace() ? float4(0.4980392,1,1,1) : float4(0.2122307,1,1,1);
			float4 lerpResult824 = lerp( lerpResult821 , ( tex2DNode717 * _GEMS3COLOR ) , saturate( ( 1.0 - ( ( distance( color815.rgb , tex2DNode718.rgb ) - 0.1 ) / max( 0.0 , 1E-05 ) ) ) ));
			float4 color822 = IsGammaSpace() ? float4(0.4980392,1,0.4980392,1) : float4(0.2122307,1,0.2122307,1);
			float4 lerpResult830 = lerp( lerpResult824 , ( tex2DNode717 * _GEMS2COLOR ) , saturate( ( 1.0 - ( ( distance( color822.rgb , tex2DNode718.rgb ) - 0.1 ) / max( 0.0 , 1E-05 ) ) ) ));
			float4 color825 = IsGammaSpace() ? float4(0.4980392,0,1,1) : float4(0.2122307,0,1,1);
			float4 lerpResult832 = lerp( lerpResult830 , ( tex2DNode717 * _GEMS1COLOR ) , saturate( ( 1.0 - ( ( distance( color825.rgb , tex2DNode718.rgb ) - 0.1 ) / max( 0.0 , 1E-05 ) ) ) ));
			float2 uv2_COATOFARMSMASK10 = i.uv2_texcoord2;
			float temp_output_9_0 = ( 1.0 - tex2D( _COATOFARMSMASK, uv2_COATOFARMSMASK10 ).a );
			float4 temp_cast_44 = (temp_output_9_0).xxxx;
			float4 temp_output_1_0_g170 = temp_cast_44;
			float4 color25 = IsGammaSpace() ? float4(0,0,0,0) : float4(0,0,0,0);
			float4 temp_output_2_0_g170 = color25;
			float temp_output_11_0_g170 = distance( temp_output_1_0_g170 , temp_output_2_0_g170 );
			float2 _Vector0 = float2(1.6,1);
			float4 lerpResult21_g170 = lerp( _COATOFARMSCOLOR , temp_output_1_0_g170 , saturate( ( ( temp_output_11_0_g170 - _Vector0.x ) / max( _Vector0.y , 1E-05 ) ) ));
			float4 lerpResult64 = lerp( lerpResult832 , lerpResult21_g170 , ( 1.0 - temp_output_9_0 ));
			float3 ase_worldPos = i.worldPos;
			float3 ase_worldViewDir = normalize( UnityWorldSpaceViewDir( ase_worldPos ) );
			float3 ase_worldNormal = i.worldNormal;
			float fresnelNdotV369 = dot( ase_worldNormal, ase_worldViewDir );
			float fresnelNode369 = ( 0.0 + 1.0 * pow( max( 1.0 - fresnelNdotV369 , 0.0001 ), 1.0 ) );
			float4 temp_cast_45 = (step( fresnelNode369 , _CEL1SIZE )).xxxx;
			float4 blendOpSrc689 = temp_cast_45;
			float4 blendOpDest689 = _CEL1COLOR;
			float4 temp_cast_46 = ((0.0 + (_CEL1POWER - 0.0) * (3.0 - 0.0) / (1.0 - 0.0))).xxxx;
			float4 blendOpSrc683 = ( saturate( ( blendOpSrc689 * blendOpDest689 ) ));
			float4 blendOpDest683 = temp_cast_46;
			float4 blendOpSrc661 = ( blendOpSrc683 * blendOpDest683 );
			float4 blendOpDest661 = lerpResult64;
			float fresnelNdotV365 = dot( ase_worldNormal, ase_worldViewDir );
			float fresnelNode365 = ( 0.0 + 1.0 * pow( 1.0 - fresnelNdotV365, 1.0 ) );
			float4 temp_cast_47 = (step( fresnelNode365 , _CEL2SIZE )).xxxx;
			float4 blendOpSrc696 = temp_cast_47;
			float4 blendOpDest696 = _CEL2COLOR;
			float4 temp_cast_48 = ((0.0 + (_CEL2POWER - 0.0) * (3.0 - 0.0) / (1.0 - 0.0))).xxxx;
			float4 blendOpSrc686 = ( saturate( ( blendOpSrc696 * blendOpDest696 ) ));
			float4 blendOpDest686 = temp_cast_48;
			float4 blendOpSrc662 = ( blendOpSrc686 * blendOpDest686 );
			float4 blendOpDest662 = lerpResult64;
			float fresnelNdotV368 = dot( ase_worldNormal, ase_worldViewDir );
			float fresnelNode368 = ( 0.0 + 1.0 * pow( 1.0 - fresnelNdotV368, 1.0 ) );
			float4 temp_cast_49 = (step( fresnelNode368 , _CEL3SIZE )).xxxx;
			float4 blendOpSrc698 = temp_cast_49;
			float4 blendOpDest698 = _CEL3COLOR;
			float4 temp_cast_50 = ((0.0 + (_CEL3POWER - 0.0) * (3.0 - 0.0) / (1.0 - 0.0))).xxxx;
			float4 blendOpSrc687 = ( saturate( ( blendOpSrc698 * blendOpDest698 ) ));
			float4 blendOpDest687 = temp_cast_50;
			float4 blendOpSrc663 = ( blendOpSrc687 * blendOpDest687 );
			float4 blendOpDest663 = lerpResult64;
			o.Emission = ( lerpResult64 + ( ( blendOpSrc661 * blendOpDest661 ) + ( saturate( ( blendOpSrc662 * blendOpDest662 ) )) + ( saturate( ( blendOpSrc663 * blendOpDest663 ) )) ) ).rgb;
			o.Alpha = 1;
		}

		ENDCG
		CGPROGRAM
		#pragma surface surf Unlit keepalpha fullforwardshadows 

		ENDCG
		Pass
		{
			Name "ShadowCaster"
			Tags{ "LightMode" = "ShadowCaster" }
			ZWrite On
			CGPROGRAM
			#pragma vertex vert
			#pragma fragment frag
			#pragma target 3.0
			#pragma multi_compile_shadowcaster
			#pragma multi_compile UNITY_PASS_SHADOWCASTER
			#pragma skip_variants FOG_LINEAR FOG_EXP FOG_EXP2
			#include "HLSLSupport.cginc"
			#if ( SHADER_API_D3D11 || SHADER_API_GLCORE || SHADER_API_GLES || SHADER_API_GLES3 || SHADER_API_METAL || SHADER_API_VULKAN )
				#define CAN_SKIP_VPOS
			#endif
			#include "UnityCG.cginc"
			#include "Lighting.cginc"
			#include "UnityPBSLighting.cginc"
			struct v2f
			{
				V2F_SHADOW_CASTER;
				float4 customPack1 : TEXCOORD1;
				float3 worldPos : TEXCOORD2;
				float3 worldNormal : TEXCOORD3;
				UNITY_VERTEX_INPUT_INSTANCE_ID
				UNITY_VERTEX_OUTPUT_STEREO
			};
			v2f vert( appdata_full v )
			{
				v2f o;
				UNITY_SETUP_INSTANCE_ID( v );
				UNITY_INITIALIZE_OUTPUT( v2f, o );
				UNITY_INITIALIZE_VERTEX_OUTPUT_STEREO( o );
				UNITY_TRANSFER_INSTANCE_ID( v, o );
				Input customInputData;
				float3 worldPos = mul( unity_ObjectToWorld, v.vertex ).xyz;
				half3 worldNormal = UnityObjectToWorldNormal( v.normal );
				o.worldNormal = worldNormal;
				o.customPack1.xy = customInputData.uv_texcoord;
				o.customPack1.xy = v.texcoord;
				o.customPack1.zw = customInputData.uv2_texcoord2;
				o.customPack1.zw = v.texcoord1;
				o.worldPos = worldPos;
				TRANSFER_SHADOW_CASTER_NORMALOFFSET( o )
				return o;
			}
			half4 frag( v2f IN
			#if !defined( CAN_SKIP_VPOS )
			, UNITY_VPOS_TYPE vpos : VPOS
			#endif
			) : SV_Target
			{
				UNITY_SETUP_INSTANCE_ID( IN );
				Input surfIN;
				UNITY_INITIALIZE_OUTPUT( Input, surfIN );
				surfIN.uv_texcoord = IN.customPack1.xy;
				surfIN.uv2_texcoord2 = IN.customPack1.zw;
				float3 worldPos = IN.worldPos;
				half3 worldViewDir = normalize( UnityWorldSpaceViewDir( worldPos ) );
				surfIN.worldPos = worldPos;
				surfIN.worldNormal = IN.worldNormal;
				SurfaceOutput o;
				UNITY_INITIALIZE_OUTPUT( SurfaceOutput, o )
				surf( surfIN, o );
				#if defined( CAN_SKIP_VPOS )
				float2 vpos = IN.pos;
				#endif
				SHADOW_CASTER_FRAGMENT( IN )
			}
			ENDCG
		}
	}
	Fallback "Diffuse"
	CustomEditor "ASEMaterialInspector"
}
/*ASEBEGIN
Version=18703
0;6;1906;1022;194.9397;-53.74579;1;True;True
Node;AmplifyShaderEditor.CommentaryNode;715;-21084.23,128.5433;Inherit;False;341.4902;248.4146;Comment;1;717;BASE TEXTURE;1,1,1,1;0;0
Node;AmplifyShaderEditor.CommentaryNode;713;-20390.66,128.141;Inherit;False;2305.307;694.8573;Comment;15;738;732;731;730;729;727;726;725;724;723;722;721;720;719;716;PAINT COLORS;0.05562881,0.9716981,0,1;0;0
Node;AmplifyShaderEditor.CommentaryNode;714;-21078.86,529.9666;Inherit;False;336;252;Comment;1;718;MASK TEXTURE;1,1,1,1;0;0
Node;AmplifyShaderEditor.SamplerNode;718;-21048.77,579.2703;Inherit;True;Property;_TextureSample9;Texture Sample 9;34;1;[HideInInspector];Create;True;0;0;False;0;False;-1;f88a8d19ac8f5724aa4e309405c476b6;f88a8d19ac8f5724aa4e309405c476b6;True;0;False;white;Auto;False;Object;-1;Auto;Texture2D;8;0;SAMPLER2D;;False;1;FLOAT2;0,0;False;2;FLOAT;0;False;3;FLOAT2;0,0;False;4;FLOAT2;0,0;False;5;FLOAT;1;False;6;FLOAT;0;False;7;SAMPLERSTATE;;False;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.SamplerNode;717;-21051.59,174.4154;Inherit;True;Property;_TextureSample2;Texture Sample 2;33;1;[HideInInspector];Create;True;0;0;False;0;False;-1;7772baab606a3874d99a1e30d4b6b891;7772baab606a3874d99a1e30d4b6b891;True;0;False;white;Auto;False;Object;-1;Auto;Texture2D;8;0;SAMPLER2D;;False;1;FLOAT2;0,0;False;2;FLOAT;0;False;3;FLOAT2;0,0;False;4;FLOAT2;0,0;False;5;FLOAT;1;False;6;FLOAT;0;False;7;SAMPLERSTATE;;False;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.ColorNode;716;-19866.61,189.4188;Inherit;False;Property;_PAINT3COLOR;PAINT 3 COLOR;23;1;[HDR];Create;True;0;0;False;0;False;0.5849056,0.5418971,0.4331613,0;0,0.1132075,0.01206957,0;True;0;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.ColorNode;719;-20092.05,599.5247;Inherit;False;Constant;_Color28;Color 28;51;1;[HideInInspector];Create;True;0;0;False;0;False;1,0.4980392,0.4980392,1;0,0,0,0;True;0;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;721;-19642.4,178.141;Inherit;False;2;2;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.ColorNode;720;-19492.61,597.0018;Inherit;False;Constant;_Color29;Color 29;51;1;[HideInInspector];Create;True;0;0;False;0;False;0.4980392,0.4980392,0.4980392,1;0,0,0,0;True;0;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.FunctionNode;722;-19836.67,583.8914;Inherit;True;Color Mask;-1;;177;eec747d987850564c95bde0e5a6d1867;0;4;1;FLOAT3;0,0,0;False;3;FLOAT3;0,0,0;False;4;FLOAT;0.1;False;5;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.ColorNode;723;-19259.45,201.534;Inherit;False;Property;_PAINT2COLOR;PAINT 2 COLOR;22;1;[HDR];Create;True;0;0;False;0;False;0.3649431,0.5566038,0.4386422,0;0.2023368,0,0.4339623,0;True;0;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.ColorNode;726;-18686.87,200.3568;Inherit;False;Property;_PAINT1COLOR;PAINT 1 COLOR;21;1;[HDR];Create;True;0;0;False;0;False;0.5450981,0.6936808,0.6980392,0;0.3773585,0,0.06650025,0;True;0;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.LerpOp;729;-19466.58,398.5252;Inherit;False;3;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;2;FLOAT;0;False;1;COLOR;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;725;-19029.53,180.5199;Inherit;False;2;2;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.ColorNode;724;-18826.06,593.2327;Inherit;False;Constant;_Color30;Color 30;51;1;[HideInInspector];Create;True;0;0;False;0;False;0.4980392,0.4980392,0,1;0,0,0,0;True;0;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.FunctionNode;727;-19238.46,579.1321;Inherit;True;Color Mask;-1;;179;eec747d987850564c95bde0e5a6d1867;0;4;1;FLOAT3;0,0,0;False;3;FLOAT3;0,0,0;False;4;FLOAT;0.1;False;5;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.CommentaryNode;728;-17686.24,137.2083;Inherit;False;4637.659;753.5428;Comment;30;767;764;763;761;760;759;758;757;755;754;753;752;751;750;749;748;747;746;745;744;743;742;741;740;739;737;736;735;734;733;FEATHERS COLORS;0.735849,0.7152051,0.3158597,1;0;0
Node;AmplifyShaderEditor.FunctionNode;730;-18571.74,588.2972;Inherit;True;Color Mask;-1;;178;eec747d987850564c95bde0e5a6d1867;0;4;1;FLOAT3;0,0,0;False;3;FLOAT3;0,0,0;False;4;FLOAT;0.1;False;5;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.LerpOp;731;-18846.12,383.993;Inherit;False;3;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;2;FLOAT;0;False;1;COLOR;0
Node;AmplifyShaderEditor.ColorNode;733;-17181.62,197.1996;Inherit;False;Property;_FEATHERS6COLOR;FEATHERS 6 COLOR;32;1;[HDR];Create;True;0;0;False;0;False;0.7924528,0.7444169,0.6391954,0;0,0.1793142,0.7264151,0;True;0;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.ColorNode;734;-17361.7,638.9216;Inherit;False;Constant;_Color3;Color 3;51;1;[HideInInspector];Create;True;0;0;False;0;False;0,0.4980392,0,1;0,0,0,0;True;0;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;732;-18452.73,185.5819;Inherit;False;2;2;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.FunctionNode;736;-17110.21,563.6277;Inherit;True;Color Mask;-1;;195;eec747d987850564c95bde0e5a6d1867;0;4;1;FLOAT3;0,0,0;False;3;FLOAT3;0,0,0;False;4;FLOAT;0.1;False;5;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;735;-16941.62,181.1996;Inherit;False;2;2;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.LerpOp;738;-18269.34,393.3084;Inherit;False;3;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;2;FLOAT;0;False;1;COLOR;0
Node;AmplifyShaderEditor.ColorNode;739;-16589.62,197.1996;Inherit;False;Property;_FEATHERS5COLOR;FEATHERS 5 COLOR;31;1;[HDR];Create;True;0;0;False;0;False;0.4150943,0.2615769,0.1468494,0;0.6792453,0,0,0;True;0;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.ColorNode;737;-16761.11,634.5681;Inherit;False;Constant;_Color15;Color 15;51;1;[HideInInspector];Create;True;0;0;False;0;False;0,0,0,1;0,0,0,0;True;0;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.LerpOp;741;-16765.62,405.1996;Inherit;False;3;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;2;FLOAT;0;False;1;COLOR;0
Node;AmplifyShaderEditor.ColorNode;743;-16045.62,200.0697;Inherit;False;Property;_FEATHERS4COLOR;FEATHERS 4 COLOR;30;1;[HDR];Create;True;0;0;False;0;False;0.8113208,0.2104842,0.2104842,0;0.7735849,0.492613,0.492613,0;True;0;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.FunctionNode;740;-16516.56,563.9022;Inherit;True;Color Mask;-1;;180;eec747d987850564c95bde0e5a6d1867;0;4;1;FLOAT3;0,0,0;False;3;FLOAT3;0,0,0;False;4;FLOAT;0;False;5;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.ColorNode;744;-16141.55,635.4514;Inherit;False;Constant;_Color22;Color 22;51;1;[HideInInspector];Create;True;0;0;False;0;False;1,1,0,1;0,0,0,0;True;0;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;742;-16333.62,181.1996;Inherit;False;2;2;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.ColorNode;745;-15378.99,631.0828;Inherit;False;Constant;_Color38;Color 38;51;1;[HideInInspector];Create;True;0;0;False;0;False;0.4980392,0,0,1;0,0,0,0;True;0;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;747;-15757.62,181.1996;Inherit;False;2;2;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.LerpOp;746;-16141.62,389.1996;Inherit;False;3;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;2;FLOAT;0;False;1;COLOR;0
Node;AmplifyShaderEditor.ColorNode;749;-15285.23,189.7469;Inherit;False;Property;_FEATHERS3COLOR;FEATHERS 3 COLOR;29;1;[HDR];Create;True;0;0;False;0;False;0.509434,0.25712,0.25712,0;0,0.1793142,0.7264151,0;True;0;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.FunctionNode;748;-15867.92,585.827;Inherit;True;Color Mask;-1;;188;eec747d987850564c95bde0e5a6d1867;0;4;1;FLOAT3;0,0,0;False;3;FLOAT3;0,0,0;False;4;FLOAT;0;False;5;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.LerpOp;752;-15574.35,387.4535;Inherit;False;3;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;2;FLOAT;0;False;1;COLOR;0
Node;AmplifyShaderEditor.ColorNode;753;-14780.25,640.8616;Inherit;False;Constant;_Color39;Color 39;51;1;[HideInInspector];Create;True;0;0;False;0;False;1,0.4980392,0,1;0,0,0,0;True;0;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.ColorNode;754;-14693.24,189.7469;Inherit;False;Property;_FEATHERS2COLOR;FEATHERS 2 COLOR;28;1;[HDR];Create;True;0;0;False;0;False;0.509434,0.4260285,0.1802243,0;0.6792453,0,0,0;True;0;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;751;-15045.23,173.7469;Inherit;False;2;2;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.FunctionNode;750;-15112.63,561.9422;Inherit;True;Color Mask;-1;;176;eec747d987850564c95bde0e5a6d1867;0;4;1;FLOAT3;0,0,0;False;3;FLOAT3;0,0,0;False;4;FLOAT;0.1;False;5;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;760;-14437.23,173.7469;Inherit;False;2;2;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.LerpOp;758;-14870.98,389.016;Inherit;False;3;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;2;FLOAT;0;False;1;COLOR;0
Node;AmplifyShaderEditor.CommentaryNode;756;-12815.87,123.182;Inherit;False;2359.399;695.7338;Comment;15;785;780;779;777;776;774;773;772;771;770;769;768;766;765;762;WOOD COLORS;0.4690726,0.7830189,0.47128,1;0;0
Node;AmplifyShaderEditor.ColorNode;759;-14174.23,198.7469;Inherit;False;Property;_FEATHERS1COLOR;FEATHERS 1 COLOR;27;1;[HDR];Create;True;0;0;False;0;False;0.3301887,0.1241556,0.04516733,0;0.7735849,0.492613,0.492613,0;True;0;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.FunctionNode;755;-14535.3,568.5594;Inherit;True;Color Mask;-1;;181;eec747d987850564c95bde0e5a6d1867;0;4;1;FLOAT3;0,0,0;False;3;FLOAT3;0,0,0;False;4;FLOAT;0.1;False;5;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.ColorNode;757;-14208.83,616.2229;Inherit;False;Constant;_Color40;Color 40;51;1;[HideInInspector];Create;True;0;0;False;0;False;1,0,0,1;0,0,0,0;True;0;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.ColorNode;765;-12304.31,190.7249;Inherit;False;Property;_WOOD3COLOR;WOOD 3 COLOR;17;1;[HDR];Create;True;0;0;False;0;False;0.1037736,0.07509367,0.04650232,0;0.9056604,0.6815338,0.4229263,0;True;0;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.ColorNode;762;-12503.72,622.7976;Inherit;False;Constant;_Color21;Color 21;51;1;[HideInInspector];Create;True;0;0;False;0;False;0,0,1,0;0,0,0,0;True;0;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;764;-13861.23,173.7469;Inherit;False;2;2;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.FunctionNode;763;-13943.64,562.6443;Inherit;True;Color Mask;-1;;187;eec747d987850564c95bde0e5a6d1867;0;4;1;FLOAT3;0,0,0;False;3;FLOAT3;0,0,0;False;4;FLOAT;0;False;5;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.LerpOp;761;-14243.49,390.4784;Inherit;False;3;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;2;FLOAT;0;False;1;COLOR;0
Node;AmplifyShaderEditor.LerpOp;767;-13670.97,371.2699;Inherit;False;3;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;2;FLOAT;0;False;1;COLOR;0
Node;AmplifyShaderEditor.ColorNode;766;-11676.17,188.4364;Inherit;False;Property;_WOOD2COLOR;WOOD 2 COLOR;16;1;[HDR];Create;True;0;0;False;0;False;0.1320755,0.06452555,0.05420079,0;1,0,0,0;True;0;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;768;-12013.51,173.182;Inherit;False;2;2;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.ColorNode;769;-11840.96,591.8792;Inherit;False;Constant;_Color9;Color 9;51;1;[HideInInspector];Create;True;0;0;False;0;False;0,1,1,1;0,0,0,0;True;0;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.FunctionNode;770;-12203.74,559.1131;Inherit;True;Color Mask;-1;;175;eec747d987850564c95bde0e5a6d1867;0;4;1;FLOAT3;0,0,0;False;3;FLOAT3;0,0,0;False;4;FLOAT;0;False;5;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.CommentaryNode;775;-10308.57,103.0511;Inherit;False;2342.301;700.673;Comment;15;801;795;794;793;792;791;790;789;788;786;784;783;782;781;778;LEATHER COLORS;0.7735849,0.5371538,0.1788003,1;0;0
Node;AmplifyShaderEditor.FunctionNode;776;-11570.05,562.9573;Inherit;True;Color Mask;-1;;184;eec747d987850564c95bde0e5a6d1867;0;4;1;FLOAT3;0,0,0;False;3;FLOAT3;0,0,0;False;4;FLOAT;0;False;5;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.LerpOp;772;-11837.69,393.5663;Inherit;False;3;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;2;FLOAT;0;False;1;COLOR;0
Node;AmplifyShaderEditor.ColorNode;771;-11242.23,610.1169;Inherit;False;Constant;_Color10;Color 10;51;1;[HideInInspector];Create;True;0;0;False;0;False;0,1,0,1;0,0,0,0;True;0;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;774;-11400.65,175.5609;Inherit;False;2;2;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.ColorNode;773;-11095.51,197.5897;Inherit;False;Property;_WOOD1COLOR;WOOD 1 COLOR;15;1;[HDR];Create;True;0;0;False;0;False;0.1981132,0.08345769,0.06261124,0;0,0.1142961,0.1698113,0;True;0;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.ColorNode;778;-9795.144,180.4691;Inherit;False;Property;_LEATHER3COLOR;LEATHER 3 COLOR;20;1;[HDR];Create;True;0;0;False;0;False;0.1320755,0.03139969,0.02180491,1;0.1698113,0.04637412,0.02963688,1;True;0;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.LerpOp;779;-11217.24,379.0345;Inherit;False;3;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;2;FLOAT;0;False;1;COLOR;0
Node;AmplifyShaderEditor.ColorNode;781;-9876.713,637.7366;Inherit;False;Constant;_Color23;Color 23;51;1;[HideInInspector];Create;True;0;0;False;0;False;1,0.4980392,1,1;0,0,0,0;True;0;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;780;-10823.83,180.6229;Inherit;False;2;2;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.FunctionNode;777;-10972.32,563.1951;Inherit;True;Color Mask;-1;;185;eec747d987850564c95bde0e5a6d1867;0;4;1;FLOAT3;0,0,0;False;3;FLOAT3;0,0,0;False;4;FLOAT;0;False;5;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.ColorNode;783;-9203.768,186.2713;Inherit;False;Property;_LEATHER2COLOR;LEATHER 2 COLOR;19;1;[HDR];Create;True;0;0;False;0;False;0.06603771,0.03523636,0.03146137,1;0.4245283,0.190437,0.09011215,1;True;0;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.ColorNode;782;-9266.412,619.0491;Inherit;False;Constant;_Color31;Color 31;51;1;[HideInInspector];Create;True;0;0;False;0;False;1,0,1,1;0,0,0,0;True;0;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;784;-9528.563,158.3075;Inherit;False;2;2;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.LerpOp;785;-10640.47,388.3495;Inherit;False;3;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;2;FLOAT;0;False;1;COLOR;0
Node;AmplifyShaderEditor.FunctionNode;786;-9604.023,559.1605;Inherit;True;Color Mask;-1;;182;eec747d987850564c95bde0e5a6d1867;0;4;1;FLOAT3;0,0,0;False;3;FLOAT3;0,0,0;False;4;FLOAT;0.1;False;5;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.FunctionNode;790;-9004.503,555.2908;Inherit;True;Color Mask;-1;;191;eec747d987850564c95bde0e5a6d1867;0;4;1;FLOAT3;0,0,0;False;3;FLOAT3;0,0,0;False;4;FLOAT;0;False;5;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.CommentaryNode;787;-7754.735,102.2855;Inherit;False;3503.256;733.6797;Comment;20;821;818;816;814;813;812;811;810;808;807;806;805;804;803;802;800;799;798;797;796;METAL COLORS;0.259434,0.8569208,1,1;0;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;792;-8910.451,155.43;Inherit;False;2;2;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.ColorNode;789;-8617.618,617.2185;Inherit;False;Constant;_Color41;Color 41;51;1;[HideInInspector];Create;True;0;0;False;0;False;1,1,0.4980392,1;0,0,0,0;True;0;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.LerpOp;788;-9347.497,373.4349;Inherit;False;3;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;2;FLOAT;0;False;1;COLOR;0
Node;AmplifyShaderEditor.ColorNode;791;-8613.768,179.2713;Inherit;False;Property;_LEATHER1COLOR;LEATHER 1 COLOR;18;1;[HDR];Create;True;0;0;False;0;False;0.2924528,0.1296404,0.09242612,1;0.4811321,0.2041155,0.08851016,1;True;0;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.ColorNode;796;-7186.3,194.3319;Inherit;False;Property;_METAL4COLOR;METAL 4 COLOR;13;1;[HDR];Create;True;0;0;False;0;False;0.8791043,0.8044721,0.9422547,0;0.9528302,0.9528302,0.9528302,0;True;0;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;793;-8333.638,160.492;Inherit;False;2;2;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.LerpOp;794;-8727.046,371.1292;Inherit;False;3;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;2;FLOAT;0;False;1;COLOR;0
Node;AmplifyShaderEditor.ColorNode;797;-7332.446,653.6995;Inherit;False;Constant;_Color42;Color 42;51;1;[HideInInspector];Create;True;0;0;False;0;False;0.4980392,0.4980392,1,1;0,0,0,0;True;0;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.FunctionNode;795;-8371.881,557.5023;Inherit;True;Color Mask;-1;;189;eec747d987850564c95bde0e5a6d1867;0;4;1;FLOAT3;0,0,0;False;3;FLOAT3;0,0,0;False;4;FLOAT;0.1;False;5;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;798;-6878.193,170.3597;Inherit;False;2;2;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.ColorNode;799;-6661.072,644.3533;Inherit;False;Constant;_Color43;Color 43;51;1;[HideInInspector];Create;True;0;0;False;0;False;0,0.4980392,0.4980392,1;0,0,0,0;True;0;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.LerpOp;801;-8150.274,368.2181;Inherit;False;3;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;2;FLOAT;0;False;1;COLOR;0
Node;AmplifyShaderEditor.ColorNode;800;-6541.527,181.1996;Inherit;False;Property;_METAL3COLOR;METAL 3 COLOR;9;1;[HDR];Create;True;0;0;False;0;False;0.597023,0.6237553,0.7395956,0;0.9528302,0.9528302,0.9528302,0;True;0;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.FunctionNode;802;-7107.291,556.6673;Inherit;True;Color Mask;-1;;194;eec747d987850564c95bde0e5a6d1867;0;4;1;FLOAT3;0,0,0;False;3;FLOAT3;0,0,0;False;4;FLOAT;0.1;False;5;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.CommentaryNode;24;-1812.858,-1400.5;Inherit;False;1262.249;589.4722;;10;16;18;26;25;17;9;10;290;293;294;COAT OF ARMS;1,0,0.7651567,1;0;0
Node;AmplifyShaderEditor.FunctionNode;807;-6426.507,554.9715;Inherit;True;Color Mask;-1;;196;eec747d987850564c95bde0e5a6d1867;0;4;1;FLOAT3;0,0,0;False;3;FLOAT3;0,0,0;False;4;FLOAT;0.1;False;5;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.LerpOp;804;-6710.174,367.368;Inherit;False;3;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;2;FLOAT;0;False;1;COLOR;0
Node;AmplifyShaderEditor.ColorNode;803;-5867.646,182.1424;Inherit;False;Property;_METAL2COLOR;METAL 2 COLOR;5;1;[HDR];Create;True;0;0;False;0;False;1.678431,1.003922,0.1176471,0;0.3301887,0.3301887,0.3301887,0;True;0;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;805;-6221.528,165.1996;Inherit;False;2;2;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.ColorNode;806;-6024.123,641.906;Inherit;False;Constant;_Color44;Color 44;51;1;[HideInInspector];Create;True;0;0;False;0;False;0,0,0.4980392,1;0,0,0,0;True;0;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.LerpOp;810;-6045.527,373.1996;Inherit;False;3;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;2;FLOAT;0;False;1;COLOR;0
Node;AmplifyShaderEditor.ColorNode;808;-5324.733,652.864;Inherit;False;Constant;_Color37;Color 37;51;1;[HideInInspector];Create;True;0;0;False;0;False;0.4980392,0,0.4980392,1;0,0,0,0;True;0;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.FunctionNode;813;-5758.907,551.0652;Inherit;True;Color Mask;-1;;192;eec747d987850564c95bde0e5a6d1867;0;4;1;FLOAT3;0,0,0;False;3;FLOAT3;0,0,0;False;4;FLOAT;0.1;False;5;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.ColorNode;812;-5261.947,181.0785;Inherit;False;Property;_METAL1COLOR;METAL 1 COLOR;1;1;[HDR];Create;True;0;0;False;0;False;0.7261481,0.7735849,0.7528313,0;2,0.682353,0.1960784,0;True;0;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;811;-5613.526,165.1996;Inherit;False;2;2;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.SamplerNode;10;-1769.44,-1325.746;Inherit;True;Property;_COATOFARMSMASK;COAT OF ARMS MASK;2;1;[NoScaleOffset];Create;True;0;0;False;0;False;-1;None;None;True;1;False;black;Auto;False;Object;-1;Auto;Texture2D;8;0;SAMPLER2D;;False;1;FLOAT2;0,0;False;2;FLOAT;0;False;3;FLOAT2;0,0;False;4;FLOAT2;0,0;False;5;FLOAT;1;False;6;FLOAT;0;False;7;SAMPLERSTATE;;False;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.CommentaryNode;809;-3266.14,61.07749;Inherit;False;2305.296;707.5152;Comment;15;832;831;830;829;828;827;826;825;824;823;822;820;819;817;815;GEMS COLORS;1,1,1,1;0;0
Node;AmplifyShaderEditor.OneMinusNode;9;-1435.856,-1221.265;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.FunctionNode;816;-5124.448,547.888;Inherit;True;Color Mask;-1;;193;eec747d987850564c95bde0e5a6d1867;0;4;1;FLOAT3;0,0,0;False;3;FLOAT3;0,0,0;False;4;FLOAT;0.1;False;5;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.ColorNode;815;-3163.023,558.6448;Inherit;False;Constant;_Color46;Color 46;51;1;[HideInInspector];Create;True;0;0;False;0;False;0.4980392,1,1,1;0,0,0,0;True;0;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.LerpOp;814;-5425.291,372.2596;Inherit;False;3;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;2;FLOAT;0;False;1;COLOR;0
Node;AmplifyShaderEditor.ColorNode;817;-3048.401,177.1615;Inherit;False;Property;_GEMS3COLOR;GEMS 3 COLOR;26;1;[HDR];Create;True;0;0;False;0;False;0,0.4716981,0.1359325,0;0.8490566,0.5037117,0.3884835,0;True;0;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;818;-4989.092,165.0492;Inherit;False;2;2;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;820;-2680.687,160.4696;Inherit;False;2;2;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.ColorNode;822;-2419.836,574.9734;Inherit;False;Constant;_Color45;Color 45;51;1;[HideInInspector];Create;True;0;0;False;0;False;0.4980392,1,0.4980392,1;0,0,0,0;True;0;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.OneMinusNode;16;-1249.699,-965.4095;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.ColorNode;26;-1063.837,-1185.19;Inherit;False;Property;_COATOFARMSCOLOR;COAT OF ARMS COLOR;0;1;[HDR];Create;True;0;0;False;0;False;1,0,0,0;1,0,0,0;True;0;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.ColorNode;25;-1067.646,-1364.901;Inherit;False;Constant;_Color4;Color 4;1;0;Create;True;0;0;False;0;False;0,0,0,0;0,0,0,0;True;0;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.LerpOp;821;-4805.727,372.7757;Inherit;False;3;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;2;FLOAT;0;False;1;COLOR;0
Node;AmplifyShaderEditor.Vector2Node;18;-1043.557,-1002.802;Inherit;False;Constant;_Vector0;Vector 0;1;0;Create;True;0;0;False;0;False;1.6,1;0,0;0;3;FLOAT2;0;FLOAT;1;FLOAT;2
Node;AmplifyShaderEditor.FunctionNode;823;-2862.413,544.0218;Inherit;True;Color Mask;-1;;186;eec747d987850564c95bde0e5a6d1867;0;4;1;FLOAT3;0,0,0;False;3;FLOAT3;0,0,0;False;4;FLOAT;0.1;False;5;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.ColorNode;819;-2344.428,180.5321;Inherit;False;Property;_GEMS2COLOR;GEMS 2 COLOR;25;1;[HDR];Create;True;0;0;False;0;False;0,0.3218706,0.5754717,0;0.8301887,0.3185886,0.2780349,0;True;0;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.ColorNode;825;-1672.001,567.4695;Inherit;False;Constant;_Color47;Color 47;51;1;[HideInInspector];Create;True;0;0;False;0;False;0.4980392,0,1,1;0,0,0,0;True;0;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;827;-2000.743,160.3109;Inherit;False;2;2;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.CommentaryNode;360;-2384.559,956.9141;Inherit;False;2541.61;1272.682;Comment;32;379;662;663;661;686;559;560;390;683;687;688;684;685;374;371;370;369;367;368;365;364;366;362;361;363;689;690;695;697;699;700;701;TOON;0.990566,0.1822268,0.8019541,1;0;0
Node;AmplifyShaderEditor.LerpOp;824;-2583.34,345.9955;Inherit;False;3;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;2;FLOAT;0;False;1;COLOR;0
Node;AmplifyShaderEditor.FunctionNode;828;-2143.468,551.3631;Inherit;True;Color Mask;-1;;190;eec747d987850564c95bde0e5a6d1867;0;4;1;FLOAT3;0,0,0;False;3;FLOAT3;0,0,0;False;4;FLOAT;0.1;False;5;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.WireNode;294;-644.1989,-930.3562;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.ColorNode;826;-1621.909,187.0326;Inherit;False;Property;_GEMS1COLOR;GEMS 1 COLOR;24;1;[HDR];Create;True;0;0;False;0;False;1,0,0,0;0.9056604,0.8159487,0.8159487,0;True;0;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.FunctionNode;17;-814.7589,-1227.691;Inherit;False;Replace Color;-1;;170;896dccb3016c847439def376a728b869;1,12,0;5;1;COLOR;0,0,0,0;False;2;COLOR;0,0,0,0;False;3;COLOR;0,0,0,0;False;4;FLOAT;0;False;5;FLOAT;0;False;1;COLOR;0
Node;AmplifyShaderEditor.WireNode;293;-633.4137,-898.618;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;363;-2264.815,1559.836;Inherit;False;Constant;_Float3;Float 3;31;0;Create;True;0;0;False;0;False;1;0;0;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.WireNode;290;-633.3123,-1147.438;Inherit;False;1;0;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.RangedFloatNode;361;-2262.561,1359.56;Inherit;False;Constant;_1;1;32;0;Create;True;0;0;False;0;False;1;0.3;0;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;362;-2290.99,1147.003;Inherit;False;Constant;_2;2;35;0;Create;True;0;0;False;0;False;1;0.3991557;0;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.LerpOp;830;-1850.834,352.2831;Inherit;False;3;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;2;FLOAT;0;False;1;COLOR;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;829;-1292.387,163.2166;Inherit;False;2;2;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.FunctionNode;831;-1407.66,544.9827;Inherit;True;Color Mask;-1;;183;eec747d987850564c95bde0e5a6d1867;0;4;1;FLOAT3;0,0,0;False;3;FLOAT3;0,0,0;False;4;FLOAT;0.1;False;5;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.FresnelNode;369;-1956.678,1036.234;Inherit;False;Standard;WorldNormal;ViewDir;True;True;5;0;FLOAT3;0,0,1;False;4;FLOAT3;0,0,0;False;1;FLOAT;0;False;2;FLOAT;1;False;3;FLOAT;5;False;1;FLOAT;0
Node;AmplifyShaderEditor.FresnelNode;368;-1997.462,1519.467;Inherit;False;Standard;WorldNormal;ViewDir;False;False;5;0;FLOAT3;0,0,1;False;4;FLOAT3;0,0,0;False;1;FLOAT;0;False;2;FLOAT;1;False;3;FLOAT;5;False;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;367;-1763.215,1206.693;Inherit;False;Property;_CEL1SIZE;CEL 1 SIZE;3;0;Create;True;0;0;False;0;False;0.1;0.45;0;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.FresnelNode;365;-1958.192,1272.703;Inherit;False;Standard;WorldNormal;ViewDir;False;False;5;0;FLOAT3;0,0,1;False;4;FLOAT3;0,0,0;False;1;FLOAT;0;False;2;FLOAT;1;False;3;FLOAT;5;False;1;FLOAT;0
Node;AmplifyShaderEditor.WireNode;292;-620.0846,401.4227;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;366;-1764.589,1647.723;Inherit;False;Property;_CEL3SIZE;CEL 3 SIZE;6;0;Create;True;0;0;False;0;False;0.8;0.706;0;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;364;-1744.519,1402.56;Inherit;False;Property;_CEL2SIZE;CEL 2 SIZE;4;0;Create;True;0;0;False;0;False;0.4;0.243;0;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.LerpOp;832;-1151.245,335.702;Inherit;True;3;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;2;FLOAT;0;False;1;COLOR;0
Node;AmplifyShaderEditor.WireNode;291;-617.0846,363.4227;Inherit;False;1;0;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.StepOpNode;371;-1481.249,1063.553;Inherit;False;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.ColorNode;697;-1341.959,1671.755;Inherit;False;Property;_CEL3COLOR;CEL 3 COLOR;14;1;[HDR];Create;True;0;0;False;0;False;1,1,1,0;1,1,1,0;True;0;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.RangedFloatNode;684;-1152.591,1217.51;Inherit;False;Property;_CEL1POWER;CEL 1 POWER;7;0;Create;True;0;0;False;0;False;0.15;0.22;0;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.ColorNode;695;-1338.313,1422.022;Inherit;False;Property;_CEL2COLOR;CEL 2 COLOR;12;1;[HDR];Create;True;0;0;False;0;False;1,1,1,0;1,1,1,0;True;0;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.ColorNode;690;-1382.336,1176.092;Inherit;False;Property;_CEL1COLOR;CEL 1 COLOR;11;1;[HDR];Create;True;0;0;False;0;False;1,1,1,0;1,1,1,0;True;0;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.LerpOp;64;-583.6503,335.5556;Inherit;False;3;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;2;FLOAT;0;False;1;COLOR;0
Node;AmplifyShaderEditor.RangedFloatNode;688;-1102.397,1725.987;Inherit;False;Property;_CEL3POWER;CEL 3 POWER;10;0;Create;True;0;0;False;0;False;0.15;0.247;0;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.StepOpNode;370;-1455.669,1593.09;Inherit;False;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.StepOpNode;374;-1422.798,1338.325;Inherit;False;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;685;-1116.953,1474.047;Inherit;False;Property;_CEL2POWER;CEL 2 POWER;8;0;Create;True;0;0;False;0;False;0.15;0.206;0;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.BlendOpsNode;696;-1115.047,1332.02;Inherit;False;Multiply;True;3;0;FLOAT;0;False;1;COLOR;0,0,0,0;False;2;FLOAT;1;False;1;COLOR;0
Node;AmplifyShaderEditor.WireNode;396;-404.1466,380.3712;Inherit;False;1;0;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.WireNode;394;-405.1466,380.3712;Inherit;False;1;0;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.WireNode;395;-405.1466,381.3712;Inherit;False;1;0;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.TFHCRemapNode;700;-848.9835,1463.261;Inherit;False;5;0;FLOAT;0;False;1;FLOAT;0;False;2;FLOAT;1;False;3;FLOAT;0;False;4;FLOAT;3;False;1;FLOAT;0
Node;AmplifyShaderEditor.BlendOpsNode;689;-1114.33,1075.988;Inherit;False;Multiply;True;3;0;FLOAT;0;False;1;COLOR;0,0,0,0;False;2;FLOAT;1;False;1;COLOR;0
Node;AmplifyShaderEditor.BlendOpsNode;698;-1118.693,1581.753;Inherit;False;Multiply;True;3;0;FLOAT;0;False;1;COLOR;0,0,0,0;False;2;FLOAT;1;False;1;COLOR;0
Node;AmplifyShaderEditor.TFHCRemapNode;699;-868.8555,1208.175;Inherit;False;5;0;FLOAT;0;False;1;FLOAT;0;False;2;FLOAT;1;False;3;FLOAT;0;False;4;FLOAT;3;False;1;FLOAT;0
Node;AmplifyShaderEditor.TFHCRemapNode;701;-822.0625,1730.397;Inherit;False;5;0;FLOAT;0;False;1;FLOAT;0;False;2;FLOAT;1;False;3;FLOAT;0;False;4;FLOAT;3;False;1;FLOAT;0
Node;AmplifyShaderEditor.WireNode;559;-412.1298,1549.633;Inherit;False;1;0;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.BlendOpsNode;683;-760.7569,1072.747;Inherit;False;Multiply;False;3;0;COLOR;0,0,0,0;False;1;FLOAT;0;False;2;FLOAT;1;False;1;COLOR;0
Node;AmplifyShaderEditor.WireNode;390;-409.3758,1069.185;Inherit;False;1;0;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.WireNode;560;-404.1298,1339.633;Inherit;False;1;0;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.BlendOpsNode;687;-694.37,1584.548;Inherit;False;Multiply;False;3;0;COLOR;0,0,0,0;False;1;FLOAT;0;False;2;FLOAT;1;False;1;COLOR;0
Node;AmplifyShaderEditor.BlendOpsNode;686;-704.9259,1334.608;Inherit;False;Multiply;False;3;0;COLOR;0,0,0,0;False;1;FLOAT;0;False;2;FLOAT;1;False;1;COLOR;0
Node;AmplifyShaderEditor.BlendOpsNode;661;-351.4232,1095.355;Inherit;False;Multiply;False;3;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;2;FLOAT;1;False;1;COLOR;0
Node;AmplifyShaderEditor.BlendOpsNode;663;-359.8096,1571.366;Inherit;False;Multiply;True;3;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;2;FLOAT;1;False;1;COLOR;0
Node;AmplifyShaderEditor.BlendOpsNode;662;-345.4095,1304.167;Inherit;False;Multiply;True;3;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;2;FLOAT;1;False;1;COLOR;0
Node;AmplifyShaderEditor.SimpleAddOpNode;379;-48.5603,1282.605;Inherit;False;3;3;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;2;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.SimpleAddOpNode;382;501.8256,334.2374;Inherit;False;2;2;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.StandardSurfaceOutputNode;844;756.0967,327.2389;Float;False;True;-1;2;ASEMaterialInspector;0;0;Unlit;Polytope Studio/ PT_Medieval Weapons Shader Toon;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;Back;0;False;-1;0;False;-1;False;0;False;-1;0;False;-1;False;0;Opaque;0.5;True;True;0;False;Opaque;;Geometry;All;14;all;True;True;True;True;0;False;-1;False;0;False;-1;255;False;-1;255;False;-1;0;False;-1;0;False;-1;0;False;-1;0;False;-1;0;False;-1;0;False;-1;0;False;-1;0;False;-1;False;2;15;10;25;False;0.5;True;0;0;False;-1;0;False;-1;0;0;False;-1;0;False;-1;0;False;-1;0;False;-1;0;False;0;0,0,0,0;VertexOffset;True;False;Cylindrical;False;Relative;0;;-1;-1;-1;-1;0;False;0;0;False;-1;-1;0;False;-1;0;0;0;False;0.1;False;-1;0;False;-1;False;15;0;FLOAT3;0,0,0;False;1;FLOAT3;0,0,0;False;2;FLOAT3;0,0,0;False;3;FLOAT;0;False;4;FLOAT;0;False;6;FLOAT3;0,0,0;False;7;FLOAT3;0,0,0;False;8;FLOAT;0;False;9;FLOAT;0;False;10;FLOAT;0;False;13;FLOAT3;0,0,0;False;11;FLOAT3;0,0,0;False;12;FLOAT3;0,0,0;False;14;FLOAT4;0,0,0,0;False;15;FLOAT3;0,0,0;False;0
WireConnection;721;0;717;0
WireConnection;721;1;716;0
WireConnection;722;1;718;0
WireConnection;722;3;719;0
WireConnection;729;1;721;0
WireConnection;729;2;722;0
WireConnection;725;0;717;0
WireConnection;725;1;723;0
WireConnection;727;1;718;0
WireConnection;727;3;720;0
WireConnection;730;1;718;0
WireConnection;730;3;724;0
WireConnection;731;0;729;0
WireConnection;731;1;725;0
WireConnection;731;2;727;0
WireConnection;732;0;717;0
WireConnection;732;1;726;0
WireConnection;736;1;718;0
WireConnection;736;3;734;0
WireConnection;735;0;717;0
WireConnection;735;1;733;0
WireConnection;738;0;731;0
WireConnection;738;1;732;0
WireConnection;738;2;730;0
WireConnection;741;0;738;0
WireConnection;741;1;735;0
WireConnection;741;2;736;0
WireConnection;740;1;718;0
WireConnection;740;3;737;0
WireConnection;742;0;717;0
WireConnection;742;1;739;0
WireConnection;747;0;717;0
WireConnection;747;1;743;0
WireConnection;746;0;741;0
WireConnection;746;1;742;0
WireConnection;746;2;740;0
WireConnection;748;1;718;0
WireConnection;748;3;744;0
WireConnection;752;0;746;0
WireConnection;752;1;747;0
WireConnection;752;2;748;0
WireConnection;751;0;717;0
WireConnection;751;1;749;0
WireConnection;750;1;718;0
WireConnection;750;3;745;0
WireConnection;760;0;717;0
WireConnection;760;1;754;0
WireConnection;758;0;752;0
WireConnection;758;1;751;0
WireConnection;758;2;750;0
WireConnection;755;1;718;0
WireConnection;755;3;753;0
WireConnection;764;0;717;0
WireConnection;764;1;759;0
WireConnection;763;1;718;0
WireConnection;763;3;757;0
WireConnection;761;0;758;0
WireConnection;761;1;760;0
WireConnection;761;2;755;0
WireConnection;767;0;761;0
WireConnection;767;1;764;0
WireConnection;767;2;763;0
WireConnection;768;0;717;0
WireConnection;768;1;765;0
WireConnection;770;1;718;0
WireConnection;770;3;762;0
WireConnection;776;1;718;0
WireConnection;776;3;769;0
WireConnection;772;0;767;0
WireConnection;772;1;768;0
WireConnection;772;2;770;0
WireConnection;774;0;717;0
WireConnection;774;1;766;0
WireConnection;779;0;772;0
WireConnection;779;1;774;0
WireConnection;779;2;776;0
WireConnection;780;0;717;0
WireConnection;780;1;773;0
WireConnection;777;1;718;0
WireConnection;777;3;771;0
WireConnection;784;0;717;0
WireConnection;784;1;778;0
WireConnection;785;0;779;0
WireConnection;785;1;780;0
WireConnection;785;2;777;0
WireConnection;786;1;718;0
WireConnection;786;3;781;0
WireConnection;790;1;718;0
WireConnection;790;3;782;0
WireConnection;792;0;717;0
WireConnection;792;1;783;0
WireConnection;788;0;785;0
WireConnection;788;1;784;0
WireConnection;788;2;786;0
WireConnection;793;0;717;0
WireConnection;793;1;791;0
WireConnection;794;0;788;0
WireConnection;794;1;792;0
WireConnection;794;2;790;0
WireConnection;795;1;718;0
WireConnection;795;3;789;0
WireConnection;798;0;717;0
WireConnection;798;1;796;0
WireConnection;801;0;794;0
WireConnection;801;1;793;0
WireConnection;801;2;795;0
WireConnection;802;1;718;0
WireConnection;802;3;797;0
WireConnection;807;1;718;0
WireConnection;807;3;799;0
WireConnection;804;0;801;0
WireConnection;804;1;798;0
WireConnection;804;2;802;0
WireConnection;805;0;717;0
WireConnection;805;1;800;0
WireConnection;810;0;804;0
WireConnection;810;1;805;0
WireConnection;810;2;807;0
WireConnection;813;1;718;0
WireConnection;813;3;806;0
WireConnection;811;0;717;0
WireConnection;811;1;803;0
WireConnection;9;0;10;4
WireConnection;816;1;718;0
WireConnection;816;3;808;0
WireConnection;814;0;810;0
WireConnection;814;1;811;0
WireConnection;814;2;813;0
WireConnection;818;0;717;0
WireConnection;818;1;812;0
WireConnection;820;0;717;0
WireConnection;820;1;817;0
WireConnection;16;0;9;0
WireConnection;821;0;814;0
WireConnection;821;1;818;0
WireConnection;821;2;816;0
WireConnection;823;1;718;0
WireConnection;823;3;815;0
WireConnection;827;0;717;0
WireConnection;827;1;819;0
WireConnection;824;0;821;0
WireConnection;824;1;820;0
WireConnection;824;2;823;0
WireConnection;828;1;718;0
WireConnection;828;3;822;0
WireConnection;294;0;16;0
WireConnection;17;1;9;0
WireConnection;17;2;25;0
WireConnection;17;3;26;0
WireConnection;17;4;18;1
WireConnection;17;5;18;2
WireConnection;293;0;294;0
WireConnection;290;0;17;0
WireConnection;830;0;824;0
WireConnection;830;1;827;0
WireConnection;830;2;828;0
WireConnection;829;0;717;0
WireConnection;829;1;826;0
WireConnection;831;1;718;0
WireConnection;831;3;825;0
WireConnection;369;3;362;0
WireConnection;368;3;363;0
WireConnection;365;3;361;0
WireConnection;292;0;293;0
WireConnection;832;0;830;0
WireConnection;832;1;829;0
WireConnection;832;2;831;0
WireConnection;291;0;290;0
WireConnection;371;0;369;0
WireConnection;371;1;367;0
WireConnection;64;0;832;0
WireConnection;64;1;291;0
WireConnection;64;2;292;0
WireConnection;370;0;368;0
WireConnection;370;1;366;0
WireConnection;374;0;365;0
WireConnection;374;1;364;0
WireConnection;696;0;374;0
WireConnection;696;1;695;0
WireConnection;396;0;64;0
WireConnection;394;0;64;0
WireConnection;395;0;64;0
WireConnection;700;0;685;0
WireConnection;689;0;371;0
WireConnection;689;1;690;0
WireConnection;698;0;370;0
WireConnection;698;1;697;0
WireConnection;699;0;684;0
WireConnection;701;0;688;0
WireConnection;559;0;394;0
WireConnection;683;0;689;0
WireConnection;683;1;699;0
WireConnection;390;0;396;0
WireConnection;560;0;395;0
WireConnection;687;0;698;0
WireConnection;687;1;701;0
WireConnection;686;0;696;0
WireConnection;686;1;700;0
WireConnection;661;0;683;0
WireConnection;661;1;390;0
WireConnection;663;0;687;0
WireConnection;663;1;559;0
WireConnection;662;0;686;0
WireConnection;662;1;560;0
WireConnection;379;0;661;0
WireConnection;379;1;662;0
WireConnection;379;2;663;0
WireConnection;382;0;64;0
WireConnection;382;1;379;0
WireConnection;844;2;382;0
ASEEND*/
//CHKSM=E1270DF6B1DFBE80FA9E4B62DF91C22B8F9B5FCA