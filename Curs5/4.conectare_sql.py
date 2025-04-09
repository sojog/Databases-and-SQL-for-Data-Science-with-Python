import mysql.connector

# Connect to server
cnx = mysql.connector.connect(
    host="127.0.0.1",
    port=3306,
    user="root",
    password="root1234")

cur = cnx.cursor()

# Execute a query
cur.execute("CREATE DATABASE PYTHON_CREATED_DB")

