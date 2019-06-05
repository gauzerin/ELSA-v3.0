class HostelsController < ApplicationController
skip_before_action :authenticate_user!, only: [:index, :show]

 def index
      @hostels = policy_scope(Hostel)
      @hostels = Hostel.all
      # search method below:
      if params[:city].present?
        @hostels = Hostel.where("city_name ILIKE ?", "%#{params[:city]}%")
      end

# second search param is below:
      if params[:room_type].present?
        @hostels.to_a.select {|hostel| hostel.beds.to_a.map! {|bed| bed.room_type}.include?("10-bed")}
      end
      # search method above^^^
      @marked_hostels = @hostels.where.not(latitude: nil, longitude: nil)
      @markers = @marked_hostels.map do |hostel|
        {
        lat: hostel.latitude,
        lng: hostel.longitude,
        infoWindow: render_to_string(partial: "hostel2", locals: { hostel: hostel })
        }
      end
  end
# NEW
  def new
    @hostel = Hostel.new
    authorize @hostel
  end
# CREATE
  def create
    @hostel = Hostel.new(hostel_params)
    @hostel.user = current_user
    authorize @hostel
    if @hostel.save
      @bed = Bed.new(bed_params[:bed])
      @bed.hostel = @hostel
      @bed.save
      redirect_to hostel_path(@hostel)
    else
      render :new
    end

  end
# SHOW
  def show
    set_hostel
    authorize @hostel
    @hostel = Hostel.find(params[:id])
    # @bookings = @hostel.bookings
    # map functionality below:

    @marked_hostel = @hostel
    @marker =
      {
        lat: @marked_hostel.latitude,
        lng: @marked_hostel.longitude,
        infoWindow: render_to_string(partial: "hostel2", locals: { hostel: @hostel })
      }
      # added a map on the show page
    @booking = Booking.new
    @bed_types = @hostel.beds.map {|bed| bed.room_type}.uniq
    @private = {price: @hostel.beds.where(room_type: "private").first.price_cents, type: @hostel.beds.where(room_type: "private").first.room_type}
    @tenbed = {price: @hostel.beds.where(room_type: "10 bed").first.price_cents, type: @hostel.beds.where(room_type: "10 bed").first.room_type}
    @eightbed = {price: @hostel.beds.where(room_type: "8 bed").first.price_cents, type: @hostel.beds.where(room_type: "8 bed").first.room_type}
    @sixbed = {price: @hostel.beds.where(room_type: "6 bed").first.price_cents, type: @hostel.beds.where(room_type: "6 bed").first.room_type};
    @fourbed = {price: @hostel.beds.where(room_type: "4 bed").first.price_cents, type: @hostel.beds.where(room_type: "4 bed").first.room_type}
  end
# EDIT
  def edit
    @hostel = Hostel.find(params[:id])
    @beds = Bed.where(hostel_id: @hostel.id)
    authorize @hostel
  end
# UPDATE
  def update
    set_hostel
    authorize @hostel
    if @hostel == Hostel.update(hostels_params)
      redirect_to hostels_path, notice: 'Hostel was succesfully updated'
    else
      render :edit
    end
  end
# DESTROY
  def destroy
    set_hostel
    authorize @hostel
    if @hostel.destroy!
      redirect_to hostels_path, notice: 'Hostel was succesfully removed'
    else
      raise
    end
  end

  private

  def hostel_params
    params.require(:hostel).permit(:name, :address, :city_name, :hostel_type)
  end

  def bed_params
    params.require(:hostel).permit(bed: [:room_type, :price])
  end

  def set_hostel
    @hostel = Hostel.find(params[:id])
  end

end
