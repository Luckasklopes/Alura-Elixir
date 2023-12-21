defmodule MeuModulo do # define o modulo de funções propio
import IO, only: [puts: 1] # importa a bibioteca do puts, porem sómente a função puts(print)
import Kernel, except: [inspect: 1] # importa a biblioteca kernel(padrao), porem exclui a função inspect

alias MeuModulo.Math, as: MyMath # define formas diferentes de chamar alguma função

# import Integer # require é a forma de chamar as macros de algum modulo, sem importar o modulo como um todo, porém import ainda funciona

    def ola_mundo do # criação da função olá mundo
        inspect(MyMath.soma(2, 2)) # chama a função inspect, ultilizando de parametros a função soma, criada no arquivo math.exs
    end

    def eh_par(numero) do
        require Integer # requires tambem podem ser chamados dentro de funções, porém os macros dele só estarão disponiveis dentro daquela função
        puts("o numero #{numero} é par? #{Integer.is_even(numero)}") # #{nome} é a forma de exibir variaveis e dados no meio de uma string. is_even é uma função de interger
    end

    defp inspect(parametro1) do # criação da função inspect com um parametro, por isso a necessidade de exlcluir o kernel. 'defp' cria uma função privada, que só é chamada dentro do propio codigo
        puts("aqui começei a inspeção")
            puts(parametro1) # imprime o parametro
        puts("aqui terminei a inspeção")
    end
end