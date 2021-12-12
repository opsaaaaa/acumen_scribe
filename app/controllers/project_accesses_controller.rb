class ProjectAccessesController < ApplicationController
  before_action :set_project_access, only: %i[ show edit update destroy ]

  # GET /project_accesses or /project_accesses.json
  def index
    @project_accesses = ProjectAccess.all
  end

  # GET /project_accesses/1 or /project_accesses/1.json
  def show
  end

  # GET /project_accesses/new
  def new
    @project_access = ProjectAccess.new
  end

  # GET /project_accesses/1/edit
  def edit
  end

  # POST /project_accesses or /project_accesses.json
  def create
    @project_access = ProjectAccess.new(project_access_params)

    respond_to do |format|
      if @project_access.save
        format.html { redirect_to @project_access, notice: "Project access was successfully created." }
        format.json { render :show, status: :created, location: @project_access }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @project_access.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /project_accesses/1 or /project_accesses/1.json
  def update
    respond_to do |format|
      if @project_access.update(project_access_params)
        format.html { redirect_to @project_access, notice: "Project access was successfully updated." }
        format.json { render :show, status: :ok, location: @project_access }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @project_access.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /project_accesses/1 or /project_accesses/1.json
  def destroy
    @project_access.destroy
    respond_to do |format|
      format.html { redirect_to project_accesses_url, notice: "Project access was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_project_access
      @project_access = ProjectAccess.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def project_access_params
      params.require(:project_access).permit(:user_id, :project_id, :access)
    end
end
