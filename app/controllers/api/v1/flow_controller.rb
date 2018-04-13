require_relative 'block'
class Api::V1::FlowController <ApplicationController
def index
  flujo = Flow.all
  render json: [flujo]

end

end
