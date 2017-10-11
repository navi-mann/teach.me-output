class UsersController < ApplicationController
  # require 'sicuro'
  require 'open3'

  def index

  end

  def create
    @code= params[:userCode][:code]

    # render json:
      Open3.popen3("ruby -e '#{@code}'") do |stdin, stdout, stderr|
        render json:{ stdout: stdout.read, stderr: stderr.read}
        # puts "stderr is:" + stderr.read
      end
      # stdin, stdout, stderr = Open3.popen3("ruby","-e", "'#{@code}'")
      #   puts stdout.read
    # Sicuro.eval(@code).stdout

  end


end
