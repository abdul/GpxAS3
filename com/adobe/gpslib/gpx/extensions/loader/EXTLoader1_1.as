package com.adobe.gpslib.gpx.extensions.loader
{
	import com.adobe.gpslib.gpx.extensions.Extensions;
	import com.adobe.gpslib.gpx.extensions.twitter.TwitterLoader1_1;
	import com.adobe.gpslib.gpx.extensions.twitter.TwitterPoint;
	
	public class EXTLoader1_1
	{
		public function EXTLoader1_1()
		{
		}
		
		public static function load(xml:XML) : Extensions
		{
			return null;
		}
		
		public static function toXMLString(ext:Extensions) : XML
		{
			var xml : XML = <extensions></extensions>;
			
			var extLen : int = ext.length;
			for( var i : int = 0; i < extLen; i++ )
			{
				switch( ext.getItemAt(i).thisNamespace )
				{
					case "http://www.digitalbackcountry.com/TwitterPoint/1/0":
						xml.appendChild(TwitterLoader1_1.toXMLString(ext.getItemAt(i) as TwitterPoint));
						break;
				}
			}
			
			return xml;
		}

	}
}