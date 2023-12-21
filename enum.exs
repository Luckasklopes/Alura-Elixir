defmodule MeuModulo.Enum do
    def primeiro([]), do: nil # no caso de multiplas funções com o mesmo nome, ele tentara executar em ordem, caso uma falhe, o codigo para
    def primeiro(lista), do: hd(lista)
end