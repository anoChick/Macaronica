import UnityEngine

class Macaron (MonoBehaviour): 
	public a as Vector2
	public v as Vector2
	public y as System.Decimal
	public vY as System.Decimal
	public pong as AudioSource
	public count as int
	public ap as int
	public line as int
	public beat as int
	public g as System.Decimal
	public key1 as KeyCode 
	public key2 as KeyCode 
	public key3 as KeyCode 
	public key4 as KeyCode
	def Start ():
		beat = 8
		y=0
		vY=0
		if(line==1):
			key1 =KeyCode.Alpha1
			key2 =KeyCode.Q
			key3 =KeyCode.A
			key4 =KeyCode.Z
		if(line==2):
			key1 =KeyCode.Alpha2
			key2 =KeyCode.W
			key3 =KeyCode.S
			key4 =KeyCode.X
		if(line==3):
			key1 =KeyCode.Alpha3
			key2 =KeyCode.E
			key3 =KeyCode.D
			key4 =KeyCode.C
		if(line==4):
			key1 =KeyCode.Alpha4
			key2 =KeyCode.R
			key3 =KeyCode.F
			key4 =KeyCode.V
		if(line==5):
			key1 =KeyCode.Alpha5
			key2 =KeyCode.T
			key3 =KeyCode.G
			key4 =KeyCode.B
		g = -0.012
		count = 0
		a=Vector2(0,g)
		v=Vector2(0,0)
		beat = 3
		Init()
		
	def Init():
			transform.position.y = 10
	def Update ():
		if(Input.GetKeyDown(key1)):
			beat=8
		if(Input.GetKeyDown(key2)):
			beat=6
		if(Input.GetKeyDown(key3)):
			beat=4
		if(Input.GetKeyDown(key4)):
			beat=3
		count++
		vY+=g
		y+=vY
		transform.position.y =y
		if transform.position.y<0 :
			_y as System.Decimal
			_v as System.Decimal
			c as int
			c=0
			_y=0
			_v=0

			for i in range(0,(beat*5)):
				c++
				_v -= g
				_y += _v
			v.y=_v
			vY=_v
			Debug.Log(c)
			y=0
			transform.position.y=0
			pong.Play()
			Debug.Log(count)
			count = 0



	def OnTriggerStay2D(other as Collider2D) as void:
		pass

