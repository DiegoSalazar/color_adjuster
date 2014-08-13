require "color_adjuster/version"

# Include this module in a class that responds to #color and returns a hex string
module ColorAdjuster
  # Amount should be a decimal between 0 and 1. Lower means darker
  def darken_color(amount = 0.4)
    rgb = color.gsub('#','').scan(/../).map(&:hex)
    rgb[0] = (rgb[0].to_i * amount).round
    rgb[1] = (rgb[1].to_i * amount).round
    rgb[2] = (rgb[2].to_i * amount).round
    "#%02x%02x%02x" % rgb
  end

  # Amount should be a decimal between 0 and 1. Higher means lighter
  def lighten_color(amount = 0.3)
    rgb = color.gsub('#','').scan(/../).map(&:hex)
    rgb[0] = [(rgb[0].to_i + 255 * amount).round, 255].min
    rgb[1] = [(rgb[1].to_i + 255 * amount).round, 255].min
    rgb[2] = [(rgb[2].to_i + 255 * amount).round, 255].min
    "#%02x%02x%02x" % rgb
  end

  def contrasting_color
    brightness > 382.5 ? darken_color(0.2) : lighten_color(0.6)
  end

  def brightness
    color.scan(/../).map(&:hex).inject(0) { |sum, i| sum += i }
  end
end
