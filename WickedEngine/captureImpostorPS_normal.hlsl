#include "objectHF.hlsli"

float4 main(PixelInputType input) : SV_Target0
{
	float2 UV = input.tex * g_xMat_texMulAdd.xy + g_xMat_texMulAdd.zw;

	float3 N = normalize(input.nor);
	float3 P = input.pos3D;

	float3x3 TBN = compute_tangent_frame(N, P, UV);

	float3 bumpColor;
	NormalMapping(UV, P, N, TBN, bumpColor);

	return float4(N * 0.5f + 0.5f, 1);
}

