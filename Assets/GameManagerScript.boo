import UnityEngine

class GameManagerScript (MonoBehaviour): 
	public ant1 as GameObject
	public ant2 as GameObject
	public ant3 as GameObject
	public gameManager as GameDataScript
	public combo as int
	public count as int
	public score as int
	public level as int
	public life as int
	public hunt as int
	public nextEXP as int
	public scoreLabel as GUIText
	public lifeLabel as GUIText
	public levelLabel as GUIText
	public mint as GameObject
	public ichigo as GameObject
	private nextItem as int
	private nextAnt as int
	def Start ():
		combo = 0
		nextItem = 100
		nextAnt = 200
		hunt = 0
		count = 0
		level = 1
		nextEXP = Mathf.Pow(level,1.5)*10
		score = 0
		life = 1
	def Update ():
		r as int
		if(nextItem>0):
			nextItem--
		if(nextAnt>0):
			nextAnt--
		if(nextAnt<=0):
			nextAnt=200-level-((level+1)%2)*150
			if(nextAnt<8) :
				nextAnt=8

			r=Random.Range (0,level)
			if(r<10):
				a1 as GameObject
				a1 = Instantiate(ant1)
				a1.transform.position.x+=Random.Range (-2,0)
			else :
				if(r<30):
					a2 as GameObject
					a2 = Instantiate(ant2)
					a2.transform.position.x+=Random.Range (-2,0)
				else :
					a3 as GameObject
					a3 = Instantiate(ant3)
					a3.transform.position.x+=Random.Range (-2,0)

		if(nextItem<=0):
			nextItem=200-level-(level%2)*150
			if(nextItem<8) :
				nextItem=8
			r=Random.Range (0, 10)
			if(r<7):
				mi as GameObject
				mi = Instantiate(mint)
				mi.transform.position.y+=Random.Range (-5, 1)
				mi.transform.position.x+=Random.Range (-2,0)
			else:
				ic as GameObject
				ic=Instantiate(ichigo)
				ic.transform.position.y+=Random.Range (-3, 3)
				ic.transform.position.x+=Random.Range (-2,0)
		if(nextEXP<=hunt):
			hunt-=nextEXP
			SetLevel(level+1)
			nextEXP = Mathf.Pow(level,1.5)*10
		if(life<=0) :
			Application.LoadLevel("Result")
		count ++
		if(count % 100 == 0) :
			Instantiate(ant1)

	def SetScore (s as int):
		score = s
		gameManager.score=score
		scoreLabel.text ="SCORE:"+string.Format("{0:00000000000000}",(score))
	def SetLevel (l as int):
		level = l
		levelLabel.text ="Lv."+level+":"+(hunt)+"/"+nextEXP
	def SetLife (l as int):
		life = l
		lifeLabel.text ="Life."+life
	def AddHunt (h as int):
		hunt += h
		levelLabel.text ="Lv."+level+"("+(100*hunt/nextEXP)+"%)"