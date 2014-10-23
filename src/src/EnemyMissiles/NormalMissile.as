package src.EnemyMissiles 
{
	import flash.display.*;
	import flash.events.*;
	/**
	 * ...
	 * @author Alessandro
	 */
	public class NormalMissile extends EnemyMissile
	{
		override internal function drawMissile():void
		{
			graphics.beginFill(0x00FF00); // green color 
			graphics.drawRect( -5, -15, 10, 10); 
			graphics.drawRect( -12, -5, 24, 10); 
			graphics.drawRect( -20, 5, 40, 10); 
			graphics.endFill( );
		}
		
		override internal function initMissile():void
		{			
			// bij beweging: update the location van de heroship
			stage.addEventListener(MouseEvent.MOUSE_MOVE, update);
		}
		
		protected function update(event:MouseEvent):void
		{
			x = event.stageX;
			event.updateAfterEvent();
		}
	}
}