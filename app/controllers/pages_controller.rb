class PagesController < ApplicationController
  # before_action :set_page, only: [:show, :edit, :update, :destroy]

  # GET /pages
  # GET /pages.json
  # def index
  #   @pages = Page.all
  # end

  # GET /pages/1
  # GET /pages/1.json
  def show
    @width ||= 800
    @height ||= 600
    # @page = Page.new
  end

  # def image
  #     @page = @page.image.attach(params[:image])
  # end

  # GET /pages/new
  # def new
  #   @page = Page.new
  # end

  # GET /pages/1/edit
  # def edit
  # end

  # POST /pages
  # POST /pages.json
  # def create
  #   @page = Page.new(page_params)
  #
  #   respond_to do |format|
  #     if @page.save
  #       format.html { redirect_to @page, notice: 'Page was successfully created.' }
  #       format.json { render :show, status: :created, location: @page }
  #     else
  #       format.html { render :new }
  #       format.json { render json: @page.errors, status: :unprocessable_entity }
  #     end
  #   end
  # end



  # PATCH/PUT /pages/1
  # PATCH/PUT /pages/1.json
  def update
     @size = params[:resolution]
     case @size[:res_string]
     when "640x480"
       @width = 640
       @height = 480
     when "800x600"
       @width = 800
       @height = 600
     when "1024x768"
       @width = 1024
       @height = 768
     end
     render :show
   end

  # DELETE /pages/1
  # DELETE /pages/1.json
  # def destroy
  #   @page.destroy
  #   respond_to do |format|
  #     format.html { redirect_to pages_url, notice: 'Page was successfully destroyed.' }
  #     format.json { head :no_content }
  #   end
  # end

  # private
    # Use callbacks to share common setup or constraints between actions.
    # def set_page
    #   @page = Page.find(params[:id])
    # end

    # Only allow a list of trusted parameters through.
    # def page_params
    #   params.require(:page).permit(:title, :content, :image)
    # end
end
