from flask import render_template
from logic.organization_logic import OrganizationLogic


class OrganizationRoutes:
    @staticmethod
    def configure_routes(app):
        @app.route("/organization/list")
        def organizationList():
            orgService = OrganizationLogic()
            orgs = orgService.getAllOrganizations()
            return render_template("organizationList.html", orgs=orgs)
