def one_two_three
    yield 5
    yield 5
    yield 5
  end
  one_two_three { |number| puts number + 2 }

# block calling by method name
