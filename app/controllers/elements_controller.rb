class ElementsController < ApplicationController

  def create
    element = Element.new params[:element].permit(:todo, :list_id)
    if element.save
      redirect_to lists_path
    else
      redirect_to lists_path, alert: element.errors.full_messages[0]
    end
  end


  def destroy
    element = Element.find params[:id]
    element.destroy
    redirect_to lists_path
  end


  def done
    element = Element.find params[:id]
    if element.update_attribute :done, true
      redirect_to lists_path, notice: 'Todo item is marked as complete.'
    else
      redirect_to lists_path, alert: element.errors.full_messages[0]
    end
  end


end
