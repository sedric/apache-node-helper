apache-node-helper
##################

As developpers often ask me servers with multiple node app with their own WebSocket server each, I made this bunch of scripts that generate apache configuration.

1. Edit the ``appinfo.txt`` file.
2. Once modified, generate configuration with :

   .. code-block:: shell-session

      # nodeapps2apache
3. Add this line to VHost configuration :

   .. code-block:: aconf

      Include node-apps.conf
4. Then reload apache :

   .. code-block:: shell-session

      # service apache2 reload

TODO
----
- Support different configuration for multiple VHosts
- Support non-local apps
