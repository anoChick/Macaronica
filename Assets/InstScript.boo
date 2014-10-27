import UnityEngine

class InstScript (MonoBehaviour): 
	public beat as int
	public a as single
	public v as single
	public y as single
	public sound as AudioSource
	def Start ():
		beat = 4
		a =- 0.012
		v=0
		y=0
	def Update ():
		v+=a
		y+=v
		transform.position.y = y
		if(y<0) :
			_y as System.Decimal
			_v as System.Decimal
			_y=0
			_v=0
			for i in range(0,(beat*5)):
				_v -= a
			v=_v
			transform.position.y=0
			sound.Play()