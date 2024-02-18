// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information

/// function load_obj(filepath);
///@param {String} filepath
function load_obj(filepath){
	
	// Open the file
	var obj_file = file_text_open_read(filepath);
	
	// Create the vertex buffer
	var model = vertex_create_buffer();
	vertex_begin(model, Camera.vertex_format)
	
	// Create the lists of position/normal/texture data
	var vertex_x = ds_list_create();
	var vertex_y = ds_list_create();
	var vertex_z = ds_list_create();

	var vertex_nx = ds_list_create();
	var vertex_ny = ds_list_create();
	var vertex_nz = ds_list_create();

	var vertex_u = ds_list_create();
	var vertex_v = ds_list_create();
	
	//Read till end of file
	
	while (not file_text_eof(obj_file)){
		
		//Read current line
		var line = file_text_read_string(obj_file);
		//Move scanner on to new line?
		file_text_readln(obj_file);
		
		var terms = string_split(line, " ");
		
		switch terms[0]{
			
			// Add the vertex x, y an z position to their respective lists
			case "v":
				ds_list_add(vertex_x, real(terms[1]));
				ds_list_add(vertex_y, real(terms[2]));
				ds_list_add(vertex_z, real(terms[3]));
				break;
			
			// Add the vertex x and y texture position (or "u" and "v") to their respective lists
			case "vt":
				ds_list_add(vertex_u, real(terms[1]));
				ds_list_add(vertex_v, real(terms[2]));
				break;
			
			// Add the vertex normal's x, y and z components to their respective lists
			case "vn":
				ds_list_add(vertex_nx, real(terms[1]));
				ds_list_add(vertex_ny, real(terms[2]));
				ds_list_add(vertex_nz, real(terms[3]));
				break;
			
			case "f":
				for (var i = 0; i < 3; i++){
					var face_indices = string_split(terms[i], "/");
					
					// Look up the x, y, z, normal x, y, z and texture x, y in the already-created lists
					var xx = ds_list_find_value(vertex_x, real(face_indices[0]) - 1);
					var yy = ds_list_find_value(vertex_y, real(face_indices[0]) - 1);
					var zz = ds_list_find_value(vertex_z, real(face_indices[0]) - 1);
					var u = ds_list_find_value(vertex_u, real(face_indices[1]) - 1);
					var v = ds_list_find_value(vertex_v, real(face_indices[1]) - 1);
					var nx = ds_list_find_value(vertex_nx, real(face_indices[2]) - 1);
					var ny = ds_list_find_value(vertex_ny, real(face_indices[2]) - 1);
					var nz = ds_list_find_value(vertex_nz, real(face_indices[2]) - 1);
					
					vertex_add_point(model, xx, yy, zz, nx, ny, nz, u, v, c_white, 1);
				}
				break;
			
			default:
				//Handles comments and other unimplemented features.
				break;
		}
	}
	
	// End the vertex buffer, destroy the lists, close the text file and return the vertex buffer

	vertex_end(model);

	ds_list_destroy(vertex_x);
	ds_list_destroy(vertex_y);
	ds_list_destroy(vertex_z);
	ds_list_destroy(vertex_nx);
	ds_list_destroy(vertex_ny);
	ds_list_destroy(vertex_nz);
	ds_list_destroy(vertex_u);
	ds_list_destroy(vertex_z);

	file_text_close(obj_file);
	
	return model;
}