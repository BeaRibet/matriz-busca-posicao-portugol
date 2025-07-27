/*
  Objetivo: Buscar posição 
  Contexto: Preencha uma matriz 5x5 com números de 1 a 25, o preenchimento deve ser aleatório, e não deve repetir um número.
  Depois, solicite um número entre 1 e 25 ao usuário e informe em que linha e coluna ele está. Para ter certeza se o resultado está certo exiba a matriz em forma de tabela.
*/

programa {
  inclua biblioteca Util

  funcao inicio() {

    inteiro i, j, numero, achar
    inteiro matriz[5][5]
    inteiro usados[26]
    
    para(i = 0; i < 25; i++){
      usados[i] = 0
    }
    
    para(i = 0; i < 5; i++){
      para(j = 0; j < 5; j++){
        faca{
         numero = Util.sorteia(1 , 25)
        }enquanto(usados[numero] == 1)
          matriz[i][j] = numero
          usados[numero] = 1
      }
    }

    escreva("\nMatriz sorteada 5x5:\n\n")
    para(i = 0; i < 5; i++){
      para(j = 0; j < 5; j++){
        escreva(matriz[i][j], "\t")
      }
      escreva("\n")
    }

    escreva("\nDigite um número entre 01 e 25 para buscar a posição na matriz: ")
    leia(numero)
    achar = 0
    para(i = 0; i < 5; i++){
      para(j = 0; j < 5; j++){
        se(matriz[i][j] == numero){
          escreva("Número encontrado na posição: [", (i+1) , "][", (j+1) ,"].")
          achar = 1
        }
      }
    }
    se(achar == 0){
      escreva("Número inválido.")
    }
  }
}
