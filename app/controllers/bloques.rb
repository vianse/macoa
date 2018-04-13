
require_relative 'block'

class Bloques

  attr_reader :blocks

  def initialize
        genesis = Block.new "genesis block", ""
        @blocks = [genesis]
  end

  def add_block(block)
        @blocks << block
  end

  def create_block(data)
        last_block = @blocks.last
        new_block =  Block.new(data, last_block.hash)
        add_block(new_block)
        puts "new block added"
  end

  def dump
    @blocks.each_with_index do |block, idx|
      puts "#{idx} #{block.hash} #{block.data}"
    end
  end


end
