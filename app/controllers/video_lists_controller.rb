class VideoListsController < ApplicationController
  http_basic_authenticate_with name: "ihs", password: "wbf", except: [:index, :show]
  
  before_action :set_video_list, only: [:show, :edit, :update, :destroy]

  # GET /video_lists
  # GET /video_lists.json
  def index
    @video_lists = VideoList.all
  end

  # GET /video_lists/1
  # GET /video_lists/1.json
  def show
  end

  # GET /video_lists/new
  def new
    @video_list = VideoList.new
  end

  # GET /video_lists/1/edit
  def edit
  end

  # POST /video_lists
  # POST /video_lists.json
  def create
    @video_list = VideoList.new(video_list_params)

    respond_to do |format|
      if @video_list.save
        format.html { redirect_to @video_list, notice: 'Video list was successfully created.' }
        format.json { render action: 'show', status: :created, location: @video_list }
      else
        format.html { render action: 'new' }
        format.json { render json: @video_list.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /video_lists/1
  # PATCH/PUT /video_lists/1.json
  def update
    respond_to do |format|
      if @video_list.update_attributes (video_list_params)
        format.html { redirect_to @video_list, notice: 'Video list was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @video_list.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /video_lists/1
  # DELETE /video_lists/1.json
  def destroy
    @video_list.destroy
    respond_to do |format|
      format.html { redirect_to video_lists_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_video_list
      @video_list = VideoList.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def video_list_params
      params.require(:video_list).permit(:date, :speaker, :title, :url_es, :url_msg)
    end
end
