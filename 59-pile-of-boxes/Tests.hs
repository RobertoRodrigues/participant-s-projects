module Main where

import Test.HUnit
import PileBoxes

main = runTestTT testes

testes = TestList[testePilhaVazia, testeUmaCaixa, testeDuasCaixas, testeEmpilhaDuasCaixas, testeJuntaDuasCaixas]

testePilhaVazia = TestList
	["Nenhuma caixa deveria ter tamanho 0" ~:
	tamanho (Pilha []) ~?= 0
	]

testeUmaCaixa = TestList
	["Pilha de uma caixa de tamanho 1x1 deveria ter tamanho 1" ~:
	tamanho (Pilha [Box (1,1)]) ~?= 1
	,"Pilha de uma caixa de tamanho 2x1 deveria ter tamanho 2" ~:
	tamanho (Pilha [Box (2,1)]) ~?= 2
	,"Pilha de uma caixa de tamanho 2x2 deveria ter tamanho 2" ~:
	tamanho (Pilha [Box (2,2)]) ~?= 2
	]

testeDuasCaixas = TestList
	["Pilha de duas caixas de tamanho 1x1 , 1x1 deveria ter tamanho 2" ~:
	tamanho (Pilha [Box (1,1), Box (1,1)]) ~?= 2
	]

testeEmpilhaDuasCaixas = TestList
	["Empilhar duas caixas de tamanho 1x1 , 1x1 deveria guardar em uma pilha" ~:
	empilha (Pilha [Box (1,1)]) (Box (1,1)) ~?= (Pilha [Box (1,1), Box (1,1)])
	,"Empilhar duas caixas de tamanho 1x1 , 2x1 deveria guardar em uma pilha" ~:
	empilha (Pilha [Box (1,1)]) (Box (2,1)) ~?= (Pilha [Box (1,1), Box (2,1)])
	]

testeJuntaDuasCaixas = TestList
	[
	 "Junta caixa 3x3 com outra 2x2" ~:
	 junta (Box (3,3)) (Box (2,2)) ~?= (BoxRecursivo (3,3) (Box (2,2)))
	,"Junta caixa 4x4 com outra 3x3" ~:
	 junta (Box (4,4)) (Box (3,3)) ~?= (BoxRecursivo (4,4) (Box (3,3)))
	,"Junta caixa 3x3 com outra 4x4" ~:
	 junta (Box (3,3)) (Box (4,4)) ~?= (Pedestal 3 (Box (4,4)))
	]
