import UnityEngine

class GameDataScript (MonoBehaviour): 
	public score as int
	def Start ():
		pass
	
	def Update ():
		pass
	def Awake ():
		DontDestroyOnLoad(transform.gameObject)