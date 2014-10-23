package src.EnemyMissiles 
{
	import flash.display.*;
	import flash.events.*;
	/**
	 * ...
	 * @author Alessandro
	 */
	public class FastMissile extends EnemyMissile
	{
		override internal function drawMissile():void
		{
			graphics.beginFill(0xFFFFFF); // white color 
			graphics.drawRect( -5, -10, 10, 5);
			graphics.drawRect( -20, -5, 40, 10);
			graphics.drawRect( -20, 5, 10, 5);
			graphics.drawRect(10, 5, 10, 5);
			graphics.endFill( );
		}
		
		override internal function initMissile():void
		{
			// alien mag elke frame kijken of hij wil schieten
			stage.addEventListener(Event.ENTER_FRAME, fire);
		}
	}
}