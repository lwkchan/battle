require 'player'

describe Player do

  subject(:player) { described_class.new('Lola') }

  describe 
  it 'has a name' do
    expect(player.name).to eq 'Lola'
  end
end