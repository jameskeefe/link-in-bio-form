class ItemsController < ApplicationController
  def index
    @list_of_items = Item.all

    render({ :template => "item_templates/list" })
  end

  def input

    render({ :template => "item_templates/backdoor" })
  end

  def insert
    @linkurl = params[:query_link_url]
    @linkdes = params[:query_link_description]
    @thumburl = params[:query_thumbnail_url]

    # Create a new item
    new_item = Item.new
    new_item.link_url = @linkurl
    new_item.link_description = @linkdes
    new_item.thumbnail_url = @thumburl
    new_item.save

    # includes a redirect to homepage
    redirect_to("/")
  end 

end
