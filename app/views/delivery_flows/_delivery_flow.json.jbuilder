json.extract! delivery_flow, :id, :pedido, :nombreCliente, :tipoCredito, :fechaPromesaEntrega, :observaciones, :accesorios, :placas, :user_id, :created_at, :updated_at
json.url delivery_flow_url(delivery_flow, format: :json)
