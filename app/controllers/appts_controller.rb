class ApptsController < ApplicationController
  before_action :set_doc

  def index
    @doctors = @doc.appts
  end

  def new
    @users = User.all - @doc.users
    @appt = @doc.appts.new
  end

  def create
    @appt = @doc.appts.new(appt_params)
    if @appt.save
      redirect_to doc_path(@doc)
    else
      render :new
    end
  end
  
  def destroy
    @appt = @doc.appts.find(params[:id])
    @appt.destroy
    # redirect_to doc_appts_path(@doc)
    redirect_to doc_path(@doc)
  end

      private
      def set_doc
        @doc = Doc.find(params[:doc_id])
      end

      def appt_params
        params.require(:appt).permit(:date, :time, :user_id)
      end
end
