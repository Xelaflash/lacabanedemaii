class PagesController < ApplicationController
  skip_before_action :authenticate_user!

  def home
  end

  def qui_sommes_nous
  end

  def contact
  end

  def livraison
  end

  def faq
  end

  def mentions_legales
  end

  def CGV
  end
end
