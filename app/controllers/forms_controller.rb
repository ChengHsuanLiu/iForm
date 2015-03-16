class FormsController < ApplicationController
  before_action :authenticate_admin!
  def index
    @forms = Form.all
  end

  def show
    @form = Form.find(params[:id])
  end

  def new
    @form = Form.new
  end

  def create
    @form = Form.new(form_params)
    if @form.save
      redirect_to forms_path
    else
      render :new
    end
  end

  private
    def form_params
      params.require(:form).permit(:name)
    end

end
