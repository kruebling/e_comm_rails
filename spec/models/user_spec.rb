require 'rails_helper'

describe User, 'association' do
  it { should have_one :account }
end
