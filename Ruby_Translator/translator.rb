require_relative "lib/transl"

print "Type the language of your text [from]: "
from = gets.chomp
print "Type the language what you want translate [to]: "
to = gets.chomp
print "Type your text: "
text = gets.chomp

translator = Translator.new
text_translated = translator.translate(from, to, text)

puts text_translated.text
