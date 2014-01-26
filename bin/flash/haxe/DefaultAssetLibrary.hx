package;


import flash.display.Bitmap;
import flash.display.BitmapData;
import flash.display.MovieClip;
import flash.text.Font;
import flash.media.Sound;
import flash.net.URLRequest;
import flash.utils.ByteArray;
import haxe.Unserializer;
import openfl.Assets;

#if (flash || js)
import flash.display.Loader;
import flash.events.Event;
import flash.net.URLLoader;
#end

#if ios
import openfl.utils.SystemPath;
#end


class DefaultAssetLibrary extends AssetLibrary {
	
	
	public static var className (default, null) = new Map <String, Dynamic> ();
	public static var path (default, null) = new Map <String, String> ();
	public static var type (default, null) = new Map <String, AssetType> ();
	
	
	public function new () {
		
		super ();
		
		#if flash
		
		className.set ("gfx/background.png", __ASSET__gfx_background_png);
		type.set ("gfx/background.png", Reflect.field (AssetType, "image".toUpperCase ()));
		className.set ("gfx/debug/console_debug.png", __ASSET__gfx_debug_console_debug_png);
		type.set ("gfx/debug/console_debug.png", Reflect.field (AssetType, "image".toUpperCase ()));
		className.set ("gfx/debug/console_logo.png", __ASSET__gfx_debug_console_logo_png);
		type.set ("gfx/debug/console_logo.png", Reflect.field (AssetType, "image".toUpperCase ()));
		className.set ("gfx/debug/console_output.png", __ASSET__gfx_debug_console_output_png);
		type.set ("gfx/debug/console_output.png", Reflect.field (AssetType, "image".toUpperCase ()));
		className.set ("gfx/debug/console_pause.png", __ASSET__gfx_debug_console_pause_png);
		type.set ("gfx/debug/console_pause.png", Reflect.field (AssetType, "image".toUpperCase ()));
		className.set ("gfx/debug/console_play.png", __ASSET__gfx_debug_console_play_png);
		type.set ("gfx/debug/console_play.png", Reflect.field (AssetType, "image".toUpperCase ()));
		className.set ("gfx/debug/console_step.png", __ASSET__gfx_debug_console_step_png);
		type.set ("gfx/debug/console_step.png", Reflect.field (AssetType, "image".toUpperCase ()));
		className.set ("gfx/flyer.png", __ASSET__gfx_flyer_png);
		type.set ("gfx/flyer.png", Reflect.field (AssetType, "image".toUpperCase ()));
		className.set ("gfx/shifter_spritesheet.png", __ASSET__gfx_shifter_spritesheet_png);
		type.set ("gfx/shifter_spritesheet.png", Reflect.field (AssetType, "image".toUpperCase ()));
		className.set ("gfx/spr_black.png", __ASSET__gfx_spr_black_png);
		type.set ("gfx/spr_black.png", Reflect.field (AssetType, "image".toUpperCase ()));
		className.set ("gfx/terrain_tileset.png", __ASSET__gfx_terrain_tileset_png);
		type.set ("gfx/terrain_tileset.png", Reflect.field (AssetType, "image".toUpperCase ()));
		className.set ("gfx/tileset.png", __ASSET__gfx_tileset_png);
		type.set ("gfx/tileset.png", Reflect.field (AssetType, "image".toUpperCase ()));
		className.set ("gfx/title.png", __ASSET__gfx_title_png);
		type.set ("gfx/title.png", Reflect.field (AssetType, "image".toUpperCase ()));
		className.set ("gfx/walker_spritesheet.png", __ASSET__gfx_walker_spritesheet_png);
		type.set ("gfx/walker_spritesheet.png", Reflect.field (AssetType, "image".toUpperCase ()));
		className.set ("music/bus.mp3", __ASSET__music_bus_mp3);
		type.set ("music/bus.mp3", Reflect.field (AssetType, "music".toUpperCase ()));
		className.set ("music/marbles.mp3", __ASSET__music_marbles_mp3);
		type.set ("music/marbles.mp3", Reflect.field (AssetType, "music".toUpperCase ()));
		className.set ("music/rent.mp3", __ASSET__music_rent_mp3);
		type.set ("music/rent.mp3", Reflect.field (AssetType, "music".toUpperCase ()));
		className.set ("font/04B_03__.ttf", __ASSET__font_04b_03___ttf);
		type.set ("font/04B_03__.ttf", Reflect.field (AssetType, "font".toUpperCase ()));
		className.set ("maps/mainroom.tmx", __ASSET__maps_mainroom_tmx);
		type.set ("maps/mainroom.tmx", Reflect.field (AssetType, "binary".toUpperCase ()));
		className.set ("maps/newroom.tmx", __ASSET__maps_newroom_tmx);
		type.set ("maps/newroom.tmx", Reflect.field (AssetType, "binary".toUpperCase ()));
		
		
		#elseif html5
		
		path.set ("gfx/background.png", "gfx/background.png");
		type.set ("gfx/background.png", Reflect.field (AssetType, "image".toUpperCase ()));
		path.set ("gfx/debug/console_debug.png", "gfx/debug/console_debug.png");
		type.set ("gfx/debug/console_debug.png", Reflect.field (AssetType, "image".toUpperCase ()));
		path.set ("gfx/debug/console_logo.png", "gfx/debug/console_logo.png");
		type.set ("gfx/debug/console_logo.png", Reflect.field (AssetType, "image".toUpperCase ()));
		path.set ("gfx/debug/console_output.png", "gfx/debug/console_output.png");
		type.set ("gfx/debug/console_output.png", Reflect.field (AssetType, "image".toUpperCase ()));
		path.set ("gfx/debug/console_pause.png", "gfx/debug/console_pause.png");
		type.set ("gfx/debug/console_pause.png", Reflect.field (AssetType, "image".toUpperCase ()));
		path.set ("gfx/debug/console_play.png", "gfx/debug/console_play.png");
		type.set ("gfx/debug/console_play.png", Reflect.field (AssetType, "image".toUpperCase ()));
		path.set ("gfx/debug/console_step.png", "gfx/debug/console_step.png");
		type.set ("gfx/debug/console_step.png", Reflect.field (AssetType, "image".toUpperCase ()));
		path.set ("gfx/flyer.png", "gfx/flyer.png");
		type.set ("gfx/flyer.png", Reflect.field (AssetType, "image".toUpperCase ()));
		path.set ("gfx/shifter_spritesheet.png", "gfx/shifter_spritesheet.png");
		type.set ("gfx/shifter_spritesheet.png", Reflect.field (AssetType, "image".toUpperCase ()));
		path.set ("gfx/spr_black.png", "gfx/spr_black.png");
		type.set ("gfx/spr_black.png", Reflect.field (AssetType, "image".toUpperCase ()));
		path.set ("gfx/terrain_tileset.png", "gfx/terrain_tileset.png");
		type.set ("gfx/terrain_tileset.png", Reflect.field (AssetType, "image".toUpperCase ()));
		path.set ("gfx/tileset.png", "gfx/tileset.png");
		type.set ("gfx/tileset.png", Reflect.field (AssetType, "image".toUpperCase ()));
		path.set ("gfx/title.png", "gfx/title.png");
		type.set ("gfx/title.png", Reflect.field (AssetType, "image".toUpperCase ()));
		path.set ("gfx/walker_spritesheet.png", "gfx/walker_spritesheet.png");
		type.set ("gfx/walker_spritesheet.png", Reflect.field (AssetType, "image".toUpperCase ()));
		path.set ("music/bus.mp3", "music/bus.mp3");
		type.set ("music/bus.mp3", Reflect.field (AssetType, "music".toUpperCase ()));
		path.set ("music/marbles.mp3", "music/marbles.mp3");
		type.set ("music/marbles.mp3", Reflect.field (AssetType, "music".toUpperCase ()));
		path.set ("music/rent.mp3", "music/rent.mp3");
		type.set ("music/rent.mp3", Reflect.field (AssetType, "music".toUpperCase ()));
		className.set ("font/04B_03__.ttf", __ASSET__font_04b_03___ttf);
		type.set ("font/04B_03__.ttf", Reflect.field (AssetType, "font".toUpperCase ()));
		path.set ("maps/mainroom.tmx", "maps/mainroom.tmx");
		type.set ("maps/mainroom.tmx", Reflect.field (AssetType, "binary".toUpperCase ()));
		path.set ("maps/newroom.tmx", "maps/newroom.tmx");
		type.set ("maps/newroom.tmx", Reflect.field (AssetType, "binary".toUpperCase ()));
		
		
		#else
		
		try {
			
			#if blackberry
			var bytes = ByteArray.readFile ("app/native/manifest");
			#elseif tizen
			var bytes = ByteArray.readFile ("../res/manifest");
			#elseif emscripten
			var bytes = ByteArray.readFile ("assets/manifest");
			#else
			var bytes = ByteArray.readFile ("manifest");
			#end
			
			if (bytes != null) {
				
				bytes.position = 0;
				
				if (bytes.length > 0) {
					
					var data = bytes.readUTFBytes (bytes.length);
					
					if (data != null && data.length > 0) {
						
						var manifest:Array<AssetData> = Unserializer.run (data);
						
						for (asset in manifest) {
							
							path.set (asset.id, asset.path);
							type.set (asset.id, asset.type);
							
						}
						
					}
					
				}
				
			} else {
				
				trace ("Warning: Could not load asset manifest");
				
			}
			
		} catch (e:Dynamic) {
			
			trace ("Warning: Could not load asset manifest");
			
		}
		
		#end
		
	}
	
	
	public override function exists (id:String, type:AssetType):Bool {
		
		var assetType = DefaultAssetLibrary.type.get (id);
		
		#if pixi
		
		if (assetType == IMAGE) {
			
			return true;
			
		} else {
			
			return false;
			
		}
		
		#end
		
		if (assetType != null) {
			
			if (assetType == type || ((type == SOUND || type == MUSIC) && (assetType == MUSIC || assetType == SOUND))) {
				
				return true;
				
			}
			
			#if flash
			
			if ((assetType == BINARY || assetType == TEXT) && type == BINARY) {
				
				return true;
				
			} else if (path.exists (id)) {
				
				return true;
				
			}
			
			#else
			
			if (type == BINARY || type == null) {
				
				return true;
				
			}
			
			#end
			
		}
		
		return false;
		
	}
	
	
	public override function getBitmapData (id:String):BitmapData {
		
		#if pixi
		
		return BitmapData.fromImage (path.get (id));
		
		#elseif flash
		
		return cast (Type.createInstance (className.get (id), []), BitmapData);
		
		#elseif js
		
		return cast (ApplicationMain.loaders.get (path.get (id)).contentLoaderInfo.content, Bitmap).bitmapData;
		
		#else
		
		return BitmapData.load (path.get (id));
		
		#end
		
	}
	
	
	public override function getBytes (id:String):ByteArray {
		
		#if pixi
		
		return null;
		
		#elseif flash
		
		return cast (Type.createInstance (className.get (id), []), ByteArray);
		
		#elseif js
		
		var bytes:ByteArray = null;
		var data = ApplicationMain.urlLoaders.get (path.get (id)).data;
		
		if (Std.is (data, String)) {
			
			bytes = new ByteArray ();
			bytes.writeUTFBytes (data);
			
		} else if (Std.is (data, ByteArray)) {
			
			bytes = cast data;
			
		} else {
			
			bytes = null;
			
		}

		if (bytes != null) {
			
			bytes.position = 0;
			return bytes;
			
		} else {
			
			return null;
		}
		
		#else
		
		return ByteArray.readFile (path.get (id));
		
		#end
		
	}
	
	
	public override function getFont (id:String):Font {
		
		#if pixi
		
		return null;
		
		#elseif (flash || js)
		
		return cast (Type.createInstance (className.get (id), []), Font);
		
		#else
		
		return new Font (path.get (id));
		
		#end
		
	}
	
	
	public override function getMusic (id:String):Sound {
		
		#if pixi
		
		//return null;		
		
		#elseif flash
		
		return cast (Type.createInstance (className.get (id), []), Sound);
		
		#elseif js
		
		return new Sound (new URLRequest (path.get (id)));
		
		#else
		
		return new Sound (new URLRequest (path.get (id)), null, true);
		
		#end
		
	}
	
	
	public override function getPath (id:String):String {
		
		#if ios
		
		return SystemPath.applicationDirectory + "/assets/" + path.get (id);
		
		#else
		
		return path.get (id);
		
		#end
		
	}
	
	
	public override function getSound (id:String):Sound {
		
		#if pixi
		
		return null;
		
		#elseif flash
		
		return cast (Type.createInstance (className.get (id), []), Sound);
		
		#elseif js
		
		return new Sound (new URLRequest (path.get (id)));
		
		#else
		
		return new Sound (new URLRequest (path.get (id)), null, type.get (id) == MUSIC);
		
		#end
		
	}
	
	
	public override function isLocal (id:String, type:AssetType):Bool {
		
		#if flash
		
		if (type != AssetType.MUSIC && type != AssetType.SOUND) {
			
			return className.exists (id);
			
		}
		
		#end
		
		return true;
		
	}
	
	
	public override function loadBitmapData (id:String, handler:BitmapData -> Void):Void {
		
		#if pixi
		
		handler (getBitmapData (id));
		
		#elseif (flash || js)
		
		if (path.exists (id)) {
			
			var loader = new Loader ();
			loader.contentLoaderInfo.addEventListener (Event.COMPLETE, function (event:Event) {
				
				handler (cast (event.currentTarget.content, Bitmap).bitmapData);
				
			});
			loader.load (new URLRequest (path.get (id)));
			
		} else {
			
			handler (getBitmapData (id));
			
		}
		
		#else
		
		handler (getBitmapData (id));
		
		#end
		
	}
	
	
	public override function loadBytes (id:String, handler:ByteArray -> Void):Void {
		
		#if pixi
		
		handler (getBytes (id));
		
		#elseif (flash || js)
		
		if (path.exists (id)) {
			
			var loader = new URLLoader ();
			loader.addEventListener (Event.COMPLETE, function (event:Event) {
				
				var bytes = new ByteArray ();
				bytes.writeUTFBytes (event.currentTarget.data);
				bytes.position = 0;
				
				handler (bytes);
				
			});
			loader.load (new URLRequest (path.get (id)));
			
		} else {
			
			handler (getBytes (id));
			
		}
		
		#else
		
		handler (getBytes (id));
		
		#end
		
	}
	
	
	public override function loadFont (id:String, handler:Font -> Void):Void {
		
		#if (flash || js)
		
		/*if (path.exists (id)) {
			
			var loader = new Loader ();
			loader.contentLoaderInfo.addEventListener (Event.COMPLETE, function (event) {
				
				handler (cast (event.currentTarget.content, Bitmap).bitmapData);
				
			});
			loader.load (new URLRequest (path.get (id)));
			
		} else {*/
			
			handler (getFont (id));
			
		//}
		
		#else
		
		handler (getFont (id));
		
		#end
		
	}
	
	
	public override function loadMusic (id:String, handler:Sound -> Void):Void {
		
		#if (flash || js)
		
		/*if (path.exists (id)) {
			
			var loader = new Loader ();
			loader.contentLoaderInfo.addEventListener (Event.COMPLETE, function (event) {
				
				handler (cast (event.currentTarget.content, Bitmap).bitmapData);
				
			});
			loader.load (new URLRequest (path.get (id)));
			
		} else {*/
			
			handler (getMusic (id));
			
		//}
		
		#else
		
		handler (getMusic (id));
		
		#end
		
	}
	
	
	public override function loadSound (id:String, handler:Sound -> Void):Void {
		
		#if (flash || js)
		
		/*if (path.exists (id)) {
			
			var loader = new Loader ();
			loader.contentLoaderInfo.addEventListener (Event.COMPLETE, function (event) {
				
				handler (cast (event.currentTarget.content, Bitmap).bitmapData);
				
			});
			loader.load (new URLRequest (path.get (id)));
			
		} else {*/
			
			handler (getSound (id));
			
		//}
		
		#else
		
		handler (getSound (id));
		
		#end
		
	}
	
	
}


#if pixi
#elseif flash

class __ASSET__gfx_background_png extends flash.display.BitmapData { public function new () { super (0, 0); } }
class __ASSET__gfx_debug_console_debug_png extends flash.display.BitmapData { public function new () { super (0, 0); } }
class __ASSET__gfx_debug_console_logo_png extends flash.display.BitmapData { public function new () { super (0, 0); } }
class __ASSET__gfx_debug_console_output_png extends flash.display.BitmapData { public function new () { super (0, 0); } }
class __ASSET__gfx_debug_console_pause_png extends flash.display.BitmapData { public function new () { super (0, 0); } }
class __ASSET__gfx_debug_console_play_png extends flash.display.BitmapData { public function new () { super (0, 0); } }
class __ASSET__gfx_debug_console_step_png extends flash.display.BitmapData { public function new () { super (0, 0); } }
class __ASSET__gfx_flyer_png extends flash.display.BitmapData { public function new () { super (0, 0); } }
class __ASSET__gfx_shifter_spritesheet_png extends flash.display.BitmapData { public function new () { super (0, 0); } }
class __ASSET__gfx_spr_black_png extends flash.display.BitmapData { public function new () { super (0, 0); } }
class __ASSET__gfx_terrain_tileset_png extends flash.display.BitmapData { public function new () { super (0, 0); } }
class __ASSET__gfx_tileset_png extends flash.display.BitmapData { public function new () { super (0, 0); } }
class __ASSET__gfx_title_png extends flash.display.BitmapData { public function new () { super (0, 0); } }
class __ASSET__gfx_walker_spritesheet_png extends flash.display.BitmapData { public function new () { super (0, 0); } }
class __ASSET__music_bus_mp3 extends flash.media.Sound { }
class __ASSET__music_marbles_mp3 extends flash.media.Sound { }
class __ASSET__music_rent_mp3 extends flash.media.Sound { }
class __ASSET__font_04b_03___ttf extends flash.text.Font { }
class __ASSET__maps_mainroom_tmx extends flash.utils.ByteArray { }
class __ASSET__maps_newroom_tmx extends flash.utils.ByteArray { }


#elseif html5


















class __ASSET__font_04b_03___ttf extends flash.text.Font { }




#end