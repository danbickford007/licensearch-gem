# Licensearch - API no longer available

This gem hooks into the licensearch.com API for state licenses. 


## Installation

Add this line to your application's Gemfile:

```ruby
gem 'licensearch'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install licensearch

## Usage

You must set the token environment variable to use this gem.

1. Sign up at http://www.licensearch.com
2. Get your token and set it as follows: `export TOKEN=abc123`
3. Query away!

```ruby
require 'licensearch'

Florida::Business.query({name: 'test'})
```

## Development

API docs can be found here: http://www.licensearch.com/build/index.html

Running specs: `rspec spec`

## Contributing

Please make an issue with a bug.

Please read the docs (http://www.licensearch.com/build/index.html) and contribute to building out this gem.

## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).

