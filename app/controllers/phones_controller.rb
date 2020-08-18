class PhonesController < ApplicationController
  before_action :set_phone, only: [:edit, :update, :destroy]

  def new
    @phone = Phone.new
  end

  def edit
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

  def destroy
    if @phone.destroy
      flash[:success] = "#{@phone.name} has been successfully deleted."
      redirect_to root_path
    else
      flash[:error] = "#{@phone.name} has been not successfully deleted."
      redirect_to root_path
    end
  end

  def update
    if @phone.update(phone_params)
      flash[:success] = "#{@phone.name} has been successfully updated."
      redirect_to root_path
    else
      render :edit
    end
  end

  private
  def phone_params
    params.require(:phone).permit(:image, :name, :model, :year, :url, :price, :seller)
  end

  def set_phone
    @phone = Phone.find(params[:id])
  end
end
