# ColorAdjuster

TODO: Write a gem description

## Installation

Add this line to your application's Gemfile:

    gem 'ColorAdjuster'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install ColorAdjuster

## Usage

Drop this module in a model or class that responds to `color` and returns a Hex string:

```ruby
class Status
  include ColorAdjuster

  def color
    "#ff0000"
  end
end
```

Now you can ask it to darken or lighten the color:

```ruby
status = Status.new
status.darken_color      # => "#660000"
status.lighten_color     # => "#ff4d4d"
status.contrasting_color # => "#ff9999"
```

Thanks to [this blog post](http://www.redguava.com.au/2011/10/lighten-or-darken-a-hexadecimal-color-in-ruby-on-rails/) for the code.

## Contributing

1. Fork it ( https://github.com/[my-github-username]/ColorAdjuster/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request
