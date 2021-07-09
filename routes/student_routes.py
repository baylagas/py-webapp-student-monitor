from flask import render_template
from logic.student_logic import StudentLogic
from logic.organization_logic import OrganizationLogic
from logic.assignment_repo_logic import AssignmentRepoLogic


class StudentRoutes:
    @staticmethod
    def configure_routes(app):
        @app.route("/student/list")
        def studentList():
            stuService = StudentLogic()
            students = stuService.getAllStudents()
            return render_template("studentList.html", students=students)

        @app.route("/student/view/<string:code>")
        def studentView(code):
            stuService = StudentLogic()
            orgArray = OrganizationLogic().getAllOrganizations()
            assignArray = AssignmentRepoLogic().getAllAssignmentRepos()
            student = stuService.getStudentByCode(code)
            return render_template(
                "studentView.html",
                student=student,
                orgArray=orgArray,
                assignArray=assignArray,
            )
