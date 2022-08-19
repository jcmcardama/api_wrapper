# API wrapper

A program that helps you access a third party API that will make the process of API calls easier.

## GEM information

```
ruby "3.1.2"
gem "httparty"
```

## Third Party API used

[rawg.io](https://rawg.io/apidocs)

## Rawg Module
* [Client API](https://github.com/jcmcardama/api_wrapper/blob/main/app/api/rawg/client.rb)
    * Uses `call` method of the Request class
* [Request API](https://github.com/jcmcardama/api_wrapper/blob/main/app/api/rawg/request.rb)
    * Uses `get` requests from the Third party API
    * Transforms body of response to a parsed JSON
* [Error API](https://github.com/jcmcardama/api_wrapper/blob/main/app/api/rawg/request.rb)
    * Handles the `error` message from the Third party API

## Controller example

```ruby
module Api
  class CreatorRolesController < ApplicationController
    def index
      creator_roles = Rawg::Client.creator_roles
      render json: creator_roles
    end
  end
end
```

## Routes

```ruby
Rails.application.routes.draw do
  namespace :api do
    get '/creator-roles', to: 'creator_roles#index'
    get '/creators', to: 'creators#index'
    get '/developers', to: 'developers#index'
    get '/games', to: 'games#index'
    get '/genres', to: 'genres#index'
    get '/platforms', to: 'platforms#index'
    get '/publishers', to: 'publishers#index'
    get '/stores', to: 'stores#index'
    get '/tags', to: 'tags#index'
  end
end
```

## Example responses
* [Successful Response](./assets/successful_response.PNG)
    * Successful Response with the parsed body
* [Not Found Response](./assets/not_found_response.PNG)
    * Not Found Response with the error message
* [Unauthorized Response](./assets/not_found_response.PNG)
    * Unauthorized Response with the error message

## License

Copyright (c) 2022 Jan Carlo Cardama
