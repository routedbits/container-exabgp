# container-exabgp

Containerized ExaBGP base layer for use with additional service containers

## Configuration

The image expects to be provided valid configuration files at the following 
location:

* `/etc/exabgp/exabgp.conf`

NOTE: You will need to launch the container with `NET_ADMIN` capability if you 
wish for it to add/remove IPs

## Logging

To configure the log level (or prevent constant logging of `route added`
messages), configure the following environment variable on the container:

```
exabgp_log_level=WARNING
```

## Testing

The [docker-compose.yml](docker-compose.yml) contains a basic local test to
demonstrate a DNS health check resolving `google.com` and inserting a local IP
and advertising it via BGP if successful.
