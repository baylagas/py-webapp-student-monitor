from flask import render_template
from logic.helper_logic import HelperLogic
from logic.organization_logic import OrganizationLogic
from logic.assignment_repo_logic import AssignmentRepoLogic


class HelperRoutes:
    @staticmethod
    def configure_routes(app):
        @app.route("/helper/list")
        def helperList():
            helperService = HelperLogic()
            helpers = helperService.getAllHelpers()
            return render_template("helperList.html", helpers=helpers)

        @app.route("/helper/view/<string:code>")
        def helperView(code):
            orgArray = OrganizationLogic().getAllOrganizations()
            assignArray = AssignmentRepoLogic().getAllAssignmentRepos()
            helperService = HelperLogic()
            helper = helperService.getHelperByCode(code)
            return render_template(
                "helperView.html",
                helper=helper,
                orgArray=orgArray,
                assignArray=assignArray,
            )
