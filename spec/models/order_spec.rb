require 'rails_helper'

describe Order, 'association' do
  it { should belong_to :account }
  it { should have_many :order_items }
end
