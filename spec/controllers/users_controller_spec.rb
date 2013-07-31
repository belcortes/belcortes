require 'spec_helper'

describe UsersController do
  subject {UsersController}
  it {should < ApplicationController}

  describe 'collection' do

    describe 'GET #index' do
      it 'assigns all users to an instance variable' do
        user = create(:user)
        user2 = create(:user2)
        get :index
        assigns(:users).should eq [user, user2]
      end
    end
  end


end