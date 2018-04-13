require 'digest'

class Block
  attr_reader :hash, :prev_hash, :data, :time
  def initialize(data, prev_hash)
  	@data = data
  	@prev_hash = prev_hash
  	@time = Time.now.getutc.to_i
  	#@hash = gen_hash @data,@prev_hash,@time
    @hash = gen_hash @data,@prev_hash
  end
  #def gen_hash(data, prev_hash,time)
  def gen_hash(data, prev_hash)
    #a = Digest::SHA2.hexdigest "#{data}#{prev_hash}#{time}"
    a = Digest::SHA2.hexdigest "#{data}#{prev_hash}"
  end
end
