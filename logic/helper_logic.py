from core.pyba_logic import PybaLogic


class HelperLogic(PybaLogic):
    def __init__(self):
        super().__init__()

    def getAllHelpers(self):
        database = self.get_databaseXObj()
        sql = f"SELECT code, firstname, lastname, github_account FROM esendb.helper; "
        rowsList = database.executeQuery(sql)
        if len(rowsList) > 0:
            return rowsList
        else:
            return list(dict(rowsList))

    def getHelperByCode(self, code):
        database = self.get_databaseXObj()
        sql = f"SELECT * FROM esendb.helper where code='{code}'; "
        rowsList = database.executeQuery(sql)
        if len(rowsList) > 0:
            return rowsList[0]
        else:
            return dict(rowsList)
