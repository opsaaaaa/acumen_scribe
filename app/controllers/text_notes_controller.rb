class TextNotesController < BackendController
  before_action :set_text_note, only: %i[ show edit update destroy ]

  # GET /text_notes or /text_notes.json
  def index
    @text_notes = TextNote.all
  end

  # GET /text_notes/1 or /text_notes/1.json
  def show
  end

  # GET /text_notes/new
  def new
    @text_note = TextNote.new
  end

  # GET /text_notes/1/edit
  def edit
  end

  # POST /text_notes or /text_notes.json
  def create
    @text_note = TextNote.new(text_note_params)

    respond_to do |format|
      if @text_note.save
        format.html { redirect_to @text_note, notice: "Text note was successfully created." }
        format.json { render :show, status: :created, location: @text_note }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @text_note.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /text_notes/1 or /text_notes/1.json
  def update
    respond_to do |format|
      if @text_note.update(text_note_params)
        format.html { redirect_to @text_note, notice: "Text note was successfully updated." }
        format.json { render :show, status: :ok, location: @text_note }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @text_note.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /text_notes/1 or /text_notes/1.json
  def destroy
    @text_note.destroy
    respond_to do |format|
      format.html { redirect_to text_notes_url, notice: "Text note was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_text_note
      @text_note = TextNote.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def text_note_params
      params.require(:text_note).permit(:body, :order, :size, :color, :board_id)
    end
end
