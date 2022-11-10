require_relative "lib/transl"

print "Type the language of your text [from]: "
from = gets.chomp
print "Type the language what you want translate [to]: "
to = gets.chomp
print "Type your text: "
text = gets.chomp

translator = Translator.new
text_translated = translator.translate(from, to, text)

def to_file
    time = Time.new
    nome_arquivo = time.strftime('%d-%m-%y_%H:%M') + '.txt'
    File.open(nome_arquivo, 'w') do |line|
      line.puts text
      line.puts text_translated
    end
end

puts text_translated.text
to_file