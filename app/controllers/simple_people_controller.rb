class SimplePeopleController < ApplicationController
  def new
    @form = SimplePeopleForm.new
  end
  def create
    @form = SimplePeopleForm.new(params[:simple_people_form])
    if @form.save
      redirect_to person_path(@form.person)
    else
      render action: :new
    end
  end
end
