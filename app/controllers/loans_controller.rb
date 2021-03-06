class LoansController < ApplicationController
  before_action :set_loan, only: [:show, :edit, :update, :destroy]

  def index
    @loans = Loan.all
  end

  def show
  end

  def new
    @loan = Loan.new
  end

  def edit
  end

  def create
    @loan = Loan.new(loan_params)

    respond_to do |format|
      if @loan.save
        format.html { redirect_to loans_path, notice: 'Loan was successfully created.' }
        format.json { render :show, status: :created, location: @loan }
      else
        format.html { render :new }
        format.json { render json: @loan.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    respond_to do |format|
      if @loan.update(loan_params)
        format.html { redirect_to loans_path, notice: 'Loan was successfully updated.' }
        format.json { render :show, status: :ok, location: @loan }
      else
        format.html { render :edit }
        format.json { render json: @loan.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @loan.destroy
    respond_to do |format|
      format.html { redirect_to loans_url, notice: 'Loan was successfully destroyed.' }
      format.json { head :no_content }
    end
  end
  
  def stock
    @loans = Loan.all
  end
  
  def complete
    @loan = Loan.find(params[:id])
    time = Time.now
    @loan.update_attribute(:completed_at, time.to_formatted_s(:short))
    redirect_to loans_path, notice: "Loan archived as complete"
  end
  
  def archived
    @loans = Loan.all
  end

  private
    def set_loan
      @loan = Loan.find(params[:id])
    end

    def loan_params
      params.require(:loan).permit(:customer, :printer, :serial_number, :shipped_date, :details, :psu_type, :psu_serial_number, :contact_name, :address, :tel_number, :completed_at)
    end
end
