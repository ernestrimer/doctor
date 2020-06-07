class DocsController < ApplicationController
  before_action: set_user, only: [:show, :edit, :update, :destroy]

  def index
    @docs = Doc.all
  end

  def show
  end

  def new
    @doc = Doc.new
  end

  def Create
    @doc = Doc.create(doc_params) #.create or .new?
    if @doc.save
      #May need to fix later:
      @redirect_to @doc
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
      # do something
    else
      render :edit
    end
  end

  private
  def set_user
    @doc = Doc.find(params[:id])
  end

  def doc_params
    params.require(:doc).permit(:dr_name, :dr_num)
  end

end
