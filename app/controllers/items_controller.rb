class ItemsController < ApplicationController

  def index
    # @ladies = Item.whwre(category1: ladies)
    # @mens = Item.where(category1: mens)


  end

  def show
    @comment = Comment.new
   # @comments = @item.comments #.includes(:user)
  end
end


