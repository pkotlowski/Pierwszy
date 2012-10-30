class CommentsController < ApplicationController

  before_filter do
    @fortune = Fortune.find(params[:fortune_id])
  end

  def edit
    # logger.info("=========> COMMENTS / edit #{params[:id]}")
    @comment = @fortune.comments.find(params[:id])
  end

  def create
    # logger.info("=========> COMMENTS / create #{params[:comment]}")
    @comment = @fortune.comments.build(params[:comment])
    @comment.save
    respond_with(@fortune, @comment, :location => @fortune)
  end

  def update
    # logger.info("=========> COMMENTS / update #{params[:comment]}")
    @comment = @fortune.comments.find(params[:id])
    @comment.update_attributes(params[:comment])
    respond_with(@fortune, @comment, :location => @fortune)
  end

  def destroy
    # logger.info("=========> COMMENTS / destroy #{params[:id]}")
    @comment = @fortune.comments.find(params[:id])
    @comment.destroy
    respond_with(@fortune, @comment, :location => @fortune)
  end

end
