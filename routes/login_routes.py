from flask import render_template, request, redirect
from tools.recaptcha_helper import RecaptchaHelper


class LoginRoutes:
    @staticmethod
    def configure_routes(app):
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
