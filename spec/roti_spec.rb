# frozen_string_literal: true

RSpec.describe Roti do
  it 'has a version number' do
    expect(Roti::VERSION).not_to be nil
  end

  it { expect(Roti.encode('Hello, world!')).to eq 'Igopt2 !x|wp.' }
  it { expect(Roti.decode('Igopt2 !x|wp.')).to eq 'Hello, world!' }
end
