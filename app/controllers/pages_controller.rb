class PagesController < ApplicationController
  skip_before_action :authenticate_user!


  def qui_sommes_nous
  end

  def contact
  end

  def livraison
  end

  def aide
  end

  def mentions_legales
  end

  def CGV
  end
end
