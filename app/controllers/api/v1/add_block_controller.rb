require_relative 'block'
class Api::V1::AddBlockController <ApplicationController
  def index
      hash = Flow.where(:company => params[:company]).pluck(:current_hash).last
      puts hash
      b2 = Block.new params[:data], hash
      c = [b2].map do |w|
        @flujo = Flow.create({
        :current_hash => w.hash,
        :data => w.data,
        :prev_hash => w.prev_hash,
        :time => w.time,
        :index => 0,
        :nonce => 0,
        :company => params[:company]
   	  	})

        render json: {:mesanje => "Bloque Agregado satisfactoriamente"}
      end
  end

end
