require 'rails_helper'

describe Product, 'association' do
  it { should have_many :order_items }
end
