require 'rspec'
require './distance'

describe Distance do
  it "returns the shortest path" do
    edge_weights = {
      [0, 1] => 10,
      [1, 2] => 4,
      [2, 3] => 15,
      [3, 7] => 9,

      [0, 4] => 15,
      [4, 5] => 8,
      [5, 7] => 10,

      [0, 6] => 21,
      [6, 7] => 7,
    }

    sofa = Distance.new(edge_weights, *[0..7])
    expect(sofa.shortest_path(0, 7)).to eql [0, 6, 7]
  end

  it "still returns the shortest path" do
    edge_weights = {
      [0, 1] => 1,
      [1, 2] => 4,
      [2, 3] => 1,
      [3, 7] => 9,

      [0, 4] => 15,
      [4, 5] => 8,
      [5, 7] => 10,

      [0, 6] => 21,
      [6, 7] => 7,
    }

    sofa = Distance.new(edge_weights, *[0..7])
    expect(sofa.shortest_path(0, 7)).to eql [0, 1, 2, 3, 7]
  end

  it "returns nil if the target doesn't exist" do
    edge_weights = {
      [0, 1] => 1,
      [1, 2] => 4,
      [2, 3] => 1,
      [3, 7] => 9,

      [0, 4] => 15,
      [4, 5] => 8,
      [5, 7] => 10,

      [0, 6] => 21,
      [6, 7] => 7,
    }

    sofa = Distance.new(edge_weights, *[0..7])
    expect(sofa.shortest_path(0, 8)).to eql nil
  end
end