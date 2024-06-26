# criada logíca que permite realizar os testes para que através de variáveis, permita resultado esperado na entrada e saída.
def remover_texto_apos_simbolos(string, marcadores)
  marcadores.each do |marcador|
      if string.include?(marcador)
          index = string.index(marcador)
          string = string[0...index].strip
      end
  end
  string
end

# Cenário 1 string/array
Dado('que a string de entrada “bananas, tomates # e ventiladores”') do
  @entrada1 = "bananas, tomates # e ventiladores"
end

Quando('os marcadores [“#”, “!”]') do
  marcadores1 = ["#", "!"]
  @saida_esperada1 = "bananas, tomates"
  @resultado1 = remover_texto_apos_simbolos(@entrada1, marcadores1)
  log "Cenário 1"
  log "Entrada: '#{@entrada1}'"
end

Então('a saída esperada é: “bananas, tomates"') do
  log "Saída: '#{@resultado1}'\n\n"
  log @saida_esperada1 == @resultado1 => true
end


# Cenário 2 string/array
Dado('que a string de entrada “o rato roeu a roupa $ do rei % de roma”') do
  @entrada2 = "o rato roeu a roupa $ do rei % de roma"
end

Quando('os marcadores [“%”, “!”]') do
  marcadores2 = ["%", "!"]
  @saida_esperada2 = "o rato roeu a roupa $ do rei"
  @resultado2 = remover_texto_apos_simbolos(@entrada2, marcadores2)
  log "Cenário 2"
  log "Entrada: '#{@entrada2}'"
  log "Mensagem esperada: '#{@saida_esperada2}'"
end

Então('a saída esperada é: “o rato roeu a roupa $ do rei”') do
  log "Saída: '#{@resultado2}'\n\n"
  log @saida_esperada2 == @resultado2 => true
end


# Cenário 3 string/array
Dado('que a string de entrada “the quick brown fox & jumped over * the lazy dog”') do
  @entrada3 = "the quick brown fox & jumped over * the lazy dog"
end

Quando('os marcadores [“&”, “*”, “%”, “!”]') do
  marcadores3 = ["&", "*", "%", "!"]
  @saida_esperada3 = "the quick brown fox"
  @resultado3 = remover_texto_apos_simbolos(@entrada3, marcadores3)
  log "Cenário 3"
  log "Entrada: '#{@entrada3}'"
  log "Mensagem esperada: '#{@saida_esperada3}'"
end

Então('a saída esperada é : “the quick brown fox”') do
  log "Saída: '#{@resultado3}'"
  log @saida_esperada3 == @resultado3 => true
end
