class PagesController < ApplicationController

  def new
    @page=Page.new
  end

  def create
    @page=Page.new(page_params)
    if @page.save
      redirect_to @page
    else
      render :new
    end
  end

  def show
    @page = Page.find(params[:id])
  end

  def home
  end

  def index
    @pages=Page.all
  end

  private
    def page_params
      params.require(:page).permit!
    end
end
