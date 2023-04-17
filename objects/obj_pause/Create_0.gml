enum pause_states {
	CONTINUE, 
	RESTART,
	CONTROLS,
	QUIT
};
enum confirmation_states{
	NONE,
	YES,
	NO,
};

global.pause = false;
pause_state = pause_states.CONTINUE;
confirmation_state = confirmation_states.NONE;
pause_surf = -1;
pause_surf_buffer = -1;


