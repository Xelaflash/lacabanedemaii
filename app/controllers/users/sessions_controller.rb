# frozen_string_literal: true

class Users::SessionsController < Devise::SessionsController
  before_action :destroy_current_order, only: :destroy

  def destroy_current_order
    if current_order.order_items.empty?
      current_order.destroy
    end
  end
end
