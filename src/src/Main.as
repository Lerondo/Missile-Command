package src
{
	import flash.display.Graphics;
	import flash.display.Sprite;
	import flash.events.Event;
	import flash.events.MouseEvent;
	
	/**
	 * ...
	 * @author Alessandro
	 */
	public class Main extends Sprite 
	{
		private var ghost_turret:TurretHandler;
		private var turrets:Array = [];
		
		private function TurretPH():Sprite 
		{
			var placeholder:Sprite = new Sprite();
			
			// draw the graphics
			var g:Graphics = placeholder.graphics;
			g.beginFill(0xCE7822);
			g.drawCircle(0, 0, 20);
			g.endFill();
			
			placeholder.addEventListener(MouseEvent.MOUSE_OVER, showGhostTurret, false, 0, true);
			placeholder.addEventListener(MouseEvent.MOUSE_OUT, hideGhostTurret, false, 0, true);
			placeholder.addEventListener(MouseEvent.CLICK, addTurret, false, 0, true);
			return placeholder;
		}
		
		public function Main() 
		{
			var placeholder1:Sprite = TurretPH();
			placeholder1.x = 50; placeholder1.y = 500;
			
			var placeholder2:Sprite = TurretPH();
			placeholder2.x = 375; placeholder2.y = 500;
			
			var placeholder3:Sprite = TurretPH();
			placeholder3.x = 700; placeholder3.y = 500;
			
			addChild(placeholder1);
			addChild(placeholder2);
			addChild(placeholder3);
			
			ghost_turret = new TurretHandler();
			ghost_turret.alpha = 0.5;
			ghost_turret.mouseEnabled = false;
			ghost_turret.visible = false;
			
			addChild(ghost_turret);
			stage.addEventListener(Event.ENTER_FRAME, gameLoop);
		}
		
		private function gameLoop(e:Event):void 
		{
			for each(var turret:TurretHandler in turrets) 
			{
				turret.update();
			}
		}
			
		private function showGhostTurret(e:MouseEvent = null):void 
		{
			var target_placeholder:Sprite = e.currentTarget as Sprite;
			ghost_turret.x = target_placeholder.x;
			ghost_turret.y = target_placeholder.y;
			ghost_turret.visible = true;
		}      
			
		private function hideGhostTurret(e:MouseEvent = null):void 
		{
			ghost_turret.visible = false;
		}
			
		private function addTurret(e:MouseEvent):void
		{
			var target_placeholder:Sprite = e.currentTarget as Sprite;
			var turret:TurretHandler = new TurretHandler();
			turret.x = target_placeholder.x;
			turret.y = target_placeholder.y;
			addChild(turret);          
			turrets.push(turret);
		}
		
	}
	
}