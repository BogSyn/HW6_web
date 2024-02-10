import logging
import random
import sqlite3
from sqlite3 import Error

from faker import Faker


fake = Faker('uk_UA')

database = './HW_6.db'

# Підключення до бази даних
conn = sqlite3.connect(database)
cur = conn.cursor()

# Додавання груп
for _ in range(3):
    cur.execute("INSERT INTO groups (name) VALUES (?)", (fake.word().capitalize(),))

# Додавання викладачів
for _ in range(3):
    cur.execute("INSERT INTO teachers (fullname) VALUES (?)", (fake.name(),))

# Додавання предметів із вказівкою викладача
for teacher_id in range(1, 4):
    for _ in range(2):
        cur.execute("INSERT INTO subjects (name, teacher_id) VALUES (?, ?)",
                    (fake.word().capitalize(), teacher_id))

# Додавання студентів і оцінок
for group_id in range(1, 4):
    for _ in range(10):
        cur.execute("INSERT INTO students (fullname, group_id) VALUES (?, ?) RETURNING id",
                    (fake.name(), group_id))
        student_id = cur.fetchone()[0]
        for subject_id in range(1, 7):
            cur.execute("INSERT INTO grades (student_id, subject_id, grade, grade_date) VALUES (?, ?, ?, ?)",
                        (student_id, subject_id, random.randint(0, 100), fake.date_this_decade()))

try:
    conn.commit()
except Error as e:
    logging.error(e)
    conn.rollback()
finally:
    cur.close()
    conn.close()
