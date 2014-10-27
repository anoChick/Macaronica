import UnityEngine

class ItemScript (MonoBehaviour): 
	public count as int
	public point as int
	public speed as single
	public width as int
	public gms as GameManagerScript
	public pion as AudioSource

	def Start ():
		count = 0
		pion = GameObject.Find("GameManager").GetComponents(AudioSource)[1]
		gms = GameObject.Find("GameManager").GetComponent(GameManagerScript)
	def Update ():
		if(transform.position.x>10) : 
			GameObject.Destroy(gameObject)
		count++
		transform.position.x+=speed
		transform.position.y+=Mathf.Sin((count cast single) * 10 / 360 ) / width
	def OnTriggerEnter2D(other as Collider2D) as void:
		pion.Play()
		GameObject.Destroy(gameObject)
		gms.SetScore(gms.score+point)