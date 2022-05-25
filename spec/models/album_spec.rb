require 'rails_helper'

describe Album do
  it { should have_many(:songs) }

  it { should validate_presence_of :name }
end