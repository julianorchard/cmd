#!/c/MAMP/bin/ruby/bin/ruby.exe
#####!/usr/bin/env ruby :(

#   File:        tidy
#   Author:      Julian Orchard <hello@julianorchard.co.uk>
#   Tag Added:   2022-05-09
#   Description: Script to sort marketing images on the
#                Wessex images drive.


def check_filename(file:)
  # Check Locations for Copies of Files
  puts file
end


def tidy_filename
  # From tidy.rb Script

  Dir.glob(working_dir) do |current_file|
    next if current_file == "." or current_file == ".." or File.directory?(current_file)
    file_rename = current_file

  # Brackets
    file_rename = file_rename.gsub("(", "").gsub(")", "") if b_flag == true

  # Spaces
    file_rename = file_rename.gsub(" ", "-") if s_flag == true

  # Lowercase
    file_rename = file_rename.downcase

  # Normalise File Extension
    if e_flag == true
      case file_rename
      when /\.jpeg/
        file_rename = file_rename.gsub(".jpeg", ".jpg")
      when /\.cmd/
        file_rename = file_rename.gsub(".cmd", ".bat")
      end
    end

  # Rename, Output
    File.rename(current_file, current_dir + "/" + file_rename)
    puts "    ->  " + current_file + "  =>  " + file_rename
  end
  puts
end


def main

end

main

# vi: ft=ruby
