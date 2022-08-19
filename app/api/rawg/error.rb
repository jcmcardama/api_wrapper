module Rawg
    class Error
        def self.map(code)
            case code
            when 401
                return 'Unauthorized request. You have no permission'
            when 404
                return 'Not Found! The requested resource is not found on this server'
            else
                return 'Service Unavailable. Please try again later'
            end
        end
    end
end