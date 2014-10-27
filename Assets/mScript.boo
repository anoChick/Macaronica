import UnityEngine

class mScript (MonoBehaviour): 

	def Start ():
		pass
	
	def Update ():
		if(transform.position.y<-20) :
      GameObject.Destroy(gameObject)