require 'player'
require 'game'

describe Game do

  subject(:game) { described_class.new(player_1, player_2) }
  let(:player_1) { double('player_1')                      }
  let(:player_2) { double('player_2')                      }

  context 'when initialized' do
    it 'assigns a player instance to player_1 attribute' do
      expect(game.player_1).to eq(player_1)
    end
    it 'assigns a player instance to player_2 attribute' do
      expect(game.player_2).to eq(player_2)
    end
  end

  describe '#attack' do
    it 'calls damage on the player' do
      player = double('player')
      expect(player).to receive(:damage).and_return('player hurt')
      expect(game.attack(player)).to eq('player hurt')
    end
  end
end
