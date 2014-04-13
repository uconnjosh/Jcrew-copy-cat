require 'spec_helper'

describe Product do
  it { should have_many(:carts).through(:session_items)}
end
