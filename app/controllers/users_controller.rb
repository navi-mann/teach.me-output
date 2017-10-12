class UsersController < ApplicationController

  require 'open3'

  def index

  end

  def create
    @code = params[:userCode][:code]

    Open3.popen3("ruby -e '#{@code}'") do |stdin, stdout, stderr|
        render json:{ stdout: stdout.read, stderr: stderr.read}

      end

  end


end
