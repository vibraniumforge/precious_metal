require 'open-uri'
require 'nokogiri'

require_relative "precious_metal/version"
require_relative "precious_metal/metal"
require_relative "precious_metal/scraper"
require_relative "precious_metal/cli"

require "bundler/setup"
require "precious_metal"