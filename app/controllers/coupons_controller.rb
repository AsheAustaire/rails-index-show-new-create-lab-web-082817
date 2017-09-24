class CouponsController < ApplicationController

  def index
    @coupons = Coupon.all
  end

  def new
  end

  def edit
  end

  def show
    @coupon = Coupon.find_by(params[:id])
  end

  def create
    @coupon = Coupon.create({coupon_code: params[:coupon_code], store: params[:store]})
    redirect_to coupon_path(@coupon.id)
  end

  def delete
  end

  def update
  end

end
