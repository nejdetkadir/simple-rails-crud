class PhonesController < ApplicationController
  def new
    @phone = Phone.new
  end

  def create
    # byebug
    @phone = Phone.new(phone_params)
    if @phone.save
      flash[:success] = "#{@phone.name} has been successfully created."
      redirect_to root_path
    else
      render :new
    end
  end

  private
  def phone_params
    params.require(:phone).permit(:name, :model, :year, :url, :price, :seller)
  end
end
