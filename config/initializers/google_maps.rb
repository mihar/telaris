if Rails.env.development?
  GOOGLE_MAPS_API_KEY = "ABQIAAAABEmbjQh6zAYV3ShPr7wPKhS6US7vqAgU6fxq8hX_uTYety-UDBT3XCKK0KtyWyNKRHOo5KJfLL3XBQ"
elsif Rails.env.production?
  GOOGLE_MAPS_API_KEY = "ABQIAAAABEmbjQh6zAYV3ShPr7wPKhQpp3qP6ra7jege1rtN4eDmDerISxROeWQO0RlpoRWI_rzYsbHntcHuog"
end