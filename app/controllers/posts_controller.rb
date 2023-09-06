class PostsController < ApplicationController

  def index
    @plactice = Posts.new
  end

  def new
    @plactice = Posts.new(plactice_params)
  end

  def Create
    @plactice = Posts.new(plactice_params)
    @plactice.save
  end

  private

  def plactice_params
    params.require(:plactices).permit(:name)
  end
end
