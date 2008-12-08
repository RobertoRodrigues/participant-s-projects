class Tabuleiro:
    def __init__(self):
        self.matriz = []
    
    def insere_linha(self, linha):
        self.matriz.append(list(linha)) 
    
    def pega_tabuleiro(self):
        return self.matriz
        
    
    def deslocaEsquerda(self):    
        size = len(self.matriz[0])
        for i,char in enumerate(self.matriz[0]):
            if(char == ' '):
                self.matriz[0].pop(i)
                self.matriz[0].append('')

        return self.matriz
        
    def remove(self,linha,coluna):
        self.matriz[linha][coluna] = ' '
        return self.deslocaEsquerda()
