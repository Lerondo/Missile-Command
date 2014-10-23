package src.EnemyMissiles 
{	
	import flash.display.Sprite;
	import flash.events.*;
	/**
	 * ...
	 * @author Alessandro
	 */	
	internal class EnemyMissile extends Sprite
	{
		internal function setLoc(xLoc:int, yLoc:int):void
		{
			x = xLoc;
			y = yLoc;
		}
		
		// ABSTRACT Method (deze wordt overschreven in een subclass)
		internal function drawMissile():void
		{
		}
		
		// ABSTRACT Method (deze wordt overschreven in een subclass)
		internal function initMissile():void
		{
		}
	}

}