class VaccinationLogsController < ApplicationController
  before_action :authenticate_medical_user!,only:[:new, :create, :edit, :update, :destroy]
  before_action :move_to_index, only: [:edit, :update, :destroy]

  def index
    @vaccination_logs = VaccinationLog.includes(:medical_user).order("created_at DESC")
    @today = Date.current
    @today_vaccination = VaccinationLog.where(vaccination_date: @today ).count
    @first_vaccination = VaccinationLog.where(vaccination_times: 1).where(vaccination_date: @today ).count
    @second_vaccination = VaccinationLog.where(vaccination_times: 2).where(vaccination_date: @today ).count
  end

  def index_log
    @vaccination_logs = VaccinationLog.includes(:medical_user).order("created_at DESC")
  end

  def passport
    @vaccination_logs = VaccinationLog.includes(:medical_user)
  end

  def search
    @vaccination_logs = VaccinationLog.search(params[:keyword])
  end

  def new
    @vaccination_log = VaccinationLog.new
  end

  def create
    @vaccination_log = VaccinationLog.new(vaccination_log_params)
    if  @vaccination_log.save
      redirect_to root_path
    else
      render :new
    end
  end

  def show
    @vaccination_log = VaccinationLog.find(params[:id])
  end

  def edit
    @vaccination_log = VaccinationLog.find(params[:id])
  end

  def update
    @vaccination_log = VaccinationLog.find(params[:id])
    @vaccination_log.update(vaccination_log_params)
    if  @vaccination_log.save
      redirect_to vaccination_log_path
    else
      render :edit
    end
  end

  def destroy
    @vaccination_log = VaccinationLog.find(params[:id])
    @vaccination_log.destroy
    redirect_to root_path
  end
  
  
  private

    def vaccination_log_params
      params.require(:vaccination_log).permit(:my_number,:manufacturer,:lot_number,:vaccination_date,:vaccination_times).merge(medical_user_id: current_medical_user.id)
    end

    def move_to_index
      @vaccination_log = VaccinationLog.find(params[:id])
      unless medical_user_signed_in? && current_medical_user.id == @vaccination_log.medical_user_id
        redirect_to action: :index
      end
    end
end
