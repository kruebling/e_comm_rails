require 'rails_helper'

describe Account, 'association' do
  it { should belong_to :user }
  it { should have_many :orders }
end
