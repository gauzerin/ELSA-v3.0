class HostelsController < ApplicationController

  def index
    # @hostels = policy_scope(Hostel)
    # added this to return all hostels!
    # search method below:
    if params[:city].present?
      @hostels = Hostel.where("city_name ILIKE ?", "%#{params[:city]}%")
    end
      # search method above^^^
      @marked_hostels = @hostels.where.not(latitude: nil, longitude: nil)
      @markers = @marked_hostels.map do |hostel|
        {
        lat: hostel.latitude,
        lng: hostel.longitude
        # infoWindow: render_to_string(partial: "infowindow", locals: { hostel: hostel })
        }
      end
  end

  def show
    set_hostel
    # authorize @hostel
    @hostel = Hostel.find(params[:id])
    # @bookings = @hostel.bookings
    # map functionality below:

    @marked_hostel = @hostel
    @marker =
      {
        lat: @marked_hostel.latitude,
        lng: @marked_hostel.longitude
      }
      # added a map on the show page
  end

  def new
    @hostel = Hostel.new
    # authorize @hostel
  end

  def create
    @hostel = Hostel.new(hostel_params)
    @hostel.user = current_user
    # authorize @hostel
    if @hostel.save
      redirect_to hostel_path(@hostel)
    else
      render :new
    end
  end

  def update
    set_hostel
    authorize @hostel
    if @hostel = Hostel.update(hostels_params)
      redirect_to hostels_path, notice: 'Hostel was succesfully updated'
    else
      render :edit
    end
  end

  def edit
    set_hostel
    # authorize @hostel
  end

  def destroy
    set_hostel
    # authorize @hostel
    if @hostel.destroy!
      redirect_to hostels_path, notice: 'Hostel was succesfully removed'
    else
      render :index
    end
  end

  private

  def hostel_params
    params.require(:hostel).permit(:name, :address, :city_name)
  end

  def set_hostel
    @hostel = Hostel.find(params[:id])
  end

end
