def busca_binaria(arr, valor)
  esquerda = 0
  direita = arr.length - 1

  while esquerda <= direita
    meio = (esquerda + direita) / 2

    if arr[meio] == valor
      return meio # Valor encontrado, retornamos o índice
    elsif arr[meio] < valor
      esquerda = meio + 1 # O valor está na metade direita
    else
      direita = meio - 1 # O valor está na metade esquerda
    end
  end

  nil # Retorna nil se o valor não for encontrado
end

lista = [10, 20, 30, 40, 50]
valor_procurado = 30

resultado = busca_binaria(lista, valor_procurado)

if resultado
  puts "Valor encontrado no índice #{resultado}"
else
  puts "Valor não encontrado"
end
