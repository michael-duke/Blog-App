require 'swagger_helper'

RSpec.describe 'api/v1/posts', type: :request do
  path "/api/v1/users/{user_id}/posts?access_token=#{@api_key.access_token}" do
    get('list posts') do
      produces 'application/json', 'application/xml'
      parameter name: 'user_id', in: :path, type: :string, description: 'user_id'
      parameter name: 'access_token', in: :path, type: :string, description: 'access_token'
      response(200, 'successful') do
        schema type: :object,
               properties: {
                 id: { type: :integer },
                 title: { type: :string },
                 content: { type: :string }
               },
               required: %w[id title content]
        let(:user_id) { @author.id }
        run_test!
      end
    end
  end

  path "/api/v1/users/{user_id}/posts/{id}?access_token=#{@api_key.access_token}" do
    # You'll want to customize the parameter types...
    parameter name: 'user_id', in: :path, type: :string, description: 'user_id'
    parameter name: 'id', in: :path, type: :string, description: 'id'
    parameter name: 'access_token', in: :path, type: :string, description: 'access_token'

    get('show post') do
      response(200, 'successful') do
        let(:user_id) { '1' }
        let(:id) { '1' }

        after do |example|
          example.metadata[:response][:content] = {
            'application/json' => {
              example: JSON.parse(response.body, symbolize_names: true)
            }
          }
        end
        run_test!
      end
    end
  end
end
