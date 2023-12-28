class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  # ... otro código ...

  # Método para manejar la solicitud de favicon.ico
  def favicon
    # Puedes redirigir a un archivo de imagen o enviar el archivo directamente
    # Por ejemplo, redirigir a un archivo en la carpeta public:
    redirect_to ActionController::Base.helpers.asset_path('favicon.ico', type: :image)
  end
end
