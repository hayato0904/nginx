class NginxtestsController < ApplicationController
  before_action :set_nginxtest, only: %i[ show edit update destroy ]

  # GET /nginxtests or /nginxtests.json
  def index
    @nginxtests = Nginxtest.all
  end

  # GET /nginxtests/1 or /nginxtests/1.json
  def show
  end

  # GET /nginxtests/new
  def new
    @nginxtest = Nginxtest.new
  end

  # GET /nginxtests/1/edit
  def edit
  end

  # POST /nginxtests or /nginxtests.json
  def create
    @nginxtest = Nginxtest.new(nginxtest_params)

    respond_to do |format|
      if @nginxtest.save
        format.html { redirect_to @nginxtest, notice: "Nginxtest was successfully created." }
        format.json { render :show, status: :created, location: @nginxtest }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @nginxtest.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /nginxtests/1 or /nginxtests/1.json
  def update
    respond_to do |format|
      if @nginxtest.update(nginxtest_params)
        format.html { redirect_to @nginxtest, notice: "Nginxtest was successfully updated." }
        format.json { render :show, status: :ok, location: @nginxtest }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @nginxtest.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /nginxtests/1 or /nginxtests/1.json
  def destroy
    @nginxtest.destroy
    respond_to do |format|
      format.html { redirect_to nginxtests_url, notice: "Nginxtest was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_nginxtest
      @nginxtest = Nginxtest.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def nginxtest_params
      params.require(:nginxtest).permit(:title, :content)
    end
end
