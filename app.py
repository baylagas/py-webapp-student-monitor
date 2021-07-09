from flask import Flask, render_template, request, redirect
from logic.student_logic import StudentLogic
from logic.helper_logic import HelperLogic
from logic.organization_logic import OrganizationLogic
from logic.assignment_repo_logic import AssignmentRepoLogic
from tools.recaptcha_helper import RecaptchaHelper
from routes.main_routes import MainRoutes
import requests


def getServices():
    global orgService
    global orgArray
    global assignService
    global assignArray
    global utilObj
    orgService = OrganizationLogic()
    orgArray = orgService.getAllOrganizations()
    assignService = AssignmentRepoLogic()
    assignArray = assignService.getAllAssignmentRepos()


app = Flask(__name__)
app.config["SECRET_KEY"] = "thisisthesecretkey"
orgService = None
assignService = None
orgArray = None
assignArray = None
utilObj = None

MainRoutes.configure_routes(app)


@app.route("/student/list")
def studentList():
    stuService = StudentLogic()
    students = stuService.getAllStudents()
    return render_template("studentList.html", students=students)


@app.route("/student/view/<string:code>")
def studentView(code):
    stuService = StudentLogic()
    student = stuService.getStudentByCode(code)
    return render_template(
        "studentView.html",
        student=student,
        orgArray=orgArray,
        assignArray=assignArray,
    )


@app.route("/helper/list")
def helperList():
    helperService = HelperLogic()
    helpers = helperService.getAllHelpers()
    return render_template("helperList.html", helpers=helpers)


@app.route("/helper/view/<string:code>")
def helperView(code):
    helperService = HelperLogic()
    helper = helperService.getHelperByCode(code)
    return render_template(
        "helperView.html",
        helper=helper,
        orgArray=orgArray,
        assignArray=assignArray,
    )


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
    getServices()
    app.run(debug=True)
