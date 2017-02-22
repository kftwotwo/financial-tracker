class TransactionsController < ApplicationController
  before_action :set_transaction, only: [:show, :edit, :update, :destroy]

  def index
    @transactions = Transaction.all
    @category = Category.find(params[:category_id])

  end
  def show
    @category = Category.find(params[:category_id])
  end

  def new
    @transaction = Transaction.new
    @category = Category.find(params[:category_id])
  end

  def edit
  end

  def create
    @transaction = Transaction.new(transaction_params)
    @category = Category.find(params[:category_id])

    respond_to do |format|
      if @transaction.save
        format.html { redirect_to category_transaction_path(@category, @transaction), notice: 'Transaction was successfully created.' }
        format.js
      else
        format.html { render :new }
        format.js
      end
    end
  end

  def update
    @category = Category.find(params[:category_id])
    respond_to do |format|
      if @transaction.update(transaction_params)
        format.html { redirect_to category_transaction_path(@category, @transaction), notice: 'Transaction was successfully updated.' }
        format.js
      else
        format.html { render :edit }
        format.js
      end
    end
  end

  def destroy
    @category = Category.find(params[:category_id])
    @transaction.destroy
    respond_to do |format|
      format.html { redirect_to category_transaction_path(@category, @transaction), notice: 'Transaction was successfully destroyed.' }
      format.js
    end
  end

  private
    def set_transaction
      @transaction = Transaction.find(params[:id])
    end
    def transaction_params
      params.require(:transaction).permit(:user_id, :category_id, :ammount, :name)
    end
end
