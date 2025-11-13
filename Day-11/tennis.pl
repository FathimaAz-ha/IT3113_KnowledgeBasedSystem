% Simple dataset for decision tree learning
% Format: example(Weather, Temperature, Play).

example(sunny, hot, no).
example(sunny, mild, no).
example(overcast, hot, yes).
example(rainy, mild, yes).
example(rainy, cool, yes).
example(overcast, cool, yes).

value(weather, [sunny, overcast, rainy]).
value(temperature, [hot, mild, cool]).
