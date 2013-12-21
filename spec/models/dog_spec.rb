require 'spec_helper'

describe Dog do
  it { should validate_presence_of :name }
end
