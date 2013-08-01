require 'spec_helper'

describe TopicsController do

  describe 'collection' do
    describe 'GET #index' do
      it 'gets all of the topics' do
        topic = create(:topic)
        get :index
        assigns(:topics).should eq [topic]
      end
    end

    describe 'GET #new' do
      let(:topic) {mock_model(Topic).as_new_record}
      before {topic.stub(:new).and_return(topic)}

      it 'saves the given topic as an instance variable' do
        get :new
        assigns(:topic).should be_a(Topic)
        assigns(:topic).should be_new_record

      end
      it 'renders the :new view' do
        get :new
        response.should render_template :new
      end
    end

    describe 'POST #create' do
      # let(:topic) {mock_model(Topic).as_null_object}
      # let(:my_topic){create(:topic2)}
      before do
        # Topic.stub(:new).and_return(topic)
      end

      context 'when save succeeds' do
        it 'saves the topic' do
          # p topic
          topic.should_receive(:save)
          post :create
        end
        it 'redirects to :index' do
          post :create, topic: {name: 'foo'}
          response.should redirect_to topics_path
        end
      end

      context 'when save fails' do
        it 'renders new page' do
          topic.should_receive(:save).and_return(false)
          post :create
          response.should render_template :new
        end
      end
    end


  end

  # describe 'member' do
  #   let(:topic) {create(:topic)}
  #   describe 'DELETE #destroy' do

  #     it "deletes the topic" do 
  #       topic.reload
  #       expect{ 
  #         delete :destroy, id: topic 
  #       }.to change{Topic.count}.by -1
  #      end 
  #     it "redirects to topics#index" do 
  #       delete :destroy, id: topic 
  #       response.should redirect_to topics_path
  #     end 

  #   end
  # end
  



end