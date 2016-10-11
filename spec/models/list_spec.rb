require 'rails_helper'

describe List do
  it { should validate_presence_of :name }
  it { should have_many :tasks}



  it 'is private by default' do
    list = FactoryGirl.create(:list)
    visit new_list_path
    page.should have_content 'New List'
  end
end
