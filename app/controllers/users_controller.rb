

class UsersController < ApplicationController
  require 'sicuro'
  def index

  end

  def create
    @code= params[:userCode][:code]

    render json: Sicuro.eval(@code).stdout


  end


end
