class PagesController < ApplicationController
  before_action :authenticate_user, only: [:restricted]
  def home
    cookies[:count] = cookies[:count] ? cookies[:count].to_i + 1 : 1
    @count = cookies[:count]
  end

  def restricted
  end
end
