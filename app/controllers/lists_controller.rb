class ListsController < ApplicationController

  def index
  @lists = List.order('id desc')
  end


  def new
  @list = List.new
  end


  def create
    @list = List.new params[:list].permit(:title)

    if @list.save
      redirect_to lists_path, notice: 'List successfully created.'
    else
      render action: "new"
    end
  end


  def edit
  @list = List.find params[:id]
  end


  def update
    @list = List.find params[:id]
    if @list.update_attributes(params[:list].permit(:title))
      redirect_to lists_path, notice: 'List was successfully updated.'
    else
      render action: "edit"
    end
  end


  def destroy
    list = List.find params[:id]
    list.destroy
    redirect_to lists_path, notice: 'List deleted'
  end

  def history
    @lists = List.order('id desc')
  end


end
