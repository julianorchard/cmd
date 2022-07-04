#!/usr/bin/env ruby

# File:        hack.rb
# Author:      Julian Orchard <hello@julianorchard.co.uk>
# Tag Added:   2022-07-04
# Description: Can't always use the other one because I can't use Ruby modules on
#              my work machine, only standard library.

require 'colorize'

def finish_hack
  puts "\nHack progress at 100%.".red.underline
  if ARGV.empty?
    puts "\n\n   --->>   HACK COMPLETE.\n".green.bold
  else
    puts "\n\n   --->>   HACK OF ".green.bold + ARGV.join(" ").upcase.light_green.italic + " COMPLETE.\n".green.bold
  end
  exit
end

def main
  na = ["5","11","19","30","36","41","52","69","74","88","96","99","100"]
  colors = ["green","cyan","light_blue","light_cyan","light_green"]
  c = 0
  loop do
    begin
      sleep(1.0/5.0)
      case rand(0..7)
      when 0..5
        lc = rand(5..12)
        i = 0
        puts "\n"
        loop do
          i = i + 1
          quickvar = ('!'..'~').to_a.shuffle[0,rand(7..200)].join
          puts quickvar.to_s.send(colors.sample)
          break if i == lc
        end
      when 6
        puts "\nGenerating hack string...\n"
      when 7
        finish_hack if na[c] == "100"
        puts "\nThe Hack Is Currently Ongoing.".bold
        puts "Please do not touch the keyboard until the time is right.".bold
        puts "\nHack progress at ".bold + na[c].red.bold + "%.\n\n".bold
        c = c + 1
      end
    rescue Interrupt
      finish_hack
    end
  end
end

main
