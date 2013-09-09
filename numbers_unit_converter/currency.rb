require "json"
require "net/http"

module UnitConverter
  class Currency
    uri = URI.parse("http://openexchangerates.org/api/latest.json?app_id=cbf64945263e42a2a07867ded48a5c1a")

    http = Net::HTTP::new(uri.host, uri.port)
    request = Net::HTTP::Get.new(uri.request_uri)

    response = http.request(request)

    RATES = JSON.parse(response.body)["rates"]

    def self.convert(amount, from, to)
      from_currency = RATES[from] * amount
      to_currency = RATES[to]
      joined_amount = to_currency * from_currency
    end
  end
end
