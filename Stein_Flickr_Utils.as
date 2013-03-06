package 
{

	//feel free to use this how you want in any of your projects.
	public class Stein_Flickr_Utils
	{

		public function Stein_Flickr_Utils():void
		{

		}

		//Use this function to get the URL you need to load a picture. 
		//Example this assmes you have a photo object (com.adobe.webapis.flickr.Photo) named p
		//loader.load(new URLRequest( Stein_Flickr_Utils.getPhotoURL(p.server, p.id, p.secret, "square") ));
		static function getPhotoURL(server:int, id:String, secret:String, size:String):String
		{
			var path:String = "http://static.flickr.com/" + server + "/" + id + "_" + secret;

			switch (size)
			{
				case "square" :
					path +=  "_s";
					break;
				case "thumbnail" :
					path +=  "_t";
					break;
				case "small" :
					path +=  "_m";
					break;
				case "medium500" :
					path +=  "";
					break;
				case "medium640" :
					path +=  "_z";
					break;
				case "large" :
					path +=  "_b";
					break;
				case "original" :
					path +=  "_o";
					break;
			}
			path +=  ".jpg";
			return path;
		}
	}


}