require 'player'
require 'game'

describe Game do

  subject(:game) { described_class.new }


  describe '#attack' do
    it 'calls damage on the player' do
      player = double('player')
      expect(player).to receive(:damage).and_return('player hurt')
      expect(game.attack(player)).to eq('player hurt')
    end
  end
end
