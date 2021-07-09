from flask import Flask, render_template, request, redirect

from tools.recaptcha_helper import RecaptchaHelper
from routes.main_routes import MainRoutes
from routes.student_routes import StudentRoutes
from routes.helper_routes import HelperRoutes
import requests


app = Flask(__name__)
app.config["SECRET_KEY"] = "thisisthesecretkey"
MainRoutes.configure_routes(app)
StudentRoutes.configure_routes(app)
HelperRoutes.configure_routes(app)


@app.route("/login", methods=["GET", "POST"])
def login():
    if request.method == "GET":
        return render_template("login.html")
    elif request.method == "POST":
        recHelper = RecaptchaHelper(request)
        if recHelper.validateRecaptcha():

            email = request.form["email"]
            passwd = request.form["passwd"]
            return f"posted {email}::{passwd}"

        else:
            return render_template("404.html")
        return "login post"


@app.route("/register")
def register():
    return render_template("register.html")


if __name__ == "__main__":
    app.run(debug=True)
