programa {
  funcao inicio() {
     inteiro opcao
//       inteiro dependentes = 0, quantdepentes, quantfilhos
//       real deducaodependentes = 0
//       caracter conjuge, filhos, conjdependente


		

            escreva("             Calculadora de Imposto de Renda                                 \n")
		escreva("********** \n")
		escreva("1) Verifica faixa salarial de reten��o de IR \n")
		escreva("2) Verifica valores gastos com despesas que gerem compensa��o de IR \n")
		escreva("3) Verifica valor de isen��o por dependente no IR \n")
		escreva("4) Verifica valores destinados a programas sociais que gerem isen��o no IR \n")
		escreva("5) Para sair \n")
            escreva("********** \n")

		escreva("Escolha uma op��o: ")
		leia(opcao)

		limpa()

		escolha (opcao)	
		{
			caso 1: 
		 		
		 		 real salario, imposto

                     escreva("Digite o valor do sal�rio: ")
                     leia(salario)
    
                  se (salario <= 1903.98)
                     imposto = 0
                  senao se (salario <= 2826.65)
                           imposto = (salario - 1903.98) * 0.075
                  senao se (salario <= 3751.05) 
                           imposto = (salario - 2826.65) * 0.15 + 69.75
                  senao se (salario <= 4664.68) 
                           imposto = (salario - 3751.05) * 0.225 + 350.98
                  senao
                           imposto = (salario - 4664.68) * 0.275 + 636.13
    
                       escreva("O valor do imposto devido � R$", imposto)
                       	
		 		
	
		 		pare   // Impede que as instru��es do caso 2 sejam executadas
		 	caso 2: 
         cadeia despesa, saude, educacao, prevSocial, prevPrivada
    real gastoTotal, gasto1, gasto2, gasto3, gasto4, desconto

     escreva("    Algumas despesas dedut�veis do IR. \n ")
     escreva("Qual o seu gasto com sa�de? R$")
     leia(gasto1)
     escreva("Qual o seu gasto com educa��o? R$")
     leia(gasto2)
     escreva("Qual o seu gasto com previdencia social? R$")
     leia(gasto3)
     escreva("Qual o seu gasto com previdencia privada? R$")
     leia(gasto4) 
         
     gastoTotal = gasto1 + gasto2 + gasto3 + gasto4 
     desconto = gastoTotal * 20/100
    escreva(" O seu gasto total com despesas foi de; R$" , gastoTotal,  "\n")
    escreva(" O seu desconto no IR foi de; R$", desconto, "\n")
    escreva("Obrigado por fazer sua declara��o de imposto de renda! \n")
    
		 		
		 		pare   // Impede que as instru��es do caso 2 sejam executadas
		 	caso 3: 

		 	       inteiro dependentes = 0, quantdepentes, quantfilhos
                      real deducaodependentes = 0
                      caracter conjuge, filhos, conjdependente

			      escreva("Calculando quantos dependentes voc� na dedu��o de imposto de renda. \n")

                     escreva("Voc� possui c�njuge? Digite (S) ou (N) \n")
                     leia(conjuge)
           
                 se ( conjuge == 'S' ou conjuge == 's')
                   {

                     escreva("Ela � sua dependente para o imposto de renda? Digite (S) ou (N) \n")
                     leia(conjdependente)
    
                     dependentes = dependentes + 1 

                se (conjdependente == 'N' ou conjdependente == 'n')
                   {

                     dependentes = dependentes - 1
        
                   }
                  }
    
                 escreva("Voc� possui filho(s)? Digite (S) ou (N)\n")
                 leia(filhos)

                se ( filhos == 'S' ou filhos == 's')
                  {

                     escreva("Quantos filhos menores de 21 anos ou menor de 24 anos que esteja na faculdade voc� possui? \n")
                     leia(quantfilhos)

                     dependentes = dependentes + quantfilhos
      	
                  }
      
	          se (dependentes == 0)
	            {

                    escreva("Voc� n�o tem conpensa��o por dependentes em sua reten��o de imposto de renda. \n")
	   	
	            }

	         senao 
	            {
		          deducaodependentes = 189.59
		          deducaodependentes = dependentes * deducaodependentes	
		
	            }
                    escreva("A dedu��o total na reten��o de imposto de renda devido aos dependentes foi de: R$ ", deducaodependentes, "\n")
                    pare   // Impede que as instru��es do caso 3 sejam executadas         
          caso 4: 
		 		cadeia prog
                    inteiro valor
                    real imposto, doacao,salario
                 escreva("               Doando parte do seu IR \n")
                escreva("gostaria de fazer uma doa��o, entao ")  
                escreva("escolha um programa para receber a sua doa��o!")
               leia(prog)
              escreva("escolha a % de doa��o entre 1% a 6%!")
              leia(valor)
             enquanto (valor <=0 ou valor >=7){
            escreva("quanto quer doar em %? ")
          leia (valor)
           senao
             escreva("Digite um valor v�lido!")
            leia(valor)
            }se valor >=1 e valor <=6{
             escreva("Qual o seu rendimento mensal? ")
            leia(salario)
           se salario <= 1903.98 
           imposto = 0
           senao se salario <= 2826.65 
           imposto = (salario - 1903.98) * 0.075               
           senao se salario <= 3751.05 
           imposto = (salario - 2826.65) * 0.15 + 69.75               
           senao se salario <= 4664.68 
           imposto = (salario - 3751.05) * 0.225 + 350.98               
           senao
            imposto = (salario - 4664.68) * 0.275 + 636.13
            doacao = imposto*(valor/100)               
            escreva("O valor do imposto devido � R$", imposto  ,"\n");
            escreva("O valor da sua doa��o ficou R$ ",  doacao  ,"\n");
            escreva("Muito obrigado pela doa��o! \n")
     }
     //               real imposto 

                    
                    pare   // Impede que as instru��es do caso 4 sejam executadas
		 		
		 		
		caso contrario: // Ser� executado para qualquer op��o diferente de 1, 2 ou 3
		 		escreva ("Op��o Inv�lida !")
		}
  }
}
