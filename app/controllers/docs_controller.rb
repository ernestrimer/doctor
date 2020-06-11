class DocsController < ApplicationController
  before_action :set_doc, only: [:show, :edit, :update, :destroy]

  def index
    @docs = Doc.all
  end

  def show
    @doc_appts = @doc.appts
  end

  def new
    @doc = Doc.new
  end

  def create
    @doc = Doc.create(doc_params) #.create or .new?
    if @doc.save
      #May need to fix later:
      redirect_to docs_path
    else
      render :new
    end
  end

  def destroy
    @doc.destroy
    redirect_to ##
  end

  def edit
  end

  def update
    if @doc.update(doc_params)
        redirect_to doc_path
    else
      render :edit
    end
  end

  private
  def set_doc
    @doc = Doc.find(params[:id])
  end

  def doc_params
    params.require(:doc).permit(:dr_name, :dr_num)
  end
end
