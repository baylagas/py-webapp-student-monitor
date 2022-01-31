from core.pyba_logic import PybaLogic


class OrganizationLogic(PybaLogic):
    def __init__(self):
        super().__init__()

    def getAllOrganizations(self):
        database = self.get_databaseXObj()
        sql = f"SELECT id,name FROM esendb.organization; "
        rowsList = database.executeQuery(sql)
        if len(rowsList) > 0:
            return rowsList
        else:
            return list(dict(rowsList))
