class Api::V1::UsersController < ApplicationController
    before_action :authorize_request, only: %i[create update destroy]
end
