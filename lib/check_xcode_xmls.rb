require 'check_xcode_xmls/version'
require 'check_xcode_xmls/arguments_parser.rb'
require 'check_xcode_xmls/shell_adapter.rb'

module CheckXcodeXmls
  class Error < StandardError; end
  # Your code goes here...

  def self.main(args)
    options = Parser.parse(args)

    shell = ShellAdapter.new
    result = shell.process_files(nil, options.input_directory)
    puts result
  end
end
