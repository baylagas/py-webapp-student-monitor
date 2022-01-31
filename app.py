from flask import Flask, render_template, request, redirect

from routes.main_routes import MainRoutes
from routes.organization_routes import OrganizationRoutes
from routes.student_routes import StudentRoutes
from routes.helper_routes import HelperRoutes
from routes.login_routes import LoginRoutes


app = Flask(__name__)
app.config["SECRET_KEY"] = "thisisthesecretkey"
OrganizationRoutes.configure_routes(app)
MainRoutes.configure_routes(app)
StudentRoutes.configure_routes(app)
HelperRoutes.configure_routes(app)
LoginRoutes.configure_routes(app)


if __name__ == "__main__":
    app.run(debug=True)
