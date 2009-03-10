module Energy where

data Grafo = Grafo Int [(Int,Int)]

ehConexo :: Grafo -> Bool
ehConexo _ = True
ehConexo grafo = null$ dfs grafo

dfs :: Grafo -> [Int]
dfs (Grafo 2 _) = [2] 
dfs _ = []