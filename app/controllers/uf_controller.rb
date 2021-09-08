class UfController < ActionController::API 
  def respuesta
    fecha_solicitada = params[:date]
    uf = Uf.find_by(fecha: fecha_solicitada)
    if uf.nil? 
      respuesta = "Fecha no encontrada"
    else
      respuesta = {fecha_solicitada: fecha_solicitada, valor: uf.value}

    end
    render json: respuesta
  end
end
