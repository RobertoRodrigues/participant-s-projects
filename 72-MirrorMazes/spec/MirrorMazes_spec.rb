require 'spec'

require 'lib/MirrorMazes'

describe MirrorMaze do
  it "deveria criar um labirinto" do
    maze = MirrorMaze.new "***
                           ...
                           ***"
    maze.should_not be_nil
  end

  describe "quando identificando entrada e saida" do
    it "deveria identificar entrada e saída iguais" do
      maze = MirrorMaze.new "*.*"
      maze.entrada.should == [0,1]
      maze.saida.should == [0,1]
    end

    it "deveria identificar entrada e saida na mesma linha" do
      maze = MirrorMaze.new "***
                             ...
                             ***"
      maze.entrada.should == [1,0]
      maze.saida.should == [1,2]
    end

    it "deveria identificar entrada fora do centro" do
      maze = MirrorMaze.new "***
                             *.*
                             ...
                             ***"
      maze.entrada.should == [2,0]
    end
  end

  describe "quando o raio passa pelo labirinto" do
    it "deveria permitir a passagem do raio por um labirinto de entrada igual à saída " do
      maze = MirrorMaze.new "*.*"
      maze.should be_resolvido
    end

    it "deveria permitir a passagem do raio em linha reta "
      #do
      #maze = MirrorMaze.new "***
      #                      ...
      #                      ***"
      #maze.should be_resolvido
    #end

    it "nao deveria permitir a passagem do raio por um labirinto sem caminho" do
      maze = MirrorMaze.new "*.*
                             .\\*
                             ***"
      maze.should_not be_resolvido
    end
  end

  describe "direcao da luz na entrada" do

    it "deveria seguir para direita se a entrada esta na esquerda" do
       maze = MirrorMaze.new "***
                             ...
                             ***"
      maze.direcao.should == DIREITA
    end
  end
end
