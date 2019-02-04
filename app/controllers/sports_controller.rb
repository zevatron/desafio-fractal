class SportsController < ApplicationController
  before_action :set_sport, only: [:show, :update, :destroy]

  swagger_controler :sports, "Gerenciamento de atividades esportivas"

  swagger_api :index do 
    sumary "Retorna todas as atividades cadastradas"
    notes "Atividades esportivas e suas regras..."
    response :success
    response :unprocessable_entity
    #response :500, "Internal Error"
  end

  swagger_api :show do
    summary "Retorna uma atividade"
    notes "Atividade esportivas e suas detalhes..."
    param :path, :id, :integer, :optional, "Sport id"
    response :ok, "Success", :Sport
    response :unauthorized
    response :not_acceptable
    response :not_found
  end



  # GET /sports
  def index
    @sports = Sport.all

    #render json: @sports
  end

  # GET /sports/1
  def show
    #render json: @sport
  end

  # POST /sports
  def create
    @sport = Sport.new(sport_params)

    if @sport.save
      render json: @sport, status: :created, location: @sport
    else
      render json: @sport.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /sports/1
  def update
    if @sport.update(sport_params)
      render json: @sport
    else
      render json: @sport.errors, status: :unprocessable_entity
    end
  end

  # DELETE /sports/1
  def destroy
    @sport.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_sport
      @sport = Sport.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def sport_params
      params.require(:sport).permit(:nome, :descricao, :regra)
    end
end
