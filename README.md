# Kong API

## About

Kong API Gateway is an open-source API gateway that sits in front of backend services (APIs/microservices). Kong can manage how clients access these services.

Kong is built on Nginx and Lua, and hence is highly performant and lightweight.

In summary, Kong is a traffic controller that does the following:

1. Receive client requests
2. Applies policies (e.g., security, rate limiting, authentication, logging)
3. Forwards the request to the correct backend service.

## Key Features

### Core API Gateway Features

- Request routing and load balancing
- Reverse proxy
- Service and route management
- Low latency, high performance

### Security Features

- Authentication
  - API Keys
  - JWT
  - OAuth 2.0
  - LDAP
  - mTLS
- Rate limiting and throttling
- IP restrictions (allow/deny lists)
- Request validation
- CORS

### Traffic Management

- Rate limiting
- Traffic shaping
- Retries & timeouts
- Circuit breakers
- Canary releases & versioning

### Observability & Monitoring

- Access logging
- Metrics (Prometheus, Datadog, etc.)
- Tracing (OpenTelemetry, Zipkin, Jaeger)
- Request/response logging

### Extensibility

- Plugin-based architecture
- 100+ built-in and community plugins
- Custom plugins (Lua, Go, JS with Kong Gateway Enterprise)

## Pros and Cons

### Pros

- Highly performant
- Highly extensible via plugins
- Strong security features
- Scales well for microservices/services behind a single entry point
- Large ecosystem and community

### Cons

- Configuration can be complex in large systems
- Advanced features require Enterprise edition
- May be an overkill for small/simple APIs
