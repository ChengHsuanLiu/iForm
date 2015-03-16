class FormsController < ApplicationController
  before_action :authenticate_user!
  def index
    @forms = current_user.forms
  end

  def show
    @form = Form.find(params[:id])
  end

  def new
    @form = Form.new
  end

  def create
    @form = current_user.forms.build(form_params)
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
