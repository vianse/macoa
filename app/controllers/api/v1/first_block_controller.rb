require_relative 'block'
class Api::V1::FirstBlockController <ApplicationController
  def index

      b1 = Block.new "Inicio del Flujo", ''
      c = [b1].map do |w|
        @flujo = Flow.create({
        :current_hash => w.hash,
        :data => w.data,
        :prev_hash => w.prev_hash,
        :time => w.time,
        :index => 0,
        :nonce => 0,
        :company => params[:company]
   	  	})

        render json: {:mesanje => "Flujo creado satisfactoriamente"}
      end
  end

end
