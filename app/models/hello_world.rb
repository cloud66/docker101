class HelloWorld < ActiveRecord::Base

	TEXT = 'Hello World'


	def self.generate_new(text: nil)
		text ||= TEXT
		size = 60 + rand(40)
		y_top = 40+ size + rand(500)
		x_left = size + rand(800)

		# color = 'ff0000'
		color = '0000ff'		

		color = darken_color(color, rand)
		rotation = -80.0 + rand(160.0)

		HelloWorld.create(text: text,
						  y_top: y_top,
						  x_left: x_left,
						  size: size,
						  color: color,
						  rotation: rotation)
	end

	private

	#source http://www.redguava.com.au/2011/10/lighten-or-darken-a-hexadecimal-color-in-ruby-on-rails/
	# Amount should be a decimal between 0 and 1. Lower means darker
	def self.darken_color(hex_color, amount=0.4)
		hex_color = hex_color.gsub('#', '')
		rgb = hex_color.scan(/../).map { |color| color.hex }
		rgb[0] = (rgb[0].to_i * amount).round
		rgb[1] = (rgb[1].to_i * amount).round
		rgb[2] = (rgb[2].to_i * amount).round
		'#%02x%02x%02x' % rgb
	end

	#source http://www.redguava.com.au/2011/10/lighten-or-darken-a-hexadecimal-color-in-ruby-on-rails/
	# Amount should be a decimal between 0 and 1. Higher means lighter
	def self.lighten_color(hex_color, amount=0.6)
		hex_color = hex_color.gsub('#', '')
		rgb = hex_color.scan(/../).map { |color| color.hex }
		rgb[0] = [(rgb[0].to_i + 255 * amount).round, 255].min
		rgb[1] = [(rgb[1].to_i + 255 * amount).round, 255].min
		rgb[2] = [(rgb[2].to_i + 255 * amount).round, 255].min
		'#%02x%02x%02x' % rgb
	end

end
