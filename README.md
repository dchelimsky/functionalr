# Functionalr

Pronounced "functionaler"

Playground/grab-bag of stuff to make Ruby programs more functional. Completely
unorganized, unrecommended, and unsupported.

## Installation

Until this is released (probably never):

    git clone https://github.com/dchelimsky/functionalr.git
    cd functionalr
    gem build functionalr.gemspec
    gem install functionalr-0.0.1.alpha

## Usage

### ImmutableStruct

In a DDD model, values should be immutable.

    Person = Functionalr::ImmutableStruct.new(:first_name, :last_name)
    person = Person.new("David", "Chelimsky")
    person.first_name = "Dave"
    # => can't modify frozen ...

### Hash extensions

#### Disclaimer

These funtions are added to instances of `Hash` - not a very functional approach,
but the idea is to be able to pipleline them with other `Hash` functions e.g.

    {a: 1, b: 2, c: 3}.
      reject {|k,v| v > 2}.
      update_vals {|v| v * 2}
    # => {a: 2, b: 4}

#### `Hash#update_vals`

Port of `update-vals` from https://github.com/jaycfields/jry

    require 'functionalr'
    {a: 1, b:2}.update_vals {|v| v * 2}
    # => {a: 2, b: 4}

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
