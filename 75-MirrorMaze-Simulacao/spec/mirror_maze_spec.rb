require 'spec'
require 'lib/mirror_maze'

#Percorrer o caminho
#Andar para frente
#Virar no espelho
#Não atravessar a parede
#Saber se saiu do labirinto

describe Labirinto do
	it "andar pra direita a partir de um ponto" do
		mapa = [["*",".","*"],
				["*",".","*"]]
		labirinto = Labirinto.new(mapa)

		labirinto.proximoPonto([0,1],:direita).should == [0,2]
		labirinto.proximoPonto([1,1],:direita).should == [1,2]
	end
	
	it "andar pra esquerda a partir de um ponto" do
		mapa = [["*",".","*"],
				["*",".","*"]]
		labirinto = Labirinto.new(mapa)

		labirinto.proximoPonto([0,1],:esquerda).should == [0,0]
		labirinto.proximoPonto([1,1],:esquerda).should == [1,0]

	end
	
	it "andar pra cima a partir de um ponto" do
		mapa = [["*","*"],
				[".","."],
				["*","*"]]
		labirinto = Labirinto.new(mapa)

		labirinto.proximoPonto([1,0],:cima).should == [0,0]
		labirinto.proximoPonto([1,1],:cima).should == [0,1]

	end
	
	it "andar pra baixo a partir de um ponto" do
		mapa = [["*","*"],
				[".","."],
				["*","*"]]
		labirinto = Labirinto.new(mapa)

		labirinto.proximoPonto([1,0],:baixo).should == [2,0]
		labirinto.proximoPonto([1,1],:baixo).should == [2,1]
	end
	
	it "saber se posicao eh parede ou nao" do
		mapa = [["*","*"],
				[".","."],
				["*","*"]]
		labirinto = Labirinto.new(mapa)
		
		labirinto.should be_parede([0,0])
		labirinto.should_not be_parede([1,1])		
	end
end