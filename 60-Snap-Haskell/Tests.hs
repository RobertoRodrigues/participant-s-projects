module Main where

import Test.HUnit
import Snap

main = runTestTT testes

testes = TestList [testeCalculaDistancias,testeRaioAtracao]

testeCalculaDistancias = TestList[
	"Distancia entre um ponto e ele mesmo deveria ser 0" ~:
	distancia (Ponto 0 0) (Ponto 0 0 ) ~?= 0.0
	,"Distancia entre o ponto 0 0 e 0 1 deveria ser 1" ~:
	distancia (Ponto 0 0) (Ponto 0 1 ) ~?= 1.0
	,"Distancia entre o ponto 0 0 e 0 2 deveria ser 2" ~:
	distancia (Ponto 0 0) (Ponto 0 2 ) ~?= 2.0
	,"Distancia entre o ponto 0 0 e 1 0 deveria ser 1" ~:
	distancia (Ponto 0 0) (Ponto 1 0 ) ~?= 1.0
	,"Distancia entre o ponto 1 0 e 1 1 deveria ser 1" ~:
	distancia (Ponto 1 0) (Ponto 1 1 ) ~?= 1.0
	,"Distancia entre o ponto 0 3 e 4 0 deveria ser 5" ~:
	distancia (Ponto 0 3) (Ponto 4 0 ) ~?= 5
	]

testeRaioAtracao = TestList[
	"Ponto 0 0 deveria pertencer a regiao do ponto 0 0 raio 1"~:
	pertenceARegiao (Ponto 0 0) (PontoAtrator (Ponto 0 0 ) 1)~?= True
	,"Ponto 1 0 deveria pertencer a regiao do ponto 0 0 raio 1"~:
	pertenceARegiao (Ponto 1 0) (PontoAtrator (Ponto 0 0 ) 1)~?= True
	,"Ponto 2 0 nao deveria pertencer a regiao do ponto 0 0 raio 1"~:
	pertenceARegiao (Ponto 2 0) (PontoAtrator (Ponto 0 0 ) 1)~?= False
    ,"Ponto 2 0 deveria pertencer a regiao do ponto 0 0 raio 2"~:
	pertenceARegiao (Ponto 2 0) (PontoAtrator (Ponto 0 0 ) 2)~?= True
	]
