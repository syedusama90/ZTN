class CustomerDetailsController < ApplicationController
  before_action :set_customer_detail, only: %i[ show edit update destroy ]

  # GET /customer_details or /customer_details.json
  def index
    @customer_details = CustomerDetail.all
    @invoice_histories = InvoiceHistory.all
  end

  # GET /customer_details/1 or /customer_details/1.json
  def show
  end

  # GET /customer_details/new
  def new
    @customer_detail = CustomerDetail.new
  end

  # GET /customer_details/1/edit
  def edit
  end

  # POST /customer_details or /customer_details.json
  def create
    @customer_detail = CustomerDetail.new(customer_detail_params)

    respond_to do |format|
      if @customer_detail.save
        format.html { redirect_to @customer_detail, notice: "Customer detail was successfully created." }
        format.json { render :show, status: :created, location: @customer_detail }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @customer_detail.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /customer_details/1 or /customer_details/1.json
  def update
    respond_to do |format|
      if @customer_detail.update(customer_detail_params)
        format.html { redirect_to @customer_detail, notice: "Customer detail was successfully updated." }
        format.json { render :show, status: :ok, location: @customer_detail }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @customer_detail.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /customer_details/1 or /customer_details/1.json
  def destroy
    @customer_detail.destroy
    respond_to do |format|
      format.html { redirect_to customer_details_url, notice: "Customer detail was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_customer_detail
      @customer_detail = CustomerDetail.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def customer_detail_params
      params.require(:customer_detail).permit(:CustomerName, :POC, :BillingAddress, :InstallationAddress, :AttendentContact)
    end
end
