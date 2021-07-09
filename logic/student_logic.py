from core.pyba_logic import PybaLogic


class StudentLogic(PybaLogic):
    def __init__(self):
        super().__init__()

    def getAllStudents(self):
        database = self.get_databaseXObj()
        sql = f"SELECT number, code, firstname, lastname, github_account FROM esendb.student; "
        rowsList = database.executeQuery(sql)
        if len(rowsList) > 0:
            return rowsList
        else:
            return list(dict(rowsList))

    def getStudentByCode(self, code):
        database = self.get_databaseXObj()
        sql = f"SELECT * FROM esendb.student where code='{code}'; "
        rowsList = database.executeQuery(sql)
        if len(rowsList) > 0:
            return rowsList[0]
        else:
            return dict(rowsList)

    def insertStudent(self, studentTuple):
        (
            code,
            number,
            lastname,
            firstname,
            personalEmail,
            esenEmail,
            githubAccount,
        ) = studentTuple
        database = self.get_databaseXObj()
        sql = (
            "INSERT INTO `esendb`.`student` "
            + f"(`id`,`code`,`number`,`lastname`,`firstname`,`personal_email`,`esen_email`,`github_account`) "
            + f"VALUES(0,'{code.value}',{number.value},'{lastname.value}','{firstname.value}', "
            + f"'{personalEmail.value}','{esenEmail.value}','{githubAccount.value}'); "
        )
        rows = database.executeNonQueryRows(sql)
        return rows
