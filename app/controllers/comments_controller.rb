class CommentsController < ApplicationController
	# before_action :set_comment, only: [:show, :edit,]

	def index
    @comments = Comment.all
	end

  def show
  end

  def new
    @comment = Comment.new
  end

  def edit
  end


	def create
    @comment = Comment.new(post_params)

    respond_to do |format|
      if @comment.save
        format.html { redirect_to @comment, notice: 'Comment was successfully created.' }
        format.json { render :show, status: :created, location: @comment }
      else
        format.html { render :new }
        format.json { render json: @comment.errors, status: :unprocessable_entity }
      end
    end
  end



end
