class GammesController < ApplicationController
  skip_before_action :authenticate_user!

  def index
    @gammes = Gamme.all
  end
end
