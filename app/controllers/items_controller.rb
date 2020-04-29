class ItemsController < ApplicationController
  
  def index
    # @ladies = Item.whwre(category1: ladies)
    # @mens = Item.where(category1: mens)


  end

  def new
    @item = Item.new
  end

  def create
    @item = Item.create
  end

  def show
    
  end
end
