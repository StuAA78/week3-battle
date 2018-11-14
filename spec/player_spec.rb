require 'player'

describe Player do
  it 'expects Player.name to return a name' do
    player = Player.new("Sharon")
    expect(player.name).to eq "Sharon"
  end
end

describe Game do
  it 'expects the creationg a new Game to pass two players' do
    player1 = double (:player1)
    player2 = double (:player2)
    game = Game.new(player1, player2)
  expect(game.player_1).to eq player1
  expect(game.player_1).not_to eq player2
  end

end
