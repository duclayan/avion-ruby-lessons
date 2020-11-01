# Inheritance
class GenericParser
    def parse 
        raise NotImplementedError, "You must implement the parse method"
    end
end

class JsonParser < GenericParser
    def parse
        puts "An instance of the JsonParser class received the parse message"
    end
end

class XmlParser < GenericParser
    def parse
        puts "An instance of the XmlParser class receive the parse message"
    end
end
puts "Using the XML Parser"
parser = XmlParser.new
parser.parse

puts "Using the JSON Parser"
parser = JsonParser.new
parser.parse

# DuckTyping

class GenericParser 
    def parse(parser)
        parser.parse
    end
end

class XmlParser
    def parse
        puts "An instance of the XmlParser class received the parse message"
    end
end

class JsonParser
    def parse
        puts "An instance of the JsonParser class received the parse message"
    end
end

parsedata = GenericParser.new
puts "This is an XmlParser"
parsedata.parse(XmlParser.new)
puts "This is a JsonParser"
parsedata.parse(JsonParser.new)

# Decorator Pattern

class Parser 
    def parse 
        puts "The Parser class received the parse method"
    end
end

class XmlParser
  def initialize(parser)
    @parser = parser
  end

  def parse
    @parser.parse
    puts 'An instance of the XmlParser class received the parse message'
  end
end

class JsonParser
    def initialize(parser)
      @parser = parser
    end
  
    def parse
      puts 'An instance of the JsonParser class received the parse message'
      @parser.parse
    end
end

puts 'Using the Xml Parser'
parser = Parser.new
XmlParser.new(parser).parse

puts 'Using both Parsers!'
JsonParser.new(XmlParser.new(parser)).parse