class FortunesController < ApplicationController

  before_filter :only => [:index, :tags] do
    @tags = Fortune.tag_counts
  end

  def index
    @fortunes = Fortune.search(params[:search]).order(:author).page(params[:page]).per(2)
    respond_with(@fortunes)
  end

  # tags_fortunes GET /fortunes/tags {:action=>"tags", :controller=>"fortunes"}
  def tags
    # logger.info("=========> TAGS #{params[:name]}")
    @fortunes = Fortune.tagged_with(params[:name]).order(:author).page(params[:page]).per(4)
    respond_with(@fortunes) do |format|
      format.html { render :action => 'index' }
      format.js { render :action => 'index' }
    end
  end

  def show
    @fortune = Fortune.find(params[:id])
    @comment = Comment.new
    respond_with(@fortune)
  end

  def new
    @fortune = Fortune.new
    respond_with(@fortune)
  end

  def edit
    @fortune = Fortune.find(params[:id])
  end

  def create
    @fortune = Fortune.new(params[:fortune])
    @fortune.save
    respond_with(@fortune)
  end

  def update
    @fortune = Fortune.find(params[:id])
    @fortune.update_attributes(params[:fortune])
    respond_with(@fortune)
  end

  def destroy
    @fortune = Fortune.find(params[:id])
    @fortune.destroy
    respond_with(@fortune)
  end
end
