require 'player'

describe Player do

  subject(:player) { described_class.new('Lola') }

  context 'when initialized' do
    it 'has a name' do
      expect(player.name).to eq 'Lola'
    end
    it 'has maximum hit points' do
      expect(player.hit_points).to eq Player::MAX_HP
    end
  end

end
