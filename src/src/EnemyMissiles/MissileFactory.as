package src.EnemyMissiles
{
	import flash.display.Stage;
	/**
	 * ...
	 * @author Alessandro
	 */
	public class MissileFactory 
	{
		public static const NORMAL:uint = 0;
		public static const FAST:uint = 1;
		
		// Dit is een simple Factory zoals we dat vorige week ook deden
		// de functie addShip geeft netjes aan wat de fabriek allemaal nodig heeft om voor jou
		// een product te maken
		public function addMissile(MissileType:uint, target:Stage, xLoc:int, yLoc:int):void
		{
			// net zoals vorige week maken we eerst het schip aan
			var missile:Missile = this.createMissile(MissileType);
			// en vervolgens passen we wat instellingen aan
			// hierdoor staat de 'creatie logica' netjes op 1 plek (namelijk in deze Class, inplaats van
			// op verschillende plekken in je Game)
			missile.drawMissile();
			missile.setLoc(xLoc, yLoc);
			target.addChild(missile);
			missile.initMissile();
		}
		
		// net als vorige week hebben we een switch tussen welke
		// type schip je aan wilt maken.
		private function createMissile(MissileType:uint):EnemyMissile
		{
			
			switch(MissileType)
			{
				case NORMAL:
					trace("Creating new Normal Missile");
					return new Normal();
					break;
				case FAST:
					trace("Creating new Fast Missile");
					return new Fast();
					break;
				default:
					throw new Error("Invalid kind of Missile specified");
					return null;	
			}
			
		}
	}
}