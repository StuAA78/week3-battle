require 'player'

describe Player do
  it 'expects Player.name to return a name' do
    player = Player.new("Sharon")
    expect(player.name).to eq "Sharon"
  end
end
