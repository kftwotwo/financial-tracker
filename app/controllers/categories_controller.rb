class CategoriesController < ApplicationController
  before_action :set_category, only: [:show, :edit, :update, :destroy]


  def index
    @categories = Category.all
  end

  def show
  end

  def new
    @category = Category.new
  end

  def edit
  end

  def create
    @category = Category.new(category_params)
      if @category.save
        redirect_to user_categories_path(current_user), notice: 'Category was successfully created.'
      else
        render :new
      end
  end

  def update
    respond_to do |format|
      if @category.update(category_params)
        format.html { redirect_to user_categories_path(current_user,@category), notice: 'Category was successfully updated.' }
        format.js
      else
        render :edit
      end
    end
  end

  def destroy
    @category.destroy
    respond_to do |format|
      format.html { redirect_to user_categories_path(current_user,@category), notice: 'Category was successfully destroyed.' }
      format.js
    end
  end

  private
    def set_category
      @category = Category.find(params[:id])
    end
    def category_params
      params.require(:category).permit(:name, :user_id)
    end
end
