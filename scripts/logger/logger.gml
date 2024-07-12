#macro DEBUG 1

/// @desc Logs a message to the console if debug is enabled
/// @param {string} _msg The message to log
function logger(_msg) {
	gml_pragma("forceinline");
	if (DEBUG) {
		show_debug_message(_msg);
	}
}