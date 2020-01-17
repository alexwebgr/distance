## Description
Represent this graph in Ruby and use Dijkstra's shortest path algorithm to show the fastest route from 0 to 7

```
digraph distances {
 rankdir=LR;
 size="8,5" node [shape = circle];
 0 -> 1 [ label = "10" ];
 1 -> 2 [ label = "4" ];
 2 -> 3 [ label = "15" ];
 3 -> 7 [ label = "9" ];

 0 -> 4 [ label = "15" ];
 4 -> 5 [ label = "8" ];
 5 -> 7 [ label = "10" ];

 0 -> 6 [ label = "21" ];
 6 -> 7 [ label = "7" ];
}
```

[http://www.webgraphviz.com/](http://www.webgraphviz.com/)


## Usage
* Install dependencies with `bundle install`
* Run the script with `ruby distance.rb`
* Run the test with `rspec distance.rb`

## FAQ
Q: Why did you use a gem?
A: Because i didn't want to reinvent the wheel and i don't see the point in producing a solution which would probably be inferior and incomplete 
compared to a complete, peer-reviewed and battled-tested solution by a group of people who have spend more than seven years researching and building it. 

Similar to why you shouldn't roll your authentication solution https://security.stackexchange.com/questions/18197/why-shouldnt-we-roll-our-own   