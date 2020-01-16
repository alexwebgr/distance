require 'rgl/adjacency'
require 'rgl/traversal'
require 'rgl/dijkstra'

class Distance
  attr_accessor :graph
  attr_accessor :edge_weights

  def initialize(edge_weights, vertices)
    @graph = RGL::DirectedAdjacencyGraph.new
    @graph.add_vertices(vertices)
    @edge_weights = edge_weights
    @edge_weights.each { |(point1, point2), w| @graph.add_edge(point1, point2) }
  end

  def shortest_path(s, t)
    @graph.dijkstra_shortest_path(@edge_weights, s, t)
  end
end
