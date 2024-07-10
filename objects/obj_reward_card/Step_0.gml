/// @description Scale logic

if (image_xscale != target_scale || image_yscale != target_scale)
{
	// Checks if scale changes at rate or snaps to size
	if (can_scale_at_rate)
	{
		// Lerps the scale towards the target scale
		image_xscale = lerp(image_xscale, target_scale, scale_rate);
		image_yscale = lerp(image_yscale, target_scale, scale_rate);
	}
	else
	{
		// Hard sets the scale to new target scale
		image_xscale = target_scale;
		image_yscale = target_scale;
	}
}
