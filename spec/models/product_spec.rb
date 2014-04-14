require 'spec_helper'

describe Product do
  it { should have_many(:carts).through(:items)}
end
