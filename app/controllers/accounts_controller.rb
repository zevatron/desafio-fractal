class AccountsController < ApplicationController
  before_action :set_account, only: [:show, :update, :destroy]
  before_action :get_group

  def get_group
    @group = Group.find(params[:group_id])
  end

  # GET /accounts
  def index
    if params[:group_id].nil?
      @accounts = Account.all
    else
      @accounts = @group.accounts
    end

    render json: @accounts, except: [:created_at, :updated_at]
  end

  # GET /accounts/1
  def show
    render json: @account, except: [:created_at, :updated_at]
  end

  # POST /accounts
  def create
    @account = Account.new(account_params)
    @account.group = @group

    if @account.save
      render json: @account, status: :created, location: [@group,@account]
    else
      render json: @account.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /accounts/1
  def update
    @account.group = @group
    if @account.update(account_params)
      render json: @account
    else
      render json: @account.errors, status: :unprocessable_entity
    end
  end

  # DELETE /accounts/1
  def destroy
    @account.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_account
      @account = Account.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def account_params
      params.require(:account).permit(:athlete_id, :group_id, :status)
    end
end
