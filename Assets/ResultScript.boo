import UnityEngine

class ResultScript (MonoBehaviour): 
	public scoreLabel as GUIText
	def Start ():
		gd as GameObject = GameObject.Find("GameData")
		scoreLabel.text=""+(gd.GetComponent("GameDataScript") cast GameDataScript).score
	def Update ():
		pass

	def Piyo(result):
		pass