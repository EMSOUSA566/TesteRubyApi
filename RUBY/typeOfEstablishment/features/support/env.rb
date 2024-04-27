require 'httparty'

class Estabelecimento
    def self.consulta_endpoint
      'https://portal.vr.com.br/api-web/comum/enumerations/VRPAT'
    end
end