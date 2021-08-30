class InvoiceHistoriesController < ApplicationController
  before_action :set_invoice_history, only: %i[ show edit update destroy ]

  # GET /invoice_histories or /invoice_histories.json
  def index
    @invoice_histories = InvoiceHistory.all
  end

  # GET /invoice_histories/1 or /invoice_histories/1.json
  def show
  end

  # GET /invoice_histories/new
  def new
    @invoice_history = InvoiceHistory.new
  end

  # GET /invoice_histories/1/edit
  def edit
  end

  # POST /invoice_histories or /invoice_histories.json
  def create
    @invoice_history = InvoiceHistory.new(invoice_history_params)

    respond_to do |format|
      if @invoice_history.save
        format.html { redirect_to @invoice_history, notice: "Invoice history was successfully created." }
        format.json { render :show, status: :created, location: @invoice_history }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @invoice_history.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /invoice_histories/1 or /invoice_histories/1.json
  def update
    respond_to do |format|
      if @invoice_history.update(invoice_history_params)
        format.html { redirect_to @invoice_history, notice: "Invoice history was successfully updated." }
        format.json { render :show, status: :ok, location: @invoice_history }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @invoice_history.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /invoice_histories/1 or /invoice_histories/1.json
  def destroy
    @invoice_history.destroy
    respond_to do |format|
      format.html { redirect_to invoice_histories_url, notice: "Invoice history was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_invoice_history
      @invoice_history = InvoiceHistory.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def invoice_history_params
      params.require(:invoice_history).permit(:invoiceMonth, :invoiveNumber, :invoiceAmount, :Paid)
    end
end
