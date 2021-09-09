class UfController < ActionController::API 
  def respuesta
    fecha_solicitada = params[:date]
    uf = Uf.find_by(fecha: fecha_solicitada)
    if uf.nil? 
      respuesta = "Fecha no encontrada"
    else
      respuesta = {fecha_solicitada: fecha_solicitada, valor: uf.value}
 
    end
   
    User.create(username: params["x-client"],uf_value: respuesta,date_request: fecha_solicitada)
    
    render json: respuesta
  end

  def requestq

    
    request = User.where(username: params[:username])
    if request.nil?
      q = 0
    else
      q = request.count
      
    end
    render json: q
    
  end

end
