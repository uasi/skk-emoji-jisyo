#!/usr/bin/env ruby

require 'time'
require 'bundler'
Bundler.require

jisyo_path = File.join(__dir__, 'SKK-JISYO.emoji.utf8')
license_path = File.join(__dir__, 'LICENSE')

File.open(jisyo_path, 'w') do |f|
  f << DATA.read.gsub(/%VERSION%/, Emot::VERSION)
  f << File.read(license_path).gsub(/^/, ";; ")
  f << ";;\n"
  f << ";; okuri-nasi entries.\n"

  Emot.list.each do |name, (char, _code)|
    f << "#{name} /#{char}/\n"
  end
end

__END__
;; -*- fundamental -*- ; coding: utf-8 -*-
;; Emoji dictionary for SKK system
;;
;; Generated using emot %VERSION%
;;
