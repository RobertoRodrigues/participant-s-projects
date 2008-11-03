import unittest
from santa import sorteia

class Testes(unittest.TestCase):
	def testDuasPessoasDeFamiliasDiferentes(self):
		entrada = ["Luke Skywalker", "Darth Vader"]
		saida = {"Luke Skywalker": "Darth Vader",
				 "Darth Vader": "Luke Skywalker",}
		self.assertEquals(sorteia(entrada), saida)

	def testTresPessoasDeFamiliasDistintas(self):
		entrada = ["Luke Skywalker", "Darth Vader",
                   "Lea Organa"]
		saidas = [{"Luke Skywalker": "Darth Vader",
				  "Darth Vader": "Lea Organa",
                  "Lea Organa": "Luke Skywalker",},
                 {"Luke Skywalker": "Lea Organa",
				  "Darth Vader": "Luke Skywalker",
                  "Lea Organa": "Darth Vader",},]
		assert sorteia(entrada) in saidas

	def testQuatroPessoasComFamiliasDistintas(self):
		entrada = ["Luke Skywalker", "Darth Vader",
                   "Lea Organa", "Master Yoda"]
		saidas = [{"Luke Skywalker": "Darth Vader",
				  "Darth Vader": "Lea Organa",
                  "Lea Organa": "Master Yoda",
				  "Master Yoda" : "Luke Skywalker",},
				{"Luke Skywalker": "Lea Organa",
                  "Lea Organa": "Master Yoda",
				  "Master Yoda": "Darth Vader",
				  "Darth Vader" : "Luke Skywalker",},
				{"Luke Skywalker": "Master Yoda",
				  "Master Yoda": "Darth Vader",
                  "Darth Vader" : "Lea Organa",
				  "Lea Organa" : "Luke Skywalker",},
				{"Luke Skywalker": "Darth Vader",
				  "Darth Vader": "Master Yoda",
				  "Master Yoda" : "Lea Organa",
                  "Lea Organa": "Luke Skywalker",},
				{"Luke Skywalker": "Darth Vader",
				  "Darth Vader": "Luke Skywalker",
				  "Master Yoda" : "Lea Organa",
                  "Lea Organa": "Master Yoda",},]
		assert sorteia(entrada) in saidas

unittest.main()

