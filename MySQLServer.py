import mysql.connector


try:
    mydb = mysql.connector.connect(
        host="localhost",
        user="root",
        password="mariamsql",
        database="alx_book_store"
    )



    if mydb.is_connected():
            mycursor = mydb.cursor()
            # Create the database if it doesn't already exist
            mycursor.execute("CREATE DATABASE IF NOT EXISTS alx_book_store;")
            print("Database 'alx_book_store' created or already exists.")
            mycursor.close()
            mydb.close()
except mysql.connector.Error as e:
    print(f"Error while connecting to MySQL: {e}")


    
       