// Made with Amplify Shader Editor
// Available at the Unity Asset Store - http://u3d.as/y3X 
Shader "Polytope Studio/ PT_Medieval Weapons Shader PBR"
{
	Properties
	{
		[HDR]_METAL1COLOR("METAL 1 COLOR", Color) = (0.7261481,0.7735849,0.7528313,0)
		_METAL1METALLIC("METAL 1 METALLIC", Range( 0 , 1)) = 0.65
		_METAL1SMOOTHNESS("METAL 1 SMOOTHNESS", Range( 0 , 1)) = 0.7
		[HDR]_METAL2COLOR("METAL 2 COLOR", Color) = (1.678431,1.003922,0.1176471,0)
		_METAL2METALLIC("METAL 2 METALLIC", Range( 0 , 1)) = 0.65
		_METAL2SMOOTHNESS("METAL 2 SMOOTHNESS", Range( 0 , 1)) = 0.7
		[HDR]_METAL3COLOR("METAL 3 COLOR", Color) = (0.597023,0.6237553,0.7395956,0)
		_METAL3METALLIC("METAL 3 METALLIC", Range( 0 , 1)) = 0.65
		_METAL3SMOOTHNESS("METAL 3 SMOOTHNESS", Range( 0 , 1)) = 0.7
		[HDR]_METAL4COLOR("METAL 4 COLOR", Color) = (0.8791043,0.8044721,0.9422547,0)
		_METAL4METALLIC("METAL 4 METALLIC", Range( 0 , 1)) = 0.65
		_METAL4SMOOTNESS("METAL 4 SMOOTNESS", Range( 0 , 1)) = 0.7
		[HDR]_WOOD1COLOR("WOOD 1 COLOR", Color) = (0.1981132,0.08345769,0.06261124,0)
		_WOOD1SMOOTHNESS("WOOD 1 SMOOTHNESS", Range( 0 , 1)) = 0.3
		[HDR]_WOOD2COLOR("WOOD 2 COLOR", Color) = (0.1320755,0.06452555,0.05420079,0)
		_WOOD2SMOOTHNESS("WOOD 2 SMOOTHNESS", Range( 0 , 1)) = 0.3
		[HDR]_WOOD3COLOR("WOOD 3 COLOR", Color) = (0.1037736,0.07509367,0.04650232,0)
		_WOOD3SMOOTHNESS("WOOD 3 SMOOTHNESS", Range( 0 , 1)) = 0.3
		[HDR]_LEATHER1COLOR("LEATHER 1 COLOR", Color) = (0.2924528,0.1296404,0.09242612,1)
		_LEATHER1SMOOTHNESS("LEATHER 1 SMOOTHNESS", Range( 0 , 1)) = 0.3
		[HDR]_LEATHER2COLOR("LEATHER 2 COLOR", Color) = (0.06603771,0.03523636,0.03146137,1)
		_LEATHER2SMOOTHNESS("LEATHER 2 SMOOTHNESS", Range( 0 , 1)) = 0.3
		[HDR]_LEATHER3COLOR("LEATHER 3 COLOR", Color) = (0.1320755,0.03139969,0.02180491,1)
		_LEATHER3SMOOTHNESS("LEATHER 3 SMOOTHNESS", Range( 0 , 1)) = 0.3
		[HDR]_PAINT1COLOR("PAINT 1 COLOR", Color) = (0.5450981,0.6936808,0.6980392,0)
		_PAINT1SMOOTHNESS("PAINT 1 SMOOTHNESS", Range( 0 , 1)) = 1
		[HDR]_PAINT2COLOR("PAINT 2 COLOR", Color) = (0.3649431,0.5566038,0.4386422,0)
		_PAINT2SMOOTHNESS("PAINT 2 SMOOTHNESS", Range( 0 , 1)) = 0
		[HDR]_PAINT3COLOR("PAINT 3 COLOR", Color) = (0.5849056,0.5418971,0.4331613,0)
		_PAINT3SMOOTHNESS("PAINT 3 SMOOTHNESS", Range( 0 , 1)) = 0
		[HDR]_GEMS1COLOR("GEMS 1 COLOR", Color) = (1,0,0,0)
		_GEMS1SMOOTHNESS("GEMS 1 SMOOTHNESS", Range( 0 , 1)) = 0.5
		[HDR]_GEMS2COLOR("GEMS 2 COLOR", Color) = (0,0.3218706,0.5754717,0)
		_GEMS2SMOOTHNESS("GEMS 2 SMOOTHNESS", Range( 0 , 1)) = 0.4
		[HDR]_GEMS3COLOR("GEMS 3 COLOR", Color) = (0,0.4716981,0.1359325,0)
		_GEMS3SMOOTHNESS("GEMS 3 SMOOTHNESS", Range( 0 , 1)) = 0.3
		[HDR]_FEATHERS1COLOR("FEATHERS 1 COLOR", Color) = (0.3301887,0.1241556,0.04516733,0)
		[HDR]_FEATHERS2COLOR("FEATHERS 2 COLOR", Color) = (0.509434,0.4260285,0.1802243,0)
		[HDR]_FEATHERS3COLOR("FEATHERS 3 COLOR", Color) = (0.509434,0.25712,0.25712,0)
		[HDR]_FEATHERS4COLOR("FEATHERS 4 COLOR", Color) = (0.8113208,0.2104842,0.2104842,0)
		[HDR]_FEATHERS5COLOR("FEATHERS 5 COLOR", Color) = (0.4150943,0.2615769,0.1468494,0)
		[HDR]_FEATHERS6COLOR("FEATHERS 6 COLOR", Color) = (0.7924528,0.7444169,0.6391954,0)
		[HDR]_COATOFARMSCOLOR("COAT OF ARMS COLOR", Color) = (1,0,0,0)
		[NoScaleOffset]_COATOFARMSMASK("COAT OF ARMS MASK", 2D) = "black" {}
		_OCCLUSION("OCCLUSION", Range( 0 , 1)) = 0.4139509
		[Toggle]_MetalicOn("Metalic On", Float) = 1
		[Toggle]_SmoothnessOn("Smoothness On", Float) = 1
		[HideInInspector]_TextureSample2("Texture Sample 2", 2D) = "white" {}
		[HideInInspector]_TextureSample9("Texture Sample 9", 2D) = "white" {}
		[HideInInspector] _texcoord( "", 2D ) = "white" {}
		[HideInInspector] _texcoord2( "", 2D ) = "white" {}
		[HideInInspector] __dirty( "", Int ) = 1
	}

	SubShader
	{
		Tags{ "RenderType" = "Opaque"  "Queue" = "Geometry+0" }
		Cull Back
		CGPROGRAM
		#pragma target 3.5
		#pragma surface surf Standard keepalpha addshadow fullforwardshadows exclude_path:deferred 
		struct Input
		{
			float2 uv_texcoord;
			float2 uv2_texcoord2;
		};

		uniform sampler2D _TextureSample2;
		uniform half4 _TextureSample2_ST;
		uniform half4 _PAINT3COLOR;
		uniform sampler2D _TextureSample9;
		uniform half4 _TextureSample9_ST;
		uniform half4 _PAINT2COLOR;
		uniform half4 _PAINT1COLOR;
		uniform half4 _FEATHERS6COLOR;
		uniform half4 _FEATHERS5COLOR;
		uniform half4 _FEATHERS4COLOR;
		uniform half4 _FEATHERS3COLOR;
		uniform half4 _FEATHERS2COLOR;
		uniform half4 _FEATHERS1COLOR;
		uniform half4 _WOOD3COLOR;
		uniform half4 _WOOD2COLOR;
		uniform half4 _WOOD1COLOR;
		uniform half4 _LEATHER3COLOR;
		uniform half4 _LEATHER2COLOR;
		uniform half4 _LEATHER1COLOR;
		uniform half4 _METAL4COLOR;
		uniform half4 _METAL3COLOR;
		uniform half4 _METAL2COLOR;
		uniform half4 _METAL1COLOR;
		uniform half4 _GEMS3COLOR;
		uniform half4 _GEMS2COLOR;
		uniform half4 _GEMS1COLOR;
		uniform half4 _COATOFARMSCOLOR;
		uniform sampler2D _COATOFARMSMASK;
		SamplerState sampler_COATOFARMSMASK;
		uniform half _MetalicOn;
		uniform half _METAL4METALLIC;
		uniform half _METAL3METALLIC;
		uniform half _METAL2METALLIC;
		uniform half _METAL1METALLIC;
		uniform half _SmoothnessOn;
		uniform half _PAINT3SMOOTHNESS;
		uniform half _PAINT2SMOOTHNESS;
		uniform half _PAINT1SMOOTHNESS;
		uniform half _WOOD3SMOOTHNESS;
		uniform half _WOOD2SMOOTHNESS;
		uniform half _WOOD1SMOOTHNESS;
		uniform half _LEATHER3SMOOTHNESS;
		uniform half _LEATHER2SMOOTHNESS;
		uniform half _LEATHER1SMOOTHNESS;
		uniform half _METAL4SMOOTNESS;
		uniform half _METAL3SMOOTHNESS;
		uniform half _METAL2SMOOTHNESS;
		uniform half _METAL1SMOOTHNESS;
		uniform half _GEMS3SMOOTHNESS;
		uniform half _GEMS2SMOOTHNESS;
		uniform half _GEMS1SMOOTHNESS;
		uniform half _OCCLUSION;

		void surf( Input i , inout SurfaceOutputStandard o )
		{
			float2 uv_TextureSample2 = i.uv_texcoord * _TextureSample2_ST.xy + _TextureSample2_ST.zw;
			half4 tex2DNode199 = tex2D( _TextureSample2, uv_TextureSample2 );
			half4 color684 = IsGammaSpace() ? half4(1,0.4980392,0.4980392,1) : half4(1,0.2122307,0.2122307,1);
			float2 uv_TextureSample9 = i.uv_texcoord * _TextureSample9_ST.xy + _TextureSample9_ST.zw;
			half4 tex2DNode647 = tex2D( _TextureSample9, uv_TextureSample9 );
			half temp_output_686_0 = saturate( ( 1.0 - ( ( distance( color684.rgb , tex2DNode647.rgb ) - 0.1 ) / max( 0.0 , 1E-05 ) ) ) );
			half4 lerpResult219 = lerp( float4( 0,0,0,0 ) , ( tex2DNode199 * _PAINT3COLOR ) , temp_output_686_0);
			half4 color687 = IsGammaSpace() ? half4(0.4980392,0.4980392,0.4980392,1) : half4(0.2122307,0.2122307,0.2122307,1);
			half temp_output_683_0 = saturate( ( 1.0 - ( ( distance( color687.rgb , tex2DNode647.rgb ) - 0.1 ) / max( 0.0 , 1E-05 ) ) ) );
			half4 lerpResult214 = lerp( lerpResult219 , ( tex2DNode199 * _PAINT2COLOR ) , temp_output_683_0);
			half4 color688 = IsGammaSpace() ? half4(0.4980392,0.4980392,0,1) : half4(0.2122307,0.2122307,0,1);
			half temp_output_685_0 = saturate( ( 1.0 - ( ( distance( color688.rgb , tex2DNode647.rgb ) - 0.1 ) / max( 0.0 , 1E-05 ) ) ) );
			half4 lerpResult217 = lerp( lerpResult214 , ( tex2DNode199 * _PAINT1COLOR ) , temp_output_685_0);
			half4 color665 = IsGammaSpace() ? half4(0,0.4980392,0,1) : half4(0,0.2122307,0,1);
			half4 lerpResult182 = lerp( lerpResult217 , ( tex2DNode199 * _FEATHERS6COLOR ) , saturate( ( 1.0 - ( ( distance( color665.rgb , tex2DNode647.rgb ) - 0.1 ) / max( 0.0 , 1E-05 ) ) ) ));
			half4 color670 = IsGammaSpace() ? half4(0,0,0,1) : half4(0,0,0,1);
			half4 lerpResult189 = lerp( lerpResult182 , ( tex2DNode199 * _FEATHERS5COLOR ) , saturate( ( 1.0 - ( ( distance( color670.rgb , tex2DNode647.rgb ) - 0.0 ) / max( 0.0 , 1E-05 ) ) ) ));
			half4 color714 = IsGammaSpace() ? half4(1,1,0,1) : half4(1,1,0,1);
			half4 lerpResult184 = lerp( lerpResult189 , ( tex2DNode199 * _FEATHERS4COLOR ) , saturate( ( 1.0 - ( ( distance( color714.rgb , tex2DNode647.rgb ) - 0.0 ) / max( 0.0 , 1E-05 ) ) ) ));
			half4 color719 = IsGammaSpace() ? half4(0.4980392,0,0,1) : half4(0.2122307,0,0,1);
			half4 lerpResult700 = lerp( lerpResult184 , ( tex2DNode199 * _FEATHERS3COLOR ) , saturate( ( 1.0 - ( ( distance( color719.rgb , tex2DNode647.rgb ) - 0.1 ) / max( 0.0 , 1E-05 ) ) ) ));
			half4 color717 = IsGammaSpace() ? half4(1,0.4980392,0,1) : half4(1,0.2122307,0,1);
			half4 lerpResult701 = lerp( lerpResult700 , ( tex2DNode199 * _FEATHERS2COLOR ) , saturate( ( 1.0 - ( ( distance( color717.rgb , tex2DNode647.rgb ) - 0.1 ) / max( 0.0 , 1E-05 ) ) ) ));
			half4 color715 = IsGammaSpace() ? half4(1,0,0,1) : half4(1,0,0,1);
			half4 lerpResult703 = lerp( lerpResult701 , ( tex2DNode199 * _FEATHERS1COLOR ) , saturate( ( 1.0 - ( ( distance( color715.rgb , tex2DNode647.rgb ) - 0.0 ) / max( 0.0 , 1E-05 ) ) ) ));
			half4 color660 = IsGammaSpace() ? half4(0,0,1,0) : half4(0,0,1,0);
			half temp_output_659_0 = saturate( ( 1.0 - ( ( distance( color660.rgb , tex2DNode647.rgb ) - 0.0 ) / max( 0.0 , 1E-05 ) ) ) );
			half4 lerpResult171 = lerp( lerpResult703 , ( tex2DNode199 * _WOOD3COLOR ) , temp_output_659_0);
			half4 color664 = IsGammaSpace() ? half4(0,1,1,1) : half4(0,1,1,1);
			half temp_output_663_0 = saturate( ( 1.0 - ( ( distance( color664.rgb , tex2DNode647.rgb ) - 0.0 ) / max( 0.0 , 1E-05 ) ) ) );
			half4 lerpResult178 = lerp( lerpResult171 , ( tex2DNode199 * _WOOD2COLOR ) , temp_output_663_0);
			half4 color668 = IsGammaSpace() ? half4(0,1,0,1) : half4(0,1,0,1);
			half temp_output_667_0 = saturate( ( 1.0 - ( ( distance( color668.rgb , tex2DNode647.rgb ) - 0.0 ) / max( 0.0 , 1E-05 ) ) ) );
			half4 lerpResult173 = lerp( lerpResult178 , ( tex2DNode199 * _WOOD1COLOR ) , temp_output_667_0);
			half4 color671 = IsGammaSpace() ? half4(1,0.4980392,1,1) : half4(1,0.2122307,1,1);
			half temp_output_672_0 = saturate( ( 1.0 - ( ( distance( color671.rgb , tex2DNode647.rgb ) - 0.1 ) / max( 0.0 , 1E-05 ) ) ) );
			half4 lerpResult160 = lerp( lerpResult173 , ( tex2DNode199 * _LEATHER3COLOR ) , temp_output_672_0);
			half4 color674 = IsGammaSpace() ? half4(1,0,1,1) : half4(1,0,1,1);
			half temp_output_673_0 = saturate( ( 1.0 - ( ( distance( color674.rgb , tex2DNode647.rgb ) - 0.0 ) / max( 0.0 , 1E-05 ) ) ) );
			half4 lerpResult167 = lerp( lerpResult160 , ( tex2DNode199 * _LEATHER2COLOR ) , temp_output_673_0);
			half4 color676 = IsGammaSpace() ? half4(1,1,0.4980392,1) : half4(1,1,0.2122307,1);
			half temp_output_675_0 = saturate( ( 1.0 - ( ( distance( color676.rgb , tex2DNode647.rgb ) - 0.1 ) / max( 0.0 , 1E-05 ) ) ) );
			half4 lerpResult162 = lerp( lerpResult167 , ( tex2DNode199 * _LEATHER1COLOR ) , temp_output_675_0);
			half4 color680 = IsGammaSpace() ? half4(0.4980392,0.4980392,1,1) : half4(0.2122307,0.2122307,1,1);
			half temp_output_679_0 = saturate( ( 1.0 - ( ( distance( color680.rgb , tex2DNode647.rgb ) - 0.1 ) / max( 0.0 , 1E-05 ) ) ) );
			half4 lerpResult727 = lerp( lerpResult162 , ( tex2DNode199 * _METAL4COLOR ) , temp_output_679_0);
			half4 color693 = IsGammaSpace() ? half4(0,0.4980392,0.4980392,1) : half4(0,0.2122307,0.2122307,1);
			half temp_output_694_0 = saturate( ( 1.0 - ( ( distance( color693.rgb , tex2DNode647.rgb ) - 0.1 ) / max( 0.0 , 1E-05 ) ) ) );
			half4 lerpResult118 = lerp( lerpResult727 , ( tex2DNode199 * _METAL3COLOR ) , temp_output_694_0);
			half4 color681 = IsGammaSpace() ? half4(0,0,0.4980392,1) : half4(0,0,0.2122307,1);
			half temp_output_678_0 = saturate( ( 1.0 - ( ( distance( color681.rgb , tex2DNode647.rgb ) - 0.1 ) / max( 0.0 , 1E-05 ) ) ) );
			half4 lerpResult128 = lerp( lerpResult118 , ( tex2DNode199 * _METAL2COLOR ) , temp_output_678_0);
			half4 color682 = IsGammaSpace() ? half4(0.4980392,0,0.4980392,1) : half4(0.2122307,0,0.2122307,1);
			half temp_output_677_0 = saturate( ( 1.0 - ( ( distance( color682.rgb , tex2DNode647.rgb ) - 0.1 ) / max( 0.0 , 1E-05 ) ) ) );
			half4 lerpResult122 = lerp( lerpResult128 , ( tex2DNode199 * _METAL1COLOR ) , temp_output_677_0);
			half4 color689 = IsGammaSpace() ? half4(0.4980392,1,1,1) : half4(0.2122307,1,1,1);
			half temp_output_690_0 = saturate( ( 1.0 - ( ( distance( color689.rgb , tex2DNode647.rgb ) - 0.1 ) / max( 0.0 , 1E-05 ) ) ) );
			half4 lerpResult148 = lerp( lerpResult122 , ( tex2DNode199 * _GEMS3COLOR ) , temp_output_690_0);
			half4 color729 = IsGammaSpace() ? half4(0.4980392,1,0.4980392,1) : half4(0.2122307,1,0.2122307,1);
			half temp_output_728_0 = saturate( ( 1.0 - ( ( distance( color729.rgb , tex2DNode647.rgb ) - 0.1 ) / max( 0.0 , 1E-05 ) ) ) );
			half4 lerpResult151 = lerp( lerpResult148 , ( tex2DNode199 * _GEMS2COLOR ) , temp_output_728_0);
			half4 color661 = IsGammaSpace() ? half4(0.4980392,0,1,1) : half4(0.2122307,0,1,1);
			half temp_output_662_0 = saturate( ( 1.0 - ( ( distance( color661.rgb , tex2DNode647.rgb ) - 0.1 ) / max( 0.0 , 1E-05 ) ) ) );
			half4 lerpResult153 = lerp( lerpResult151 , ( tex2DNode199 * _GEMS1COLOR ) , temp_output_662_0);
			float2 uv2_COATOFARMSMASK10 = i.uv2_texcoord2;
			half temp_output_9_0 = ( 1.0 - tex2D( _COATOFARMSMASK, uv2_COATOFARMSMASK10 ).a );
			half4 temp_cast_44 = (temp_output_9_0).xxxx;
			half4 temp_output_1_0_g153 = temp_cast_44;
			half4 color25 = IsGammaSpace() ? half4(0,0,0,0) : half4(0,0,0,0);
			half4 temp_output_2_0_g153 = color25;
			half temp_output_11_0_g153 = distance( temp_output_1_0_g153 , temp_output_2_0_g153 );
			half2 _Vector0 = half2(1.6,1);
			half4 lerpResult21_g153 = lerp( _COATOFARMSCOLOR , temp_output_1_0_g153 , saturate( ( ( temp_output_11_0_g153 - _Vector0.x ) / max( _Vector0.y , 1E-05 ) ) ));
			half temp_output_16_0 = ( 1.0 - temp_output_9_0 );
			half4 lerpResult64 = lerp( lerpResult153 , lerpResult21_g153 , temp_output_16_0);
			o.Albedo = lerpResult64.rgb;
			half lerpResult723 = lerp( 0.0 , _METAL4METALLIC , temp_output_679_0);
			half lerpResult315 = lerp( lerpResult723 , _METAL3METALLIC , temp_output_694_0);
			half lerpResult319 = lerp( lerpResult315 , _METAL2METALLIC , temp_output_678_0);
			half lerpResult316 = lerp( lerpResult319 , _METAL1METALLIC , temp_output_677_0);
			half lerpResult734 = lerp( lerpResult316 , 0.0 , temp_output_16_0);
			o.Metallic = (( _MetalicOn )?( lerpResult734 ):( 0.0 ));
			half lerpResult342 = lerp( 0.0 , _PAINT3SMOOTHNESS , temp_output_686_0);
			half lerpResult338 = lerp( lerpResult342 , _PAINT2SMOOTHNESS , temp_output_683_0);
			half lerpResult340 = lerp( lerpResult338 , _PAINT1SMOOTHNESS , temp_output_685_0);
			half lerpResult707 = lerp( lerpResult340 , _WOOD3SMOOTHNESS , temp_output_659_0);
			half lerpResult708 = lerp( lerpResult707 , _WOOD2SMOOTHNESS , temp_output_663_0);
			half lerpResult710 = lerp( lerpResult708 , _WOOD1SMOOTHNESS , temp_output_667_0);
			half lerpResult336 = lerp( lerpResult710 , _LEATHER3SMOOTHNESS , temp_output_672_0);
			half lerpResult332 = lerp( lerpResult336 , _LEATHER2SMOOTHNESS , temp_output_673_0);
			half lerpResult334 = lerp( lerpResult332 , _LEATHER1SMOOTHNESS , temp_output_675_0);
			half lerpResult722 = lerp( lerpResult334 , _METAL4SMOOTNESS , temp_output_679_0);
			half lerpResult327 = lerp( lerpResult722 , _METAL3SMOOTHNESS , temp_output_694_0);
			half lerpResult331 = lerp( lerpResult327 , _METAL2SMOOTHNESS , temp_output_678_0);
			half lerpResult328 = lerp( lerpResult331 , _METAL1SMOOTHNESS , temp_output_677_0);
			half lerpResult321 = lerp( lerpResult328 , _GEMS3SMOOTHNESS , temp_output_690_0);
			half lerpResult325 = lerp( lerpResult321 , _GEMS2SMOOTHNESS , temp_output_728_0);
			half lerpResult322 = lerp( lerpResult325 , _GEMS1SMOOTHNESS , temp_output_662_0);
			o.Smoothness = (( _SmoothnessOn )?( lerpResult322 ):( 0.0 ));
			o.Occlusion = (1.0 + (_OCCLUSION - 0.0) * (0.5 - 1.0) / (1.0 - 0.0));
			o.Alpha = 1;
		}

		ENDCG
	}
	Fallback "Diffuse"
	CustomEditor "ASEMaterialInspector"
}
/*ASEBEGIN
Version=18703
0;0;1920;1028;4362.589;215.0796;1.860254;True;True
Node;AmplifyShaderEditor.CommentaryNode;228;-21033.04,106.9413;Inherit;False;2305.307;694.8573;Comment;15;223;219;218;221;214;217;229;230;231;683;685;686;687;688;684;PAINT COLORS;0.05562881,0.9716981,0,1;0;0
Node;AmplifyShaderEditor.CommentaryNode;650;-21721.24,508.767;Inherit;False;336;252;Comment;1;647;MASK TEXTURE;1,1,1,1;0;0
Node;AmplifyShaderEditor.CommentaryNode;200;-21726.61,107.3437;Inherit;False;341.4902;248.4146;Comment;1;199;BASE TEXTURE;1,1,1,1;0;0
Node;AmplifyShaderEditor.ColorNode;684;-20734.43,578.3253;Inherit;False;Constant;_Color23;Color 23;51;1;[HideInInspector];Create;True;0;0;False;0;False;1,0.4980392,0.4980392,1;0,0,0,0;True;0;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.SamplerNode;647;-21691.15,558.071;Inherit;True;Property;_TextureSample9;Texture Sample 9;48;1;[HideInInspector];Create;True;0;0;False;0;False;-1;f88a8d19ac8f5724aa4e309405c476b6;f88a8d19ac8f5724aa4e309405c476b6;True;0;False;white;Auto;False;Object;-1;Auto;Texture2D;8;0;SAMPLER2D;;False;1;FLOAT2;0,0;False;2;FLOAT;0;False;3;FLOAT2;0,0;False;4;FLOAT2;0,0;False;5;FLOAT;1;False;6;FLOAT;0;False;7;SAMPLERSTATE;;False;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.SamplerNode;199;-21693.97,153.2156;Inherit;True;Property;_TextureSample2;Texture Sample 2;47;1;[HideInInspector];Create;True;0;0;False;0;False;-1;7772baab606a3874d99a1e30d4b6b891;7772baab606a3874d99a1e30d4b6b891;True;0;False;white;Auto;False;Object;-1;Auto;Texture2D;8;0;SAMPLER2D;;False;1;FLOAT2;0,0;False;2;FLOAT;0;False;3;FLOAT2;0,0;False;4;FLOAT2;0,0;False;5;FLOAT;1;False;6;FLOAT;0;False;7;SAMPLERSTATE;;False;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.ColorNode;231;-20508.99,168.219;Inherit;False;Property;_PAINT3COLOR;PAINT 3 COLOR;28;1;[HDR];Create;True;0;0;False;0;False;0.5849056,0.5418971,0.4331613,0;0,0.1132075,0.01206957,0;True;0;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.FunctionNode;686;-20479.05,562.692;Inherit;True;Color Mask;-1;;114;eec747d987850564c95bde0e5a6d1867;0;4;1;FLOAT3;0,0,0;False;3;FLOAT3;0,0,0;False;4;FLOAT;0.1;False;5;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.ColorNode;230;-19901.83,180.3345;Inherit;False;Property;_PAINT2COLOR;PAINT 2 COLOR;26;1;[HDR];Create;True;0;0;False;0;False;0.3649431,0.5566038,0.4386422,0;0.2023368,0,0.4339623,0;True;0;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;223;-20284.78,156.9412;Inherit;False;2;2;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.ColorNode;687;-20134.99,575.8022;Inherit;False;Constant;_Color24;Color 24;51;1;[HideInInspector];Create;True;0;0;False;0;False;0.4980392,0.4980392,0.4980392,1;0,0,0,0;True;0;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.ColorNode;229;-19329.25,179.1574;Inherit;False;Property;_PAINT1COLOR;PAINT 1 COLOR;24;1;[HDR];Create;True;0;0;False;0;False;0.5450981,0.6936808,0.6980392,0;0.3773585,0,0.06650025,0;True;0;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.ColorNode;688;-19468.44,572.0334;Inherit;False;Constant;_Color25;Color 25;51;1;[HideInInspector];Create;True;0;0;False;0;False;0.4980392,0.4980392,0,1;0,0,0,0;True;0;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.FunctionNode;683;-19880.84,557.9328;Inherit;True;Color Mask;-1;;115;eec747d987850564c95bde0e5a6d1867;0;4;1;FLOAT3;0,0,0;False;3;FLOAT3;0,0,0;False;4;FLOAT;0.1;False;5;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.CommentaryNode;212;-18328.62,116.0087;Inherit;False;4637.659;753.5428;Comment;30;669;670;666;665;184;189;186;183;226;182;225;188;224;701;700;703;702;698;695;696;697;699;713;714;715;716;719;720;718;717;FEATHERS COLORS;0.735849,0.7152051,0.3158597,1;0;0
Node;AmplifyShaderEditor.LerpOp;219;-20108.96,377.3257;Inherit;False;3;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;2;FLOAT;0;False;1;COLOR;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;221;-19671.91,159.3201;Inherit;False;2;2;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.ColorNode;665;-18004.08,617.7224;Inherit;False;Constant;_Color6;Color 6;51;1;[HideInInspector];Create;True;0;0;False;0;False;0,0.4980392,0,1;0,0,0,0;True;0;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.FunctionNode;685;-19214.12,567.0978;Inherit;True;Color Mask;-1;;116;eec747d987850564c95bde0e5a6d1867;0;4;1;FLOAT3;0,0,0;False;3;FLOAT3;0,0,0;False;4;FLOAT;0.1;False;5;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.LerpOp;214;-19488.5,362.7935;Inherit;False;3;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;2;FLOAT;0;False;1;COLOR;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;218;-19095.11,164.3822;Inherit;False;2;2;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.ColorNode;224;-17824,176;Inherit;False;Property;_FEATHERS6COLOR;FEATHERS 6 COLOR;41;1;[HDR];Create;True;0;0;False;0;False;0.7924528,0.7444169,0.6391954,0;0,0.1793142,0.7264151,0;True;0;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.ColorNode;670;-17403.49,613.3688;Inherit;False;Constant;_Color12;Color 12;51;1;[HideInInspector];Create;True;0;0;False;0;False;0,0,0,1;0,0,0,0;True;0;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.FunctionNode;666;-17752.59,542.4282;Inherit;True;Color Mask;-1;;117;eec747d987850564c95bde0e5a6d1867;0;4;1;FLOAT3;0,0,0;False;3;FLOAT3;0,0,0;False;4;FLOAT;0.1;False;5;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;188;-17584,160;Inherit;False;2;2;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.ColorNode;225;-17232,176;Inherit;False;Property;_FEATHERS5COLOR;FEATHERS 5 COLOR;40;1;[HDR];Create;True;0;0;False;0;False;0.4150943,0.2615769,0.1468494,0;0.6792453,0,0,0;True;0;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.LerpOp;217;-18911.72,372.1087;Inherit;False;3;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;2;FLOAT;0;False;1;COLOR;0
Node;AmplifyShaderEditor.CommentaryNode;344;-20636.31,1664.684;Inherit;False;1768.5;211.4459;Comment;6;342;343;341;338;339;340;GEMS SMOOTHNESS;1,1,1,1;0;0
Node;AmplifyShaderEditor.LerpOp;182;-17408,384;Inherit;False;3;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;2;FLOAT;0;False;1;COLOR;0
Node;AmplifyShaderEditor.FunctionNode;669;-17158.94,542.7025;Inherit;True;Color Mask;-1;;118;eec747d987850564c95bde0e5a6d1867;0;4;1;FLOAT3;0,0,0;False;3;FLOAT3;0,0,0;False;4;FLOAT;0;False;5;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;183;-16976,160;Inherit;False;2;2;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.RangedFloatNode;343;-20586.31,1742.003;Inherit;False;Property;_PAINT3SMOOTHNESS;PAINT 3 SMOOTHNESS;29;0;Create;True;0;0;False;0;False;0;0;0;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.ColorNode;226;-16688,178.8702;Inherit;False;Property;_FEATHERS4COLOR;FEATHERS 4 COLOR;39;1;[HDR];Create;True;0;0;False;0;False;0.8113208,0.2104842,0.2104842,0;0.7735849,0.492613,0.492613,0;True;0;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.ColorNode;714;-16783.93,614.2518;Inherit;False;Constant;_Color31;Color 31;51;1;[HideInInspector];Create;True;0;0;False;0;False;1,1,0,1;0,0,0,0;True;0;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.FunctionNode;713;-16510.3,564.6273;Inherit;True;Color Mask;-1;;119;eec747d987850564c95bde0e5a6d1867;0;4;1;FLOAT3;0,0,0;False;3;FLOAT3;0,0,0;False;4;FLOAT;0;False;5;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.CommentaryNode;208;-13458.26,101.9824;Inherit;False;2359.399;695.7338;Comment;15;175;173;178;172;177;171;209;211;210;660;659;664;667;668;663;WOOD COLORS;0.4690726,0.7830189,0.47128,1;0;0
Node;AmplifyShaderEditor.ColorNode;719;-16021.37,609.8835;Inherit;False;Constant;_Color34;Color 34;51;1;[HideInInspector];Create;True;0;0;False;0;False;0.4980392,0,0,1;0,0,0,0;True;0;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.LerpOp;189;-16784,368;Inherit;False;3;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;2;FLOAT;0;False;1;COLOR;0
Node;AmplifyShaderEditor.ColorNode;695;-15927.61,168.5475;Inherit;False;Property;_FEATHERS3COLOR;FEATHERS 3 COLOR;38;1;[HDR];Create;True;0;0;False;0;False;0.509434,0.25712,0.25712,0;0,0.1793142,0.7264151,0;True;0;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.LerpOp;342;-20287.19,1719.139;Inherit;False;3;0;FLOAT;0;False;1;FLOAT;0;False;2;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;341;-19953.91,1742.184;Inherit;False;Property;_PAINT2SMOOTHNESS;PAINT 2 SMOOTHNESS;27;0;Create;True;0;0;False;0;False;0;0;0;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;186;-16400,160;Inherit;False;2;2;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.ColorNode;660;-13146.11,601.5983;Inherit;False;Constant;_Color10;Color 10;51;1;[HideInInspector];Create;True;0;0;False;0;False;0,0,1,0;0,0,0,0;True;0;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.ColorNode;717;-15422.64,619.6623;Inherit;False;Constant;_Color33;Color 33;51;1;[HideInInspector];Create;True;0;0;False;0;False;1,0.4980392,0,1;0,0,0,0;True;0;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.ColorNode;697;-15335.62,168.5475;Inherit;False;Property;_FEATHERS2COLOR;FEATHERS 2 COLOR;37;1;[HDR];Create;True;0;0;False;0;False;0.509434,0.4260285,0.1802243,0;0.6792453,0,0,0;True;0;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;696;-15687.61,152.5475;Inherit;False;2;2;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.RangedFloatNode;339;-19420.67,1743.94;Inherit;False;Property;_PAINT1SMOOTHNESS;PAINT 1 SMOOTHNESS;25;0;Create;True;0;0;False;0;False;1;1;0;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.LerpOp;184;-16216.73,366.2538;Inherit;False;3;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;2;FLOAT;0;False;1;COLOR;0
Node;AmplifyShaderEditor.LerpOp;338;-19660.9,1720.131;Inherit;False;3;0;FLOAT;0;False;1;FLOAT;0;False;2;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.FunctionNode;720;-15755.01,540.7425;Inherit;True;Color Mask;-1;;121;eec747d987850564c95bde0e5a6d1867;0;4;1;FLOAT3;0,0,0;False;3;FLOAT3;0,0,0;False;4;FLOAT;0.1;False;5;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.CommentaryNode;704;-12902.89,1664.754;Inherit;False;1768.502;211.4459;Comment;6;710;709;708;707;706;705;WOOD SMOOTHNESS;1,1,1,1;0;0
Node;AmplifyShaderEditor.ColorNode;715;-14851.21,595.0234;Inherit;False;Constant;_Color32;Color 32;51;1;[HideInInspector];Create;True;0;0;False;0;False;1,0,0,1;0,0,0,0;True;0;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.LerpOp;340;-19100.86,1721.451;Inherit;False;3;0;FLOAT;0;False;1;FLOAT;0;False;2;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.FunctionNode;659;-12846.13,537.9135;Inherit;True;Color Mask;-1;;138;eec747d987850564c95bde0e5a6d1867;0;4;1;FLOAT3;0,0,0;False;3;FLOAT3;0,0,0;False;4;FLOAT;0;False;5;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.ColorNode;699;-14816.62,177.5475;Inherit;False;Property;_FEATHERS1COLOR;FEATHERS 1 COLOR;36;1;[HDR];Create;True;0;0;False;0;False;0.3301887,0.1241556,0.04516733,0;0.7735849,0.492613,0.492613,0;True;0;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.LerpOp;700;-15513.36,367.8164;Inherit;False;3;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;2;FLOAT;0;False;1;COLOR;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;698;-15079.62,152.5475;Inherit;False;2;2;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.ColorNode;664;-12483.35,570.6799;Inherit;False;Constant;_Color5;Color 5;51;1;[HideInInspector];Create;True;0;0;False;0;False;0,1,1,1;0,0,0,0;True;0;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.FunctionNode;718;-15177.69,547.3597;Inherit;True;Color Mask;-1;;139;eec747d987850564c95bde0e5a6d1867;0;4;1;FLOAT3;0,0,0;False;3;FLOAT3;0,0,0;False;4;FLOAT;0.1;False;5;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;705;-12852.89,1742.072;Inherit;False;Property;_WOOD3SMOOTHNESS;WOOD 3 SMOOTHNESS;17;0;Create;True;0;0;False;0;False;0.3;0.3;0;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.LerpOp;707;-12553.76,1719.208;Inherit;False;3;0;FLOAT;0;False;1;FLOAT;0;False;2;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.ColorNode;668;-11884.62,588.9177;Inherit;False;Constant;_Color11;Color 11;51;1;[HideInInspector];Create;True;0;0;False;0;False;0,1,0,1;0,0,0,0;True;0;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.FunctionNode;663;-12212.44,541.7576;Inherit;True;Color Mask;-1;;140;eec747d987850564c95bde0e5a6d1867;0;4;1;FLOAT3;0,0,0;False;3;FLOAT3;0,0,0;False;4;FLOAT;0;False;5;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.ColorNode;211;-12946.7,169.5253;Inherit;False;Property;_WOOD3COLOR;WOOD 3 COLOR;16;1;[HDR];Create;True;0;0;False;0;False;0.1037736,0.07509367,0.04650232,0;0.9056604,0.6815338,0.4229263,0;True;0;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.LerpOp;701;-14885.87,369.2787;Inherit;False;3;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;2;FLOAT;0;False;1;COLOR;0
Node;AmplifyShaderEditor.FunctionNode;716;-14586.03,541.4448;Inherit;True;Color Mask;-1;;141;eec747d987850564c95bde0e5a6d1867;0;4;1;FLOAT3;0,0,0;False;3;FLOAT3;0,0,0;False;4;FLOAT;0;False;5;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.CommentaryNode;204;-10950.96,81.85144;Inherit;False;2342.301;700.673;Comment;15;203;166;202;160;161;201;164;167;162;676;673;671;674;675;672;LEATHER COLORS;0.7735849,0.5371538,0.1788003,1;0;0
Node;AmplifyShaderEditor.RangedFloatNode;706;-12220.48,1742.253;Inherit;False;Property;_WOOD2SMOOTHNESS;WOOD 2 SMOOTHNESS;15;0;Create;True;0;0;False;0;False;0.3;0.3;0;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;702;-14503.62,152.5475;Inherit;False;2;2;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.CommentaryNode;345;-10556.04,1660.959;Inherit;False;1768.502;211.4459;Comment;6;337;336;335;332;333;334;LEATHER SMOOTHNESS;1,1,1,1;0;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;177;-12655.9,151.9825;Inherit;False;2;2;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.LerpOp;708;-11927.48,1720.2;Inherit;False;3;0;FLOAT;0;False;1;FLOAT;0;False;2;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.FunctionNode;667;-11614.71,541.9955;Inherit;True;Color Mask;-1;;142;eec747d987850564c95bde0e5a6d1867;0;4;1;FLOAT3;0,0,0;False;3;FLOAT3;0,0,0;False;4;FLOAT;0;False;5;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.ColorNode;210;-12318.56,167.2369;Inherit;False;Property;_WOOD2COLOR;WOOD 2 COLOR;14;1;[HDR];Create;True;0;0;False;0;False;0.1320755,0.06452555,0.05420079,0;1,0,0,0;True;0;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.ColorNode;671;-10519.1,616.537;Inherit;False;Constant;_Color13;Color 13;51;1;[HideInInspector];Create;True;0;0;False;0;False;1,0.4980392,1,1;0,0,0,0;True;0;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.LerpOp;703;-14313.36,350.0702;Inherit;False;3;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;2;FLOAT;0;False;1;COLOR;0
Node;AmplifyShaderEditor.RangedFloatNode;709;-11638.2,1737.243;Inherit;False;Property;_WOOD1SMOOTHNESS;WOOD 1 SMOOTHNESS;13;0;Create;True;0;0;False;0;False;0.3;0.3;0;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.FunctionNode;672;-10246.41,537.961;Inherit;True;Color Mask;-1;;143;eec747d987850564c95bde0e5a6d1867;0;4;1;FLOAT3;0,0,0;False;3;FLOAT3;0,0,0;False;4;FLOAT;0.1;False;5;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.ColorNode;209;-11737.9,176.3902;Inherit;False;Property;_WOOD1COLOR;WOOD 1 COLOR;12;1;[HDR];Create;True;0;0;False;0;False;0.1981132,0.08345769,0.06261124,0;0,0.1142961,0.1698113,0;True;0;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.ColorNode;674;-9908.799,597.8498;Inherit;False;Constant;_Color15;Color 15;51;1;[HideInInspector];Create;True;0;0;False;0;False;1,0,1,1;0,0,0,0;True;0;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.RangedFloatNode;337;-10506.04,1738.277;Inherit;False;Property;_LEATHER3SMOOTHNESS;LEATHER 3 SMOOTHNESS;23;0;Create;True;0;0;False;0;False;0.3;0.3;0;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.LerpOp;171;-12480.08,372.3667;Inherit;False;3;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;2;FLOAT;0;False;1;COLOR;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;172;-12043.04,154.3614;Inherit;False;2;2;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.LerpOp;710;-11318.39,1714.754;Inherit;False;3;0;FLOAT;0;False;1;FLOAT;0;False;2;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;175;-11466.22,159.4234;Inherit;False;2;2;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.LerpOp;178;-11859.63,357.8348;Inherit;False;3;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;2;FLOAT;0;False;1;COLOR;0
Node;AmplifyShaderEditor.LerpOp;336;-10206.91,1715.413;Inherit;False;3;0;FLOAT;0;False;1;FLOAT;0;False;2;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.ColorNode;203;-10437.53,159.2697;Inherit;False;Property;_LEATHER3COLOR;LEATHER 3 COLOR;22;1;[HDR];Create;True;0;0;False;0;False;0.1320755,0.03139969,0.02180491,1;0.1698113,0.04637412,0.02963688,1;True;0;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.RangedFloatNode;335;-9873.636,1738.458;Inherit;False;Property;_LEATHER2SMOOTHNESS;LEATHER 2 SMOOTHNESS;21;0;Create;True;0;0;False;0;False;0.3;0.3;0;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.ColorNode;676;-9260.005,596.0192;Inherit;False;Constant;_Color16;Color 16;51;1;[HideInInspector];Create;True;0;0;False;0;False;1,1,0.4980392,1;0,0,0,0;True;0;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.CommentaryNode;194;-8397.117,81.08585;Inherit;False;3503.256;733.6797;Comment;20;677;682;680;679;693;678;694;681;122;119;128;120;195;118;126;196;197;725;727;726;METAL COLORS;0.259434,0.8569208,1,1;0;0
Node;AmplifyShaderEditor.FunctionNode;673;-9646.89,534.0915;Inherit;True;Color Mask;-1;;144;eec747d987850564c95bde0e5a6d1867;0;4;1;FLOAT3;0,0,0;False;3;FLOAT3;0,0,0;False;4;FLOAT;0;False;5;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.ColorNode;202;-9846.154,165.072;Inherit;False;Property;_LEATHER2COLOR;LEATHER 2 COLOR;20;1;[HDR];Create;True;0;0;False;0;False;0.06603771,0.03523636,0.03146137,1;0.4245283,0.190437,0.09011215,1;True;0;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;166;-10170.95,137.1077;Inherit;False;2;2;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.CommentaryNode;346;-8048,1616;Inherit;False;2776.582;252.5363;Comment;8;328;330;331;326;327;329;722;721;METAL SMOOTHNESS;1,1,1,1;0;0
Node;AmplifyShaderEditor.ColorNode;680;-7974.828,632.4999;Inherit;False;Constant;_Color17;Color 17;51;1;[HideInInspector];Create;True;0;0;False;0;False;0.4980392,0.4980392,1,1;0,0,0,0;True;0;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.LerpOp;332;-9580.631,1716.405;Inherit;False;3;0;FLOAT;0;False;1;FLOAT;0;False;2;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.LerpOp;173;-11282.86,367.1498;Inherit;False;3;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;2;FLOAT;0;False;1;COLOR;0
Node;AmplifyShaderEditor.RangedFloatNode;333;-9291.35,1733.448;Inherit;False;Property;_LEATHER1SMOOTHNESS;LEATHER 1 SMOOTHNESS;19;0;Create;True;0;0;False;0;False;0.3;0.3;0;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.FunctionNode;675;-9014.268,536.3026;Inherit;True;Color Mask;-1;;145;eec747d987850564c95bde0e5a6d1867;0;4;1;FLOAT3;0,0,0;False;3;FLOAT3;0,0,0;False;4;FLOAT;0.1;False;5;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.ColorNode;201;-9256.154,158.072;Inherit;False;Property;_LEATHER1COLOR;LEATHER 1 COLOR;18;1;[HDR];Create;True;0;0;False;0;False;0.2924528,0.1296404,0.09242612,1;0.4811321,0.2041155,0.08851016,1;True;0;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;161;-9552.838,134.2304;Inherit;False;2;2;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.LerpOp;334;-8971.539,1710.959;Inherit;False;3;0;FLOAT;0;False;1;FLOAT;0;False;2;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;721;-7727.325,1728.861;Inherit;False;Property;_METAL4SMOOTNESS;METAL 4 SMOOTNESS;11;0;Create;True;0;0;False;0;False;0.7;0.721;0;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.CommentaryNode;354;-8055.428,1093.562;Inherit;False;2789;206.5676;Comment;8;316;319;318;315;314;317;723;724;METAL METALLIC;1,1,1,1;0;0
Node;AmplifyShaderEditor.LerpOp;160;-9989.884,352.2355;Inherit;False;3;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;2;FLOAT;0;False;1;COLOR;0
Node;AmplifyShaderEditor.FunctionNode;679;-7749.673,535.4676;Inherit;True;Color Mask;-1;;146;eec747d987850564c95bde0e5a6d1867;0;4;1;FLOAT3;0,0,0;False;3;FLOAT3;0,0,0;False;4;FLOAT;0.1;False;5;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.ColorNode;693;-7303.453,623.1536;Inherit;False;Constant;_Color7;Color 7;51;1;[HideInInspector];Create;True;0;0;False;0;False;0,0.4980392,0.4980392,1;0,0,0,0;True;0;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.ColorNode;681;-6666.504,620.7065;Inherit;False;Constant;_Color18;Color 18;51;1;[HideInInspector];Create;True;0;0;False;0;False;0,0,0.4980392,1;0,0,0,0;True;0;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.RangedFloatNode;724;-7743.325,1216.861;Inherit;False;Property;_METAL4METALLIC;METAL 4 METALLIC;10;0;Create;True;0;0;False;0;False;0.65;0.903;0;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.LerpOp;167;-9369.433,349.9297;Inherit;False;3;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;2;FLOAT;0;False;1;COLOR;0
Node;AmplifyShaderEditor.ColorNode;725;-7828.683,173.1321;Inherit;False;Property;_METAL4COLOR;METAL 4 COLOR;9;1;[HDR];Create;True;0;0;False;0;False;0.8791043,0.8044721,0.9422547,0;0.9528302,0.9528302,0.9528302,0;True;0;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.LerpOp;722;-7439.325,1712.861;Inherit;False;3;0;FLOAT;0;False;1;FLOAT;0;False;2;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.FunctionNode;694;-7068.888,533.7717;Inherit;True;Color Mask;-1;;147;eec747d987850564c95bde0e5a6d1867;0;4;1;FLOAT3;0,0,0;False;3;FLOAT3;0,0,0;False;4;FLOAT;0.1;False;5;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;164;-8976.024,139.2924;Inherit;False;2;2;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.RangedFloatNode;329;-7056,1712;Inherit;False;Property;_METAL3SMOOTHNESS;METAL 3 SMOOTHNESS;8;0;Create;True;0;0;False;0;False;0.7;0.721;0;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.ColorNode;682;-5967.115,631.6647;Inherit;False;Constant;_Color19;Color 19;51;1;[HideInInspector];Create;True;0;0;False;0;False;0.4980392,0,0.4980392,1;0,0,0,0;True;0;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.RangedFloatNode;326;-6432,1712;Inherit;False;Property;_METAL2SMOOTHNESS;METAL 2 SMOOTHNESS;5;0;Create;True;0;0;False;0;False;0.7;0.7;0;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.ColorNode;197;-7183.908,160;Inherit;False;Property;_METAL3COLOR;METAL 3 COLOR;6;1;[HDR];Create;True;0;0;False;0;False;0.597023,0.6237553,0.7395956,0;0.9528302,0.9528302,0.9528302,0;True;0;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.FunctionNode;678;-6401.288,529.8658;Inherit;True;Color Mask;-1;;148;eec747d987850564c95bde0e5a6d1867;0;4;1;FLOAT3;0,0,0;False;3;FLOAT3;0,0,0;False;4;FLOAT;0.1;False;5;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.LerpOp;327;-6768,1696;Inherit;False;3;0;FLOAT;0;False;1;FLOAT;0;False;2;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.LerpOp;162;-8792.659,347.0186;Inherit;False;3;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;2;FLOAT;0;False;1;COLOR;0
Node;AmplifyShaderEditor.CommentaryNode;24;-1812.858,-1400.5;Inherit;False;1262.249;589.4722;;7;16;18;26;25;17;9;10;COAT OF ARMS;1,0,0.7651567,1;0;0
Node;AmplifyShaderEditor.RangedFloatNode;317;-7072,1200;Inherit;False;Property;_METAL3METALLIC;METAL 3 METALLIC;7;0;Create;True;0;0;False;0;False;0.65;0.903;0;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;726;-7520.575,149.1602;Inherit;False;2;2;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.LerpOp;723;-7439.325,1184.861;Inherit;False;3;0;FLOAT;0;False;1;FLOAT;0;False;2;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.CommentaryNode;190;-3908.523,39.87776;Inherit;False;2305.296;707.5152;Comment;15;156;155;148;154;151;153;191;192;193;690;689;662;661;728;729;GEMS COLORS;1,1,1,1;0;0
Node;AmplifyShaderEditor.LerpOp;331;-6128,1696;Inherit;False;3;0;FLOAT;0;False;1;FLOAT;0;False;2;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.FunctionNode;677;-5766.83,526.6884;Inherit;True;Color Mask;-1;;149;eec747d987850564c95bde0e5a6d1867;0;4;1;FLOAT3;0,0,0;False;3;FLOAT3;0,0,0;False;4;FLOAT;0.1;False;5;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SamplerNode;10;-1769.44,-1325.746;Inherit;True;Property;_COATOFARMSMASK;COAT OF ARMS MASK;43;1;[NoScaleOffset];Create;True;0;0;False;0;False;-1;None;None;True;1;False;black;Auto;False;Object;-1;Auto;Texture2D;8;0;SAMPLER2D;;False;1;FLOAT2;0,0;False;2;FLOAT;0;False;3;FLOAT2;0,0;False;4;FLOAT2;0,0;False;5;FLOAT;1;False;6;FLOAT;0;False;7;SAMPLERSTATE;;False;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.RangedFloatNode;330;-5840,1712;Inherit;False;Property;_METAL1SMOOTHNESS;METAL 1 SMOOTHNESS;2;0;Create;True;0;0;False;0;False;0.7;0.7;0;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.LerpOp;315;-6768,1168;Inherit;False;3;0;FLOAT;0;False;1;FLOAT;0;False;2;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.ColorNode;689;-3805.406,537.4455;Inherit;False;Constant;_Color26;Color 26;51;1;[HideInInspector];Create;True;0;0;False;0;False;0.4980392,1,1,1;0,0,0,0;True;0;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;126;-6863.908,144;Inherit;False;2;2;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.RangedFloatNode;314;-6441.22,1197.316;Inherit;False;Property;_METAL2METALLIC;METAL 2 METALLIC;4;0;Create;True;0;0;False;0;False;0.65;0.65;0;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.ColorNode;196;-6510.026,160.9428;Inherit;False;Property;_METAL2COLOR;METAL 2 COLOR;3;1;[HDR];Create;True;0;0;False;0;False;1.678431,1.003922,0.1176471,0;0.3301887,0.3301887,0.3301887,0;True;0;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.LerpOp;727;-7352.555,346.1685;Inherit;False;3;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;2;FLOAT;0;False;1;COLOR;0
Node;AmplifyShaderEditor.CommentaryNode;347;-3513.938,1597.351;Inherit;False;1768.499;211.4459;Comment;6;324;320;325;322;321;323;GEMS SMOOTHNESS;1,1,1,1;0;0
Node;AmplifyShaderEditor.LerpOp;328;-5520,1680;Inherit;False;3;0;FLOAT;0;False;1;FLOAT;0;False;2;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.ColorNode;195;-5904.329,159.8789;Inherit;False;Property;_METAL1COLOR;METAL 1 COLOR;0;1;[HDR];Create;True;0;0;False;0;False;0.7261481,0.7735849,0.7528313,0;2,0.682353,0.1960784,0;True;0;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.OneMinusNode;9;-1435.856,-1221.265;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.ColorNode;729;-3062.219,553.774;Inherit;False;Constant;_Color35;Color 35;51;1;[HideInInspector];Create;True;0;0;False;0;False;0.4980392,1,0.4980392,1;0,0,0,0;True;0;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.LerpOp;118;-6687.908,352;Inherit;False;3;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;2;FLOAT;0;False;1;COLOR;0
Node;AmplifyShaderEditor.RangedFloatNode;318;-5849.22,1213.316;Inherit;False;Property;_METAL1METALLIC;METAL 1 METALLIC;1;0;Create;True;0;0;False;0;False;0.65;0.65;0;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.LerpOp;319;-6137.22,1165.316;Inherit;False;3;0;FLOAT;0;False;1;FLOAT;0;False;2;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.FunctionNode;690;-3504.796,522.8221;Inherit;True;Color Mask;-1;;150;eec747d987850564c95bde0e5a6d1867;0;4;1;FLOAT3;0,0,0;False;3;FLOAT3;0,0,0;False;4;FLOAT;0.1;False;5;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;120;-6255.908,144;Inherit;False;2;2;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.RangedFloatNode;323;-3465.506,1674.669;Inherit;False;Property;_GEMS3SMOOTHNESS;GEMS 3 SMOOTHNESS;35;0;Create;True;0;0;False;0;False;0.3;0.3;0;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;735;-989.6353,1292.709;Inherit;False;Constant;_Float0;Float 0;50;0;Create;True;0;0;False;0;False;0;0;0;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.ColorNode;26;-1063.837,-1185.19;Inherit;False;Property;_COATOFARMSCOLOR;COAT OF ARMS COLOR;42;1;[HDR];Create;True;0;0;False;0;False;1,0,0,0;1,0.0990566,0.0990566,0;True;0;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.RangedFloatNode;320;-2831.536,1674.85;Inherit;False;Property;_GEMS2SMOOTHNESS;GEMS 2 SMOOTHNESS;33;0;Create;True;0;0;False;0;False;0.4;0.4;0;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.OneMinusNode;16;-1243.999,-947.4095;Inherit;True;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.FunctionNode;728;-2785.851,530.1637;Inherit;True;Color Mask;-1;;151;eec747d987850564c95bde0e5a6d1867;0;4;1;FLOAT3;0,0,0;False;3;FLOAT3;0,0,0;False;4;FLOAT;0.1;False;5;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.LerpOp;316;-5529.22,1165.316;Inherit;False;3;0;FLOAT;0;False;1;FLOAT;0;False;2;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.LerpOp;321;-3164.81,1651.805;Inherit;False;3;0;FLOAT;0;False;1;FLOAT;0;False;2;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.ColorNode;661;-2314.383,546.2698;Inherit;False;Constant;_Color3;Color 3;51;1;[HideInInspector];Create;True;0;0;False;0;False;0.4980392,0,1,1;0,0,0,0;True;0;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.ColorNode;193;-3690.784,155.962;Inherit;False;Property;_GEMS3COLOR;GEMS 3 COLOR;34;1;[HDR];Create;True;0;0;False;0;False;0,0.4716981,0.1359325,0;0.8490566,0.5037117,0.3884835,0;True;0;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.LerpOp;128;-6067.673,351.0603;Inherit;False;3;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;2;FLOAT;0;False;1;COLOR;0
Node;AmplifyShaderEditor.Vector2Node;18;-1043.557,-1002.802;Inherit;False;Constant;_Vector0;Vector 0;1;0;Create;True;0;0;False;0;False;1.6,1;0,0;0;3;FLOAT2;0;FLOAT;1;FLOAT;2
Node;AmplifyShaderEditor.ColorNode;25;-1067.646,-1364.901;Inherit;False;Constant;_Color4;Color 4;1;0;Create;True;0;0;False;0;False;0,0,0,0;0,0,0,0;True;0;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;119;-5631.474,143.8497;Inherit;False;2;2;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.LerpOp;734;-690.5518,1149.833;Inherit;False;3;0;FLOAT;0;False;1;FLOAT;0;False;2;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.ColorNode;192;-2986.811,159.3325;Inherit;False;Property;_GEMS2COLOR;GEMS 2 COLOR;32;1;[HDR];Create;True;0;0;False;0;False;0,0.3218706,0.5754717,0;0.8301887,0.3185886,0.2780349,0;True;0;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.LerpOp;122;-5448.109,351.576;Inherit;False;3;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;2;FLOAT;0;False;1;COLOR;0
Node;AmplifyShaderEditor.RangedFloatNode;324;-2249.249,1669.84;Inherit;False;Property;_GEMS1SMOOTHNESS;GEMS 1 SMOOTHNESS;31;0;Create;True;0;0;False;0;False;0.5;0.5;0;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.FunctionNode;662;-2050.042,523.783;Inherit;True;Color Mask;-1;;152;eec747d987850564c95bde0e5a6d1867;0;4;1;FLOAT3;0,0,0;False;3;FLOAT3;0,0,0;False;4;FLOAT;0.1;False;5;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.FunctionNode;17;-814.7589,-1227.691;Inherit;False;Replace Color;-1;;153;896dccb3016c847439def376a728b869;1,12,0;5;1;COLOR;0,0,0,0;False;2;COLOR;0,0,0,0;False;3;COLOR;0,0,0,0;False;4;FLOAT;0;False;5;FLOAT;0;False;1;COLOR;0
Node;AmplifyShaderEditor.LerpOp;325;-2538.531,1652.797;Inherit;False;3;0;FLOAT;0;False;1;FLOAT;0;False;2;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;156;-3323.069,139.2701;Inherit;False;2;2;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.LerpOp;148;-3225.723,324.7957;Inherit;False;3;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;2;FLOAT;0;False;1;COLOR;0
Node;AmplifyShaderEditor.WireNode;574;-328.0893,-1201.828;Inherit;False;1;0;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.WireNode;576;-386.0649,-898.4222;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.LerpOp;322;-1929.438,1647.351;Inherit;False;3;0;FLOAT;0;False;1;FLOAT;0;False;2;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;155;-2643.126,139.1111;Inherit;False;2;2;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.ToggleSwitchNode;584;754.506,1097.701;Inherit;False;Property;_MetalicOn;Metalic On;45;0;Create;True;0;0;False;0;False;1;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;252;544.83,1759.57;Inherit;False;Property;_OCCLUSION;OCCLUSION;44;0;Create;True;0;0;False;0;False;0.4139509;0;0;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.ColorNode;191;-2264.291,165.833;Inherit;False;Property;_GEMS1COLOR;GEMS 1 COLOR;30;1;[HDR];Create;True;0;0;False;0;False;1,0,0,0;0.9056604,0.8159487,0.8159487,0;True;0;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.ToggleSwitchNode;585;788.8135,1603.558;Inherit;False;Property;_SmoothnessOn;Smoothness On;46;0;Create;True;0;0;False;0;False;1;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.TFHCRemapNode;579;854.0571,1759.464;Inherit;False;5;0;FLOAT;0;False;1;FLOAT;0;False;2;FLOAT;1;False;3;FLOAT;1;False;4;FLOAT;0.5;False;1;FLOAT;0
Node;AmplifyShaderEditor.WireNode;593;958.1449,1102.87;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.LerpOp;151;-2493.217,331.0835;Inherit;False;3;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;2;FLOAT;0;False;1;COLOR;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;154;-1934.769,142.0169;Inherit;False;2;2;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.WireNode;575;-357.1902,-846.472;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.WireNode;573;-296.0682,-1167.712;Inherit;False;1;0;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.WireNode;577;-363.4679,348.5246;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.LerpOp;153;-1793.627,314.5027;Inherit;True;3;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;2;FLOAT;0;False;1;COLOR;0
Node;AmplifyShaderEditor.WireNode;578;-316.0852,310.8136;Inherit;False;1;0;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.WireNode;591;1018.883,1560.628;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.WireNode;592;949.3251,492.3598;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.WireNode;588;1118.005,1754.844;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.WireNode;594;982.54,447.0908;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.LerpOp;64;-240.9823,333.7983;Inherit;True;3;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;2;FLOAT;0;False;1;COLOR;0
Node;AmplifyShaderEditor.WireNode;589;1028.89,508.3939;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.WireNode;580;1125.19,539.5109;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.StandardSurfaceOutputNode;428;1178.721,338.6894;Half;False;True;-1;3;ASEMaterialInspector;0;0;Standard;Polytope Studio/ PT_Medieval Weapons Shader PBR;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;Back;0;False;-1;0;False;-1;False;0;False;-1;0;False;-1;False;0;Opaque;0.5;True;True;0;False;Opaque;;Geometry;ForwardOnly;14;all;True;True;True;True;0;False;-1;False;0;False;-1;255;False;-1;255;False;-1;0;False;-1;0;False;-1;0;False;-1;0;False;-1;0;False;-1;0;False;-1;0;False;-1;0;False;-1;False;2;15;10;25;False;0.5;True;0;0;False;-1;0;False;-1;0;0;False;-1;0;False;-1;0;False;-1;0;False;-1;0;False;13.63;1,0,0,0;VertexScale;False;False;Cylindrical;False;Relative;0;;-1;-1;-1;-1;0;False;0;0;False;-1;-1;0;False;-1;0;0;0;False;0.1;False;-1;0;False;-1;False;16;0;FLOAT3;0,0,0;False;1;FLOAT3;0,0,0;False;2;FLOAT3;0,0,0;False;3;FLOAT;0;False;4;FLOAT;0;False;5;FLOAT;0;False;6;FLOAT3;0,0,0;False;7;FLOAT3;0,0,0;False;8;FLOAT;0;False;9;FLOAT;0;False;10;FLOAT;0;False;13;FLOAT3;0,0,0;False;11;FLOAT3;0,0,0;False;12;FLOAT3;0,0,0;False;14;FLOAT4;0,0,0,0;False;15;FLOAT3;0,0,0;False;0
WireConnection;686;1;647;0
WireConnection;686;3;684;0
WireConnection;223;0;199;0
WireConnection;223;1;231;0
WireConnection;683;1;647;0
WireConnection;683;3;687;0
WireConnection;219;1;223;0
WireConnection;219;2;686;0
WireConnection;221;0;199;0
WireConnection;221;1;230;0
WireConnection;685;1;647;0
WireConnection;685;3;688;0
WireConnection;214;0;219;0
WireConnection;214;1;221;0
WireConnection;214;2;683;0
WireConnection;218;0;199;0
WireConnection;218;1;229;0
WireConnection;666;1;647;0
WireConnection;666;3;665;0
WireConnection;188;0;199;0
WireConnection;188;1;224;0
WireConnection;217;0;214;0
WireConnection;217;1;218;0
WireConnection;217;2;685;0
WireConnection;182;0;217;0
WireConnection;182;1;188;0
WireConnection;182;2;666;0
WireConnection;669;1;647;0
WireConnection;669;3;670;0
WireConnection;183;0;199;0
WireConnection;183;1;225;0
WireConnection;713;1;647;0
WireConnection;713;3;714;0
WireConnection;189;0;182;0
WireConnection;189;1;183;0
WireConnection;189;2;669;0
WireConnection;342;1;343;0
WireConnection;342;2;686;0
WireConnection;186;0;199;0
WireConnection;186;1;226;0
WireConnection;696;0;199;0
WireConnection;696;1;695;0
WireConnection;184;0;189;0
WireConnection;184;1;186;0
WireConnection;184;2;713;0
WireConnection;338;0;342;0
WireConnection;338;1;341;0
WireConnection;338;2;683;0
WireConnection;720;1;647;0
WireConnection;720;3;719;0
WireConnection;340;0;338;0
WireConnection;340;1;339;0
WireConnection;340;2;685;0
WireConnection;659;1;647;0
WireConnection;659;3;660;0
WireConnection;700;0;184;0
WireConnection;700;1;696;0
WireConnection;700;2;720;0
WireConnection;698;0;199;0
WireConnection;698;1;697;0
WireConnection;718;1;647;0
WireConnection;718;3;717;0
WireConnection;707;0;340;0
WireConnection;707;1;705;0
WireConnection;707;2;659;0
WireConnection;663;1;647;0
WireConnection;663;3;664;0
WireConnection;701;0;700;0
WireConnection;701;1;698;0
WireConnection;701;2;718;0
WireConnection;716;1;647;0
WireConnection;716;3;715;0
WireConnection;702;0;199;0
WireConnection;702;1;699;0
WireConnection;177;0;199;0
WireConnection;177;1;211;0
WireConnection;708;0;707;0
WireConnection;708;1;706;0
WireConnection;708;2;663;0
WireConnection;667;1;647;0
WireConnection;667;3;668;0
WireConnection;703;0;701;0
WireConnection;703;1;702;0
WireConnection;703;2;716;0
WireConnection;672;1;647;0
WireConnection;672;3;671;0
WireConnection;171;0;703;0
WireConnection;171;1;177;0
WireConnection;171;2;659;0
WireConnection;172;0;199;0
WireConnection;172;1;210;0
WireConnection;710;0;708;0
WireConnection;710;1;709;0
WireConnection;710;2;667;0
WireConnection;175;0;199;0
WireConnection;175;1;209;0
WireConnection;178;0;171;0
WireConnection;178;1;172;0
WireConnection;178;2;663;0
WireConnection;336;0;710;0
WireConnection;336;1;337;0
WireConnection;336;2;672;0
WireConnection;673;1;647;0
WireConnection;673;3;674;0
WireConnection;166;0;199;0
WireConnection;166;1;203;0
WireConnection;332;0;336;0
WireConnection;332;1;335;0
WireConnection;332;2;673;0
WireConnection;173;0;178;0
WireConnection;173;1;175;0
WireConnection;173;2;667;0
WireConnection;675;1;647;0
WireConnection;675;3;676;0
WireConnection;161;0;199;0
WireConnection;161;1;202;0
WireConnection;334;0;332;0
WireConnection;334;1;333;0
WireConnection;334;2;675;0
WireConnection;160;0;173;0
WireConnection;160;1;166;0
WireConnection;160;2;672;0
WireConnection;679;1;647;0
WireConnection;679;3;680;0
WireConnection;167;0;160;0
WireConnection;167;1;161;0
WireConnection;167;2;673;0
WireConnection;722;0;334;0
WireConnection;722;1;721;0
WireConnection;722;2;679;0
WireConnection;694;1;647;0
WireConnection;694;3;693;0
WireConnection;164;0;199;0
WireConnection;164;1;201;0
WireConnection;678;1;647;0
WireConnection;678;3;681;0
WireConnection;327;0;722;0
WireConnection;327;1;329;0
WireConnection;327;2;694;0
WireConnection;162;0;167;0
WireConnection;162;1;164;0
WireConnection;162;2;675;0
WireConnection;726;0;199;0
WireConnection;726;1;725;0
WireConnection;723;1;724;0
WireConnection;723;2;679;0
WireConnection;331;0;327;0
WireConnection;331;1;326;0
WireConnection;331;2;678;0
WireConnection;677;1;647;0
WireConnection;677;3;682;0
WireConnection;315;0;723;0
WireConnection;315;1;317;0
WireConnection;315;2;694;0
WireConnection;126;0;199;0
WireConnection;126;1;197;0
WireConnection;727;0;162;0
WireConnection;727;1;726;0
WireConnection;727;2;679;0
WireConnection;328;0;331;0
WireConnection;328;1;330;0
WireConnection;328;2;677;0
WireConnection;9;0;10;4
WireConnection;118;0;727;0
WireConnection;118;1;126;0
WireConnection;118;2;694;0
WireConnection;319;0;315;0
WireConnection;319;1;314;0
WireConnection;319;2;678;0
WireConnection;690;1;647;0
WireConnection;690;3;689;0
WireConnection;120;0;199;0
WireConnection;120;1;196;0
WireConnection;16;0;9;0
WireConnection;728;1;647;0
WireConnection;728;3;729;0
WireConnection;316;0;319;0
WireConnection;316;1;318;0
WireConnection;316;2;677;0
WireConnection;321;0;328;0
WireConnection;321;1;323;0
WireConnection;321;2;690;0
WireConnection;128;0;118;0
WireConnection;128;1;120;0
WireConnection;128;2;678;0
WireConnection;119;0;199;0
WireConnection;119;1;195;0
WireConnection;734;0;316;0
WireConnection;734;1;735;0
WireConnection;734;2;16;0
WireConnection;122;0;128;0
WireConnection;122;1;119;0
WireConnection;122;2;677;0
WireConnection;662;1;647;0
WireConnection;662;3;661;0
WireConnection;17;1;9;0
WireConnection;17;2;25;0
WireConnection;17;3;26;0
WireConnection;17;4;18;1
WireConnection;17;5;18;2
WireConnection;325;0;321;0
WireConnection;325;1;320;0
WireConnection;325;2;728;0
WireConnection;156;0;199;0
WireConnection;156;1;193;0
WireConnection;148;0;122;0
WireConnection;148;1;156;0
WireConnection;148;2;690;0
WireConnection;574;0;17;0
WireConnection;576;0;16;0
WireConnection;322;0;325;0
WireConnection;322;1;324;0
WireConnection;322;2;662;0
WireConnection;155;0;199;0
WireConnection;155;1;192;0
WireConnection;584;1;734;0
WireConnection;585;1;322;0
WireConnection;579;0;252;0
WireConnection;593;0;584;0
WireConnection;151;0;148;0
WireConnection;151;1;155;0
WireConnection;151;2;728;0
WireConnection;154;0;199;0
WireConnection;154;1;191;0
WireConnection;575;0;576;0
WireConnection;573;0;574;0
WireConnection;577;0;575;0
WireConnection;153;0;151;0
WireConnection;153;1;154;0
WireConnection;153;2;662;0
WireConnection;578;0;573;0
WireConnection;591;0;585;0
WireConnection;592;0;593;0
WireConnection;588;0;579;0
WireConnection;594;0;592;0
WireConnection;64;0;153;0
WireConnection;64;1;578;0
WireConnection;64;2;577;0
WireConnection;589;0;591;0
WireConnection;580;0;588;0
WireConnection;428;0;64;0
WireConnection;428;3;594;0
WireConnection;428;4;589;0
WireConnection;428;5;580;0
ASEEND*/
//CHKSM=69BB42D9350CAF6276813F0AD8295842950F6EF4