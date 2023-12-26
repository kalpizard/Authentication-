if Rails.env.production?
    # Configuración para el entorno de producción
    Rails.application.config.session_store :cookie_store, key: "_vr", domain: "example.com"
  else
    # Configuración para otros entornos (desarrollo, prueba, etc.)
    Rails.application.config.session_store :cookie_store, key: "_vr"
  end
  