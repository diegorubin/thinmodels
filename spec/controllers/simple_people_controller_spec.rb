require 'rails_helper'

RSpec.describe SimplePeopleController, :type => :controller do
  describe 'GET new' do

    it 'render form' do
      get :new
      expect(assigns(:form)).to_not be_nil 
    end

  end
end
