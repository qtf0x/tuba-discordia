/// @description Insert description here
// You can write your code in this editor
event_inherited();


// Move if enemy is in camera

if (instance_exists(obj_camera)){
	
	var x1 = global.cam_x;
	var y1 = global.cam_y;
	var x2 = x1 + global.cam_w;
	var y2 = y1 + global.cam_h;
	
	// If enemy in camera frame
	if( point_in_rectangle( x, y, 
		x1 - sprite_width - camera_offset, y1 - sprite_height - camera_offset, 
		x2 + sprite_width + camera_offset, y2 + sprite_height + camera_offset)) {
		
		// Random number, for movement
		if (flying_timer <= 0){
			hsp = random(spd * 2) - spd;
			vsp = sign(random(spd * 2) - spd) * (spd - abs(hsp));
			flying_timer = flying_timer_limit;
		} else {
			--flying_timer;
		}
		var follow_player = false;
		var _vx = 0;
		var _vy = 0;
		var _hsp = 0;
		var _vsp = 0;
		if (knockback_timer <= 0){
			if (instance_exists(obj_player)){
				if (point_distance(x,y, obj_player.x, obj_player.y) < 500){ // If player nearby
					follow_player = true;
					var _dist_x = obj_player.x - x;
					var _dist_y = obj_player.y - y;
					var len = sqrt(power(_dist_x,2) + power(_dist_y,2));
					_vx = _dist_x / len;
					_vy = _dist_y / len;
				
					for (var i = 0; i < len; i += spd){ // Check if there are no walls inbetween player and enemy
						var _x = x + (_vx * i);
						var _y = y + (_vy * i);
						if (place_meeting(_x, _y, obj_block)){
							follow_player = false;
						}
					}
				}
			}
			if (follow_player){
				_hsp = _vx * spd;
				_vsp = _vy * spd;
			} else {
				_hsp = hsp;
				_vsp = vsp;
			}
		} else {
			_hsp += hsp_knockback;
			_vsp += vsp_knockback;
			
		}
		
		
		
		x += _hsp;
		// Horizontal collision with a block.
		if (place_meeting(x, y, obj_block)) {
			while (place_meeting(x + sign(_hsp), y, obj_block)) {
				x -= sign(_hsp);
			}
		}
		

		
		y += _vsp;
		
		
		// Vertical collision with a block
		if (place_meeting(x, y, obj_block)) {
			while (place_meeting(x, y + sign(_vsp), obj_block)) {
				y -= sign(_vsp);
			}
		}
		
		image_xscale = -sign(_hsp);
	} 
} 