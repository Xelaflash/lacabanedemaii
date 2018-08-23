# frozen_string_literal: true

class Users::SessionsController < Devise::SessionsController
  after_action :assign_user, only: :create
  before_action :destroy_current_order, only: :destroy

  def assign_user
    order = current_order
    order.user_id = current_user.id
    if !order.order_items.empty?
      order.save
    end
  end

  def destroy_current_order
    if current_order.order_items.empty?
      current_order.destroy
    end
  end
end
