require './distance'
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
p sofa.shortest_path(0, 7)