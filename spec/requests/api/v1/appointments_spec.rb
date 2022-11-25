require 'swagger_helper'

RSpec.describe 'api/v1/appointments', type: :request do
  path '/api/v1/appointments' do # rubocop:disable Metrics/BlockLength
    get('list appointments') do
      response(200, 'successful') do
        after do |example|
          example.metadata[:response][:content] = {
            'application/json' => {
              example: JSON.parse(response.body, symbolize_names: true)
            }
          }
        end
      end
    end

    post('create appointment') do # rubocop:disable Metrics/BlockLength
      parameter({
                  in: :header,
                  type: :string,
                  name: :Authorization,
                  required: true,
                  description: 'Client token'
                })
      response(200, 'successful') do
        security [Authorization: []]
        let(:Authorization) { "Authorization #{generate_token}" }

        parameter name: :appointment, in: :body, schema: {
          type: :object,
          properties: {
            day_of_appointment: { type: :string },
            time_of_appointment: { type: :string },
            message: { type: :string },
            user_id: { type: :integer },
            doctor_id: { type: :integer }
          },
          required: %w[day_of_appointment time_of_appointment message user_id doctor_id]
        }

        response(200, 'successful') do
          after do |example|
            example.metadata[:response][:content] = {
              'application/json' => {
                example: JSON.parse(response.body, symbolize_names: true)
              }
            }
          end
        end
      end
    end

    path '/api/v1/appointments/{id}' do
      # You'll want to customize the parameter types...
      parameter name: 'id', in: :path, type: :string, description: 'id'

      delete('delete appointment') do
        parameter({
                    in: :header,
                    type: :string,
                    name: :Authorization,
                    required: true,
                    description: 'Client token'
                  })
        response(200, 'successful') do
          let(:id) { '123' }

          after do |example|
            example.metadata[:response][:content] = {
              'application/json' => {
                example: JSON.parse(response.body, symbolize_names: true)
              }
            }
          end
        end
      end
    end
  end
end
