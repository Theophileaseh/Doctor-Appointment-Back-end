require 'swagger_helper'

RSpec.describe 'api/v1/users', type: :request do
  path '/api/v1/users' do # rubocop:disable Metrics/BlockLength
    get('list users') do
      response(200, 'successful') do
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

    post('create user') do
      response(422, 'successful') do
        consumes 'application/json'

        parameter name: :user, in: :body, schema: {
          type: :object,
          properties: {
            name: { type: :string },
            email: { type: :string },
            role: { type: :string },
            birth_date: { type: :string },
            gender: { type: :string },
            password: { type: :string },
            password_confirmation: { type: :string }
          },
          required: %w[name email birth_date gender password password_confirmation role]
        }
        let(:user) do
          User.create(name: 'Nwachan', email: 'nwachan@gmail.com', birth_date: { type: :string },
                      gender: { type: :string }, password: '123456',
                      password_confirmation: '123456', role: 'admin')
        end

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

  path '/api/v1/users/{id}' do # rubocop:disable Metrics/BlockLength
    # You'll want to customize the parameter types...
    parameter name: 'id', in: :path, type: :string, description: 'id'

    get('show user') do
      response(200, 'successful') do
        let(:user) do
          User.create(name: 'Nwachan', email: 'nwachan@gmail.com', birth_date: { type: :string },
                      gender: { type: :string }, password: '123456',
                      password_confirmation: '123456', role: 'admin')
        end
        let(:id) do
          User.create(name: 'Nwachan', email: 'nwachan@gmail.com', birth_date: { type: :string },
                      gender: { type: :string }, password: '123456',
                      password_confirmation: '123456', role: 'admin').id
        end

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

    patch('update user') do
      response(200, 'successful') do
        let(:user) do
          User.create(name: 'Nwachan', email: 'nwachan@gmail.com', birth_date: { type: :string },
                      gender: { type: :string }, password: '123456',
                      password_confirmation: '123456', role: 'admin')
        end
        let(:id) { User.all.last.id }
        consumes 'application/json'

        parameter name: :user, in: :body, schema: {
          type: :object,
          properties: {
            name: { type: :string },
            email: { type: :string },
            role: { type: :string },
            birth_date: { type: :string },
            gender: { type: :string },
            password: { type: :string },
            password_confirmation: { type: :string }
          },
          required: %w[name email birth_date gender password password_confirmation role]
        }

        after do |example|
          example.metadata[:response][:content] = {
            'application/json' => {
              example: JSON.parse(response.body, symbolize_names: true)
            }
          }
        end
      end
    end

    put('update user') do # rubocop:disable Metrics/BlockLength
      response(200, 'successful') do
        let(:user) do
          User.create(name: 'Nwachan', email: 'nwachan@gmail.com', birth_date: '01/01/2005', gender: 'M', password: '123456', # rubocop:disable Metrics/LineLength
                      password_confirmation: '123456', role: 'admin')
        end
        let(:id) do
          User.create(name: 'Nwachan', email: 'nwachan@gmail.com', birth_date: '01/01/2005', gender: 'M', password: '123456', # rubocop:disable Metrics/LineLength
                      password_confirmation: '123456', role: 'admin').id
        end
        consumes 'application/json'

        parameter name: :user, in: :body, schema: {
          type: :object,
          properties: {
            name: { type: :string },
            email: { type: :string },
            role: { type: :string },
            birth_date: { type: :string },
            gender: { type: :string },
            password: { type: :string },
            password_confirmation: { type: :string }
          },
          required: %w[name email birth_date gender password password_confirmation role]
        }

        after do |example|
          example.metadata[:response][:content] = {
            'application/json' => {
              example: JSON.parse(response.body, symbolize_names: true)
            }
          }
        end
      end
    end

    delete('delete user') do
      response(200, 'successful') do
        let(:id) { User.all.last.id }

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

  path '/login' do
    post('login user') do
      response(200, 'successful') do
        consumes 'application/json'

        parameter name: :user, in: :body, schema: {
          type: :object,
          properties: {
            email: { type: :string },
            password: { type: :string }
          },
          required: %w[email password]
        }

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
