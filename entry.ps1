
docker run -d --name kong-gateway `
  -p 8000:8000 `
  -p 8002:8001 `
  -e "KONG_DATABASE=off" `
  -e "KONG_DECLARATIVE_CONFIG=/usr/local/kong/declarative/kong.yml" `
  -e "KONG_PROXY_ACCESS_LOG=/dev/stdout" `
  -e "KONG_ADMIN_ACCESS_LOG=/dev/stdout" `
  -e "KONG_PROXY_ERROR_LOG=/dev/stderr" `
  -e "KONG_ADMIN_ERROR_LOG=/dev/stderr" `
  -e "KONG_ADMIN_LISTEN=0.0.0.0:8001" `
  -e "KONG_PROXY_LISTEN=0.0.0.0:8000" `
  -v "${PWD}/kong.yml:/usr/local/kong/declarative/kong.yml" `
  kong:latest
