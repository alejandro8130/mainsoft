class TiposDocumentosController < ApplicationController
  before_action :set_tipos_documento, only: [:show, :edit, :update, :destroy]

  # GET /tipos_documentos
  # GET /tipos_documentos.json
  def index
    @tipos_documentos = TiposDocumento.search(params[:search], params[:page])
  end

  # GET /tipos_documentos/1
  # GET /tipos_documentos/1.json
  def show
  end

  # GET /tipos_documentos/new
  def new
    @tipos_documento = TiposDocumento.new
  end

  # GET /tipos_documentos/1/edit
  def edit
  end

  # POST /tipos_documentos
  # POST /tipos_documentos.json
  def create
    @tipos_documento = TiposDocumento.new(tipos_documento_params)

    respond_to do |format|
      if @tipos_documento.save
        format.html { redirect_to @tipos_documento, notice: 'El Tipo de Documento se ha creado correctamente.' }
        format.json { render :show, status: :created, location: @tipos_documento }
      else
        format.html { render :new }
        format.json { render json: @tipos_documento.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /tipos_documentos/1
  # PATCH/PUT /tipos_documentos/1.json
  def update
    respond_to do |format|
      if @tipos_documento.update(tipos_documento_params)
        format.html { redirect_to @tipos_documento, notice: 'El Tipo de Documento se ha actualizado correctamente.' }
        format.json { render :show, status: :ok, location: @tipos_documento }
      else
        format.html { render :edit }
        format.json { render json: @tipos_documento.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /tipos_documentos/1
  # DELETE /tipos_documentos/1.json
  def destroy
    @tipos_documento.destroy
    respond_to do |format|
      format.html { redirect_to tipos_documentos_url, notice: 'El Tipo de Documento se ha eliminado correctamente.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_tipos_documento
      @tipos_documento = TiposDocumento.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def tipos_documento_params
      params.require(:tipos_documento).permit(:nombre)
    end
end
