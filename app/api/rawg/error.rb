module Rawg
    class Error
        def self.map(code)
            case code
            when 401
                return 'Unauthorized request. You have no permission'
            when 404
                return 'Invalid Request! Please make sure to enter correct url'
            else
                return 'Service Unavailable. Please try again later'
            end
        end
    end
end