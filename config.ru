require './app'
log = File.new("logs/hackme.log", "a")
STDOUT.reopen(log)
STDERR.reopen(log)
run Hackme
