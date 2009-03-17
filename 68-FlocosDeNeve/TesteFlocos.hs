module Main where

import Test.HUnit
import Flocos

main = runTestTT testes

testes = TestList
         [testeCalculaPontas]

testeCalculaPontas =
    TestList
    [
     "Calcula primeira ponta do floco em 0,0 com raio 10" ~:
     head (calculaPontas (0,0) 10) ~?= (0,10)
    ,"Calcula segunda ponta do floco em 0,0 com raio 10" ~:
     head (tail (calculaPontas (0,0) 10)) ~?= (5 * (sqrt 3), 5)
    ,"Calcula terceira ponta do floco em 0,0 com raio 10" ~:
     head (tail (tail (calculaPontas (0,0) 10))) ~?= (5 * (sqrt 3), -5)
    ,"Calcula as 3 últimas pontas do floco em 0,0 com raio 10" ~:
     tail (tail (tail (calculaPontas (0,0) 10))) ~?= [(0, -10),(-5 * (sqrt 3), -5), (-5* (sqrt 3), 5)]
    ,"Calcula todas as pontas do floco em 1,1 com raio 10" ~:
     calculaPontas (1,1) 10 ~?= [(1,11),
                                 (1+5*(sqrt 3), 6),
                                 (1+5*(sqrt 3), -4),
                                 (1, -9),
                                 (1-5*(sqrt 3), -4),
                                 (1-5*(sqrt 3), 6)]
    ]
