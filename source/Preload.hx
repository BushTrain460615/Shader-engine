package;

import lime.app.Application;
#if desktop
import Discord.DiscordClient;
#end
import openfl.display.BitmapData;
import openfl.utils.Assets as OpenFlAssets;
import flixel.ui.FlxBar;
import haxe.Exception;
import flixel.tweens.FlxEase;
import flixel.tweens.FlxTween;
#if desktop
import sys.FileSystem;
import sys.io.File;
#end
import flixel.FlxG;
import flixel.FlxCamera;
import flixel.FlxSprite;
import flixel.addons.transition.FlxTransitionSprite.GraphicTransTileDiamond;
import flixel.addons.transition.FlxTransitionableState;
import flixel.addons.transition.TransitionData;
import flixel.graphics.FlxGraphic;
import flixel.graphics.frames.FlxAtlasFrames;
import flixel.math.FlxPoint;
import flixel.math.FlxRect;
import flixel.util.FlxColor;
import flixel.util.FlxTimer;
import flixel.text.FlxText;
import flixel.input.keyboard.FlxKey;

using StringTools;

class Preload extends MusicBeatState
{
	var toBeDone = 0;
	var done = 0;
	public var fuckingVolume:Float = 1;
	public var useVideo = false;
	public var playingDathing = false;
	public var videoSprite:FlxSprite;
	public var camHUD2:FlxCamera;

	var loaded = false;

	var VideoPlaying = false;

	public static var bitmapData:Map<String, FlxGraphic>;

	var images = [];

	override function create()
	{
		FlxG.mouse.visible = false;

		camHUD2 = new FlxCamera();
		camHUD2.bgColor.alpha = 0;
		FlxG.cameras.add(camHUD2);

		var bg:FlxSprite = new FlxSprite(0, 0).loadGraphic(Paths.image('funkay'));
		add(bg);

		bitmapData = new Map<String, FlxGraphic>();

		#if desktop
		trace("caching images...");

		// TODO: Refactor this to use OpenFlAssets.
		for (i in FileSystem.readDirectory(FileSystem.absolutePath("assets/shared/images/characters")))
		{
			if (!i.endsWith(".png"))
				continue;
			images.push(i);
		}
		
		trace("Finished caching...");

		// TODO: Get the song list from OpenFlAssets.
		#end

		toBeDone = Lambda.count(images);

		var bar = new FlxBar(10, FlxG.height - 50, FlxBarFillDirection.LEFT_TO_RIGHT, FlxG.width, 40, null, "done", 0, toBeDone);
		bar.color = FlxColor.PURPLE;
		add(bar);

		trace('starting caching..');

		#if desktop
		// cache thread
		sys.thread.Thread.create(() ->
		{
			cache();
		});
		#end

		//penis

		super.create();
	}

	function cache()
	{
		#if desktop
		trace("LOADING: " + toBeDone + " OBJECTS.");

		for (i in images)
		{
			var replaced = i.replace(".png", "");

			// var data:BitmapData = BitmapData.fromFile("assets/shared/images/characters/" + i);
			var imagePath = Paths.image('characters/$i', 'shared');
			trace('Caching character graphic $i');
			//var data = OpenFlAssets.getBitmapData(imagePath);
			//var graph = FlxGraphic.fromBitmapData(data);
			//graph.persist = true;
			//bitmapData.set(replaced);
			done++;
		}

		trace("Finished caching...");

		loaded = true;

		trace(OpenFlAssets.cache.hasBitmapData('GF_assets'));
		#end
	}
}