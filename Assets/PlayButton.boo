import UnityEngine

class PlayButton (MonoBehaviour): 
	public i1 as Texture
	public i2 as Texture

	def Start ():
		pass
	
	def Update ():
		pass
	def OnMouseDown ():
		gd as GameObject = GameObject.Find("GameData")
		if(gd!=null):
			GameObject.Destroy(gd)
		Application.LoadLevel("Main")
	def OnMouseEnter ():
		guiTexture.texture = i2
	def OnMouseExit ():
		guiTexture.texture = i1