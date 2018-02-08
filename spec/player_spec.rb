require 'player'

describe Player do

  subject(:player1) { described_class.new('Lola') }
  subject(:player2) { described_class.new('Julie') }


  context 'when initialized' do
    it 'has a name' do
      expect(player1.name).to eq 'Lola'
    end
    it 'has maximum hit points' do
      expect(player1.hit_points).to eq Player::MAX_HP
    end
  end

  describe '#attack' do
    it 'calls #damage on the other player' do
      expect(player2).to receive(:damage)
      player1.attack(player2)
    end
  end

  describe 'when attacked' do
    it 'loses 10 HP' do
      player1.attack(player2)
      expect(player2.hit_points).to eq Player::MAX_HP - Player::DEFAULT_DAMAGE
    end
  end

end
