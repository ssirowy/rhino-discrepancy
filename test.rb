require 'rhino'

Rhino::Context.open do |context|

  context.load("ssf.js")

  # Create a simple way for JS to write out to console.
  context["dump"] = lambda {|str| puts str}

  # Will be found
  puts context["SSF"]["currencySymbols"].call('$');

  # This one wont be found
  puts context["SSF"]["currencySymbols"].call('€');
end
