require 'rails_helper'

describe QueriesController, :type => :controller do
  let(:language){FactoryGirl.create :language}
  let(:query){FactoryGirl.create :query}

  # context "GET #index" do
  # 	it "assigns all queries for that language to @queries" do
  # 		expect(get :index, language_id: language.id).to eq(@queries)
  # 	end
  # end

  context "POST #create" do 
    it "increments the Query count" do
      get :new, language_id: language.id
      expect{Query.create(:title => "Test", :english => "hey", other: "bonjour", :language_id => 2)}.to change{Query.count}.by(1)
    end
  end

  context "POST #bing_create" do
  	it "increments the Query count" do
  		expect { 
				post :bing_create, language_id: language.id, query: { :title => "Test", :english => "hey" } 
				}.to change{Query.count}.by(1)
  	end
  end
end