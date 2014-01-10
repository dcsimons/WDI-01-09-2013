# file path:

require 'pry'

class MalformedStoryError < ArgumentError

end

begin
	throw MalformedStoryError.new("Your story was malformed")

rescue MalformedStoryError => myerror
	puts "Got a malformed story #{myerror}."
ensure
	puts "This code is run no matter what."

end