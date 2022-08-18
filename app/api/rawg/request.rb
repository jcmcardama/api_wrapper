module Rawg
    class Request
        include HTTParty
        base_uri 'https://api.rawg.io/api'
        default_params key: '7dfc13582a4240a5b7a8a010ee133c92'

        def self.call(endpoint)
            response = get("#{endpoint}")
            raise Exception if response.code != 200
            {code: response.code, status: response.message, data: JSON.parse(response.body)}
        rescue Exception
            response = {code: response.code, status: response.message, data: Error.map(response.code)}
        end
    end
end