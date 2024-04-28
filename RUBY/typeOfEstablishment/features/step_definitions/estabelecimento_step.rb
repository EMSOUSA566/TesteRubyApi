Dado('que realizo uma consulta no serviço de estabelecimentos') do
    @estabelecimento = HTTParty.get(Estabelecimento.consulta_endpoint)
end

Quando('o JSON retornado contém a chave {string}') do |key|
    expect(@estabelecimento.success?).to be true
    expect(@estabelecimento.parsed_response).to have_key(key)
end

Então ('retorno um tipo de estabelecimento aleatório') do
    estabelecimentos = @estabelecimento.parsed_response['typeOfEstablishment']
    random = estabelecimentos.sample
    log "Tipo de estabelecimento aleátorio: #{random}"
end
