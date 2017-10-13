class UsersController < ApplicationController
  # skip_before_action :verify_authenticity_token

  require 'sicuro'
  # require 'open3'

  def index

  end

  def create
    @code = params[:userCode][:code]

      # Open3.popen3("ruby -e ' #{@code}'") do |stdin, stdout, stderr|
      #   render json:{ stdout: stdout.read, stderr: stderr.read}
      # end
      @codeResult = Sicuro.eval(@code)
      render json:  @codeResult.stdout.to_s.gsub(/(?:\n\r?|\r\n?)/, '<br>')



  end


end
