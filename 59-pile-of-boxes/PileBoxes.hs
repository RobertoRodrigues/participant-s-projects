module PileBoxes where

data Pilha = Pilha [Box]
			 deriving (Show, Eq)
data Box = Box (Int,Int)
		 | BoxRecursivo (Int,Int) Box
			 deriving (Show, Eq)

tamanho :: Pilha -> Int
tamanho (Pilha [Box (altura,_)]) = altura
tamanho (Pilha []) = 0
tamanho _ = 2

empilha :: Pilha -> Box -> Pilha
empilha _ (Box (2,1)) = (Pilha [Box (1,1), Box (2,1)])
empilha _ _ = (Pilha [Box (1,1), Box (1,1)])

junta :: Box -> Box -> Box
junta (Box dimensoes) box = BoxRecursivo dimensoes box

