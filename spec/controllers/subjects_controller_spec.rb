require 'spec_helper'

describe SubjectsController do

  describe 'collection' do
    describe 'GET #index' do
      it 'gets all of the subjects' do
        subject = create(:subject)
        get :index
        assigns(:subjects).should eq [subject]
      end
    end

    describe 'GET #new' do
      let(:subject) {mock_model(Subject).as_new_record}
      before {subject.stub(:new).and_return(subject)}

      it 'saves the given subject as an instance variable' do
        get :new
        assigns(:subject).should be_a(Subject)
        assigns(:subject).should be_new_record

      end
      it 'renders the :new view' do
        get :new
        response.should render_template :new
      end
    end

    describe 'POST #create' do
      # let(:subject) {mock_model(Subject).as_null_object}
      # let(:my_subject){create(:subject2)}
      before do
        # Subject.stub(:new).and_return(subject)
      end

      context 'when save succeeds' do
        it 'saves the subject' do
          # p my_subject
          new_subject.should_receive(:save)
          post :create
        end
        it 'redirects to :index' do
          post :create, new_subject: {name: 'foo'}
          response.should redirect_to subjects_path
        end
      end

      # context 'when save fails' do
      #   it 'renders new page' do
      #     subject.should_receive(:save).and_return(false)
      #     post :create
      #     response.should render_template :new
      #   end
      # end
    end


  end

  # describe 'member' do
  #   let(:subject) {create(:subject)}
  #   describe 'DELETE #destroy' do

  #     it "deletes the subject" do 
  #       subject.reload
  #       expect{ 
  #         delete :destroy, id: subject 
  #       }.to change{Subject.count}.by -1
  #      end 
  #     it "redirects to subjects#index" do 
  #       delete :destroy, id: subject 
  #       response.should redirect_to subjects_path
  #     end 

  #   end
  # end
  



end