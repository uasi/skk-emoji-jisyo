#!/usr/bin/env ruby

require 'time'
require 'bundler'
Bundler.require

Entry = Struct.new(:name, :raw) do
  def <=>(that)
    name <=> that.name
  end
end

entries = Emoji.all.flat_map do |emoji|
  emoji.aliases.map do |name|
    Entry.new(name, emoji.raw)
  end
end

entries.sort!

gemoji_version = Bundler.load.specs.find do |spec|
  spec.name == 'gemoji'
end.version.to_s

jisyo_path = File.join(__dir__, 'SKK-JISYO.emoji.utf8')
license_path = File.join(__dir__, 'LICENSE')

File.open(jisyo_path, 'w') do |f|
  f << DATA.read.gsub(/%VERSION%/, gemoji_version)
  f << File.read(license_path).gsub(/^/, ";; ")
  f << ";;\n"
  f << ";; okuri-ari entries.\n"
  f << ";; okuri-nasi entries.\n"

  entries.each do |entry|
    f << "#{entry.name} /#{entry.raw}/\n"
  end
end

__END__
;; -*- fundamental -*- ; coding: utf-8 -*-
;; Emoji dictionary for SKK system
;;
;; Generated using gemoji %VERSION%
;;
