#ifndef SSS_INCLUDED
#define SSS_INCLUDED

void ReverseLight_float(
	float3 NormalVector,
	float NormalInfluence,
	float3 ViewDirection,
	out float3 ReversedLight)
{
	#ifdef SHADERGRAPH_PREVIEW
		float3 MainLightDirection = float3(0.5, 0.5, 0);
	#else
		float3 MainLightDirection = GetMainLight().direction;
	#endif

	ReversedLight = NormalVector * NormalInfluence;
	ReversedLight = normalize(ReversedLight + MainLightDirection) * -1;

	ReversedLight = dot(ViewDirection, ReversedLight);
	ReversedLight = saturate(ReversedLight);
}

#endif