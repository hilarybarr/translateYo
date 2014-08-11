require 'rails_helper'

describe LanguagesController, :type => :controller do
  let(:language){FactoryGirl.create :language}
  let(:query){FactoryGirl.create :query}

  # context "GET show" do 
  # 	it "assigns queries for that language to equal @queries" do
  # 		expect(get :show, language_id: language.id).to eq(@queries)
  # 	end
  # end

end

