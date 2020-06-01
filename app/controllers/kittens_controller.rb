class KittensController < ApplicationController
  before_action :authorize, only: [:secret]

  def secret
  end

  def index
    @kittens = Kitten.see_kitten
    render :index

  end

  def new
    @kitten = Kitten.new
    render :new
  end
  
  def create
    @kitten = Kitten.new(kitten_params)
    if @kitten.save
      flash[:notice] = "Kitten was successfully added!"
      redirect_to kittens_path
    else
      render :new
    end
  end

  def edit
    @kitten = Kitten.find(params[:id])
    render :edit
  end

  def show
    @kitten = Kitten.find(params[:id])
    render :show
  end

  def update
    @kitten = Kitten.find(params[:id])
    if @kitten.update(kitten_params)
    redirect_to kittens_path
    else
      render :edit
    end
  end
  
  def destroy
    @kitten = Kitten.find(params[:id])
    @kitten.destroy
    redirect_to kittens_path
  end

  private
  def kitten_params
    params.require(:kitten).permit(:name)
  end

end