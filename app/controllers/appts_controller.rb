class ApptsController < ApplicationController
  def index
    @doctors = @doc.appts.where()
  end

  def new
    @appt = @doc.appts.new
  end

  def create
    @appt = @doc.appts.new(appt_params)
    if @appt.save
      redirect_to doc_appts_path(@doc)
    else
      render :new
    end
  
    def destroy
      @appt = @doc.appts.find(params[:id])
      @appt.destroy
      redirect_to doc_appts_path(@doc)

      private
      def set_doc
        @doc = Doc.find(params[:doc_id])
      end

      def appts_params
        params.require(:appts).permit(:dr_name, :user_id)
      end
end
