"""Gunicorn configurations."""

max_requests = 1500
preload_app = True
timeout = 10
wsgi_app = "badges_ghcr.server:app"
