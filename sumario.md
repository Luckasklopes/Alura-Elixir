# Sumario quase basico para Elixir

i - inspeciona o conteudo de qualquer coisa, numeros, strings, variaveis, mapas

r(Modulo) - recarrega o modulo especificado, essencial para criação de modulos e funções

MeuModulo.olamundo - é a forma padrao de se chamar funções

## atomos
    
atomos sao imutaveis, e possuem como valor o propio nome, sempre chamados com :nome

true, false, nil(NULL) são atomos, mas são excessoes a regra e ja vem criados por padrão em qualquer codigo elixir

tambem nao precisam ser chamados com ':'

## lista
### podem conter quaisquer tipos de variaveis, nao há limitação

lista = ["essa é", 1, "forma de criar uma lista"]

hd(lista) - mostra a head de uma lista
tl(lista) - mostra o corpo de uma lista

## mapa
### podem ser qualquer coisa, virando qualquer coisa
mapa = %{1 => "um", "isso" => "significa isso"}

mapa[1] -> "um"
mapa["isso"] -> "significa isso"

## keyword_list
### ultilização de atomos, que sao IMUTAVEIS
keyword_list = [{:ok, true}, {:atomo, "retornodele"}]
essencialmente é uma lista que contem varias tuplas

keyword_list[:ok] -> true
keyword_list[:atomo] -> "retorno dele"

## tupla
### tupla é um conjunto de dados, semelhante a lista, ultilizada geralmente para dados que andam sempre juntos, como nome e idade
minha_tupla = {"um", 1, 1.0, "I"}
elem(nome_tupla, posição)
elem(minha_tupla, 3) -> "I"

##

é uma forma de criar aliases pelo iex, por exemplo
is_number(1) -> true

alias = &função/qnt_de_parametros(aridade)
i_n = &is_number/1

alias.(parametro)
i_n.(2) -> true

## funções anonimas
### funções criadas pelo iex, que nao precisam ser definidas antes, e servem apenas ao proposito da linha em que foi criada

fn (parametro) -> 'codigo' end
lista = [1, 2, 3]
Enum.map(lista, fn (numero -> numero * 2 end))

Enum.map(lista, &parametro(codigo))
Enum.map(lista, &(&1 * 2)) #& são os parametros a serem ulilizados pela função

## condicionais
### existem 4 formas de se ultilizarem condicionais, if, else, unless, e a propia função porem com parametros diferentes

if = se; else = senao; unless = a menos que

não existe elseif em elixir

        if length(lista) == 0 do
            nil
        else
            hd(lista)
        end

ou

        unless length(lista) == 0 do # a menos que o comprimento da lista seja 0, faça isso
            hd(lista)
        end

ou

        def primeiro([]), do: nil
        def primeiro(lista), do: hd(lista)