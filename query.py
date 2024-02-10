import sqlite3
from sqlite3 import Error
from contextlib import contextmanager

database = './HW_6.db'


@contextmanager
def create_connection(db_file):
    """ create a database connection to a SQLite database """
    connection = sqlite3.connect(db_file)
    yield connection
    connection.rollback()
    connection.close()


def execute(connection):

    rows = None
    cur = connection.cursor()
    try:
        cur.execute("""
        SELECT
          students.fullname,
          ROUND(AVG(grades.grade), 1) AS average_grade
        FROM grades
        JOIN students ON students.id = grades.student_id
        GROUP BY students.id
        ORDER BY average_grade DESC
        LIMIT 5;
        """)

        rows = cur.fetchall()
    except Error as e:
        print(e)
    finally:
        cur.close()
    return rows


with create_connection(database) as conn:
    task = execute(conn)
    print(task)
