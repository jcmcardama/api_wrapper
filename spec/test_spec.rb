require 'rails_helper'
describe "Rawg module" do
    it 'should fetch successful request' do
        request = Rawg::Client.creator_roles
        expect(request[:code]).to eq(200)
        expect(request[:status]).to eq("OK")
    end

    it 'should fetch invalid request' do
        request = Rawg::Request.call("/creator-role")
        expect(request[:code]).to eq(404)
    end
end