require 'spec_helper'

describe Cart do
  it { should have_many(:products).through(:session_items)}
end
