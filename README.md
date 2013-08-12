# Functionalr

Playground/grab-bag of stuff to make Ruby programs more functional. Completely
unorganized, unrecommended, and unsupported.

## Installation

Add this line to your application's Gemfile:

    gem 'functionalr'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install functionalr

## Usage

### Hash Extensions

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
