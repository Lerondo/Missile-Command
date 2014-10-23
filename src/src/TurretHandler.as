package src
{
	import flash.display.Graphics;
	import flash.display.Sprite;
	/**
	 * ...
	 * @author Alessandro
	 */
	public class TurretHandler extends Sprite
	{
		
		public function TurretHandler() 
		{
			draw();
		}
		
		private function draw():void 
		{
			var g:Graphics = this.graphics;
			g.beginFill(0xD7D700);
			g.drawCircle(0, 0, 20);
			g.beginFill(0x800000);
			g.drawRect(0, -5, 25, 10);
			g.endFill();
		}
		
		public function update():void 
		{
			var angle:Number = Math.atan2(stage.mouseY - this.y, stage.mouseX - this.x) / Math.PI * 180;
			this.rotation = angle;
		}
		
	}

}