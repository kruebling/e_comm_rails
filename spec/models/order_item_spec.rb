require 'rails_helper'

describe OrderItem, 'association' do
  it { should belong_to :product }
  it { should belong_to :order }
end
