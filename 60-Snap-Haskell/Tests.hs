module Main where

import Test.HUnit
import Snap

main = runTestTT testes

testes = TestList [testeCalculaDistancias]

testeCalculaDistancias = TestList[
	"Distancia entre um ponto e ele mesmo deveria ser 0" ~:
	distancia (Ponto 0 0) (Ponto 0 0 ) ~?= 0
	,"Distancia entre o ponto 0 0 e 0 1 deveria ser 1" ~:
	distancia (Ponto 0 0) (Ponto 0 1 ) ~?= 1
	,"Distancia entre o ponto 0 0 e 0 2 deveria ser 2" ~:
	distancia (Ponto 0 0) (Ponto 0 2 ) ~?= 2
	]
