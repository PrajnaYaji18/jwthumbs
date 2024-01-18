require_relative "jwthumbs/version"
require_relative 'movie'
require_relative 'vtt'
require_relative 'shutter'
require 'logger'

module Jwthumbs
  def self.logger=(log)
    @logger = log
  end

  def self.logger
    return @logger if @logger
    logger = Logger.new(STDOUT)
    logger.level = Logger::INFO
    @logger = logger
  end
end
