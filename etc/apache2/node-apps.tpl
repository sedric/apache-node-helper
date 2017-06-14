RewriteCond %{REQUEST_URI}  ^__PATH__/socket.io        [NC]
RewriteCond %{QUERY_STRING} transport=websocket        [NC]
RewriteRule /(.*)           ws://127.0.0.1:__PORT__/$1 [P,L]
<Location "__PATH__">
  ProxyPass "http://127.0.0.1:__PORT__/"
</Location>
