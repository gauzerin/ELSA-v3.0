class BedsController < ApplicationController
skip_before_action :authenticate_user!

  def new
    @hostel = Hostel.find(params[:hostel_id])
    @bed = Bed.new
    authorize @bed
  end

  def create
    @hostel = Hostel.find(params[:hostel_id])
    @bed = Bed.new(bed_params)
    @bed.hostel = @hostel
    authorize @hostel
    if @bed.save
      redirect_to hostel_path(@hostel), notice: 'Bed was succesfully added'
    else
      render :new
    end
  end

  def destroy
    set_bed
    authorize @bed
    @bed.destroy!
    redirect_to hostels_path, notice: 'Hostel was succesfully removed'
  end

  def update
    set_bed
  end

  private

  def bed_params
    params.require(:bed).permit(:price, :hostel_id, :room_type)
  end

  def set_bed
    @bed = Bed.find(params[:id])
  end
end
