class Admin::PlayersController < AdminController
  before_action :set_admin_player, only: [:show, :edit, :update, :destroy]

  # GET /admin/players
  # GET /admin/players.json
  def index
    @admin_players = Player.all
  end

  # GET /admin/players/1
  # GET /admin/players/1.json
  def show
  end

  # GET /admin/players/new
  def new
    @admin_player = Player.new
  end

  # GET /admin/players/1/edit
  def edit
  end

  # POST /admin/players
  # POST /admin/players.json
  def create
    @admin_player = Player.new(admin_player_params)

    respond_to do |format|
      if @admin_player.save
        format.html { redirect_to @admin_player, notice: 'Player was successfully created.' }
        format.json { render :show, status: :created, location: @admin_player }
      else
        format.html { render :new }
        format.json { render json: @admin_player.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /admin/players/1
  # PATCH/PUT /admin/players/1.json
  def update
    respond_to do |format|
      if @admin_player.update(admin_player_params)
        format.html { redirect_to @admin_player, notice: 'Player was successfully updated.' }
        format.json { render :show, status: :ok, location: @admin_player }
      else
        format.html { render :edit }
        format.json { render json: @admin_player.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /admin/players/1
  # DELETE /admin/players/1.json
  def destroy
    @admin_player.destroy
    respond_to do |format|
      format.html { redirect_to admin_players_url, notice: 'Player was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_admin_player
      @admin_player = Player.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def admin_player_params
      params.fetch(:admin_player, {})
    end
end
