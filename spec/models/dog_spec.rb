require 'spec_helper'

describe Dog do
  it { should validate_presence_of :name }

  it { should have_many(:dog_ownerships).dependent(:destroy) }
  it { should have_many(:owners).through(:dog_ownerships) }
end
