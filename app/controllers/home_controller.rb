class HomeController < ApplicationController
  def index
    @phones = Phone.all
  end
end
