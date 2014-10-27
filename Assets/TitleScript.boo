import UnityEngine

class TitleScript (MonoBehaviour): 
	public m1 as GameObject
	public m2 as GameObject
	public m3 as GameObject
	public m4 as GameObject
	public m5 as GameObject
	public count as int

	def Start ():
		count=0
	
	def Update ():
		count += 1
		if(count>=2) :
			count  = 0
			m as GameObject
			r as int
			r = Random.Range(0,5)
			if(r==0) :
				m = Instantiate(m1)
			if(r==1) :
				m = Instantiate(m2)
			if(r==2) :
				m = Instantiate(m3)
			if(r==3) :
				m = Instantiate(m4)
			if(r==4) :
				m = Instantiate(m5)
			m.transform.position.x=Random.Range(-10,10)
			m.transform.position.y = 8
