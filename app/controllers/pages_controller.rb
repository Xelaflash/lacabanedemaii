class PagesController < ApplicationController
    skip_before_action :authenticate_user!, only: [:home, :qui_sommes_nous, :contact, :livraison, :faq, :mentions_legales, :CGV  ]

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
