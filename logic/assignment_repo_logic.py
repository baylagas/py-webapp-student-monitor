from core.pyba_logic import PybaLogic


class AssignmentRepoLogic(PybaLogic):
    def __init__(self):
        super().__init__()

    def getAllAssignmentRepos(self):
        database = self.get_databaseXObj()
        sql = f"SELECT name, type FROM esendb.assignment_repo; "
        rowsList = database.executeQuery(sql)
        if len(rowsList) > 0:
            return rowsList
        else:
            return list(dict(rowsList))
