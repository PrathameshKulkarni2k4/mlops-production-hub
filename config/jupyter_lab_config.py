# Production JupyterLab configuration
c.ServerApp.ip = '127.0.0.1'          # Localhost only for local security
c.ServerApp.port = 8888
c.ServerApp.root_dir = './notebooks'   # Serves directly from your project's notebooks/ folder
c.ServerApp.open_browser = False
c.ServerApp.token = ''                 # Local dev convenience; set a password/token if exposed
c.ServerApp.password = ''
