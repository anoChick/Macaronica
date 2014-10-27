import UnityEngine

class AntScript (MonoBehaviour): 
	public life as int
	public delay as int
	public point as int
	public speed as single
	public maxLife as int
	public gusya as AudioSource
	public gms as GameManagerScript
	public stop as int
	def Start ():
		stop = 0
		maxLife = life
		delay=0
		gusya = GameObject.Find("GameManager").GetComponents(AudioSource)[0]
		gms = GameObject.Find("GameManager").GetComponent(GameManagerScript)
	def Update ():
		if(delay>0) :
			delay--
		if(Random.Range(0,8000)==400) : 
			stop = Random.Range(40,120)
		if(stop>0) :
			stop--

		if(stop==0) :
			transform.position.x+=speed
		if(transform.position.x>7.4) : 
			gms.SetLife(gms.life-1)
			GameObject.Destroy(gameObject)

	def OnTriggerEnter2D(other as Collider2D) as void:
		if(delay==0) :
			delay=3
			macaron as Macaron
			macaron = other.GetComponent("Macaron")
			life--
			if(life<=0) :
				gusya.Play()
				GameObject.Destroy(gameObject)
				gms.SetScore(gms.score+point*maxLife*(speed*10))
				gms.AddHunt(point)
