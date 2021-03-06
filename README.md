# ColorAdjuster

A tiny module mixin for adding color adjusting methods to a class that responds to `color`.

## Installation

Add this line to your application's Gemfile:

    gem 'color_adjuster'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install color_adjuster

## Usage

Drop this module in a model or class that responds to `color` and returns a hex string:

```ruby
require 'color_adjuster'

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

You can also pass in an amount to darken/lighten by. For `darken_color` lower is darker. For `lighten_color` higher is lighter. The defaults are 0.4 and 0.3, respectively.

```ruby
status.darken_color 0.6  # => "#990000"
status.lighten_color 0.7 # => "#ffb3b3"
```

Thanks to [this blog post](http://www.redguava.com.au/2011/10/lighten-or-darken-a-hexadecimal-color-in-ruby-on-rails/) for the code.

## Contributing

1. Fork it ( https://github.com/DiegoSalazar/color_adjuster/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request
