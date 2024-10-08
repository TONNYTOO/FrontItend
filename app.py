from flask import * 
import pymysql
from functions import *
from mpesa import *

app = Flask(__name__)

# session 
app.secret_key = "trobrtretgher"

@app.route('/')
def HomePage():
    # connect to DB
    connection = pymysql.connect(host='localhost', user='root', password='', database='FrontIt')
    sql = "SELECT * FROM `products` WHERE `product_category` = 'phones'"
    sql1 = "SELECT * FROM `products` WHERE `product_category` = 'electronics'"
    sql2 = "SELECT * FROM `products` WHERE `product_category` = 'beauty'"
    # you need to have a cursor 
    # cursor is used to run / execute the above SQL 
    cursor = connection.cursor()
    cursor1 = connection.cursor()
    cursor2 = connection.cursor()
    # execute
    cursor.execute(sql)
    cursor1.execute(sql1)
    cursor2.execute(sql2)
    # fetch all phones
    phones = cursor.fetchall()

    # fetch all electronics 
    electronics = cursor1.fetchall()

    # fetch all beauty
    beauty = cursor2.fetchall()


    return render_template('index.html', allphones = phones, electronics = electronics, beauty = beauty)

# route for single item 
@app.route('/single/<product_id>')
def SingleItem(product_id):
    # connectio to db 
    connection = pymysql.connect(host='localhost', user='root', password='', database='FrontIt')
    # create sql query 
    sql = "SELECT * FROM `products` WHERE `product_id` = %s "
    # create a cursor 
    cursor = connection.cursor()

    # execute the sql 
    cursor.execute(sql, product_id)

    # fetch single item 
    item = cursor.fetchone()

    return render_template('single.html', item = item)

# upload products 

@app.route('/upload', methods =['POST', 'GET'])
def Upload():
    if request.method == 'POST':    # user can add the products 
     product_name = request.form['product_name']
     product_desc = request.form['product_desc']
     product_cost = request.form['product_cost']
     product_category = request.form['product_category']
     product_images_name = request.files['product_images_name']
     product_images_name.save('static/images/' + product_images_name.filename)

     # connect to db 
     connection = pymysql.connect(host='localhost', user='root', password='', database='FrontIt')   
      # create a cursor 
     cursor = connection.cursor()
     sql = "insert into products (product_name, product_desc, product_cost, product_category, product_images_name) values (%s, %s, %s, %s, %s)"
     data = (product_name, product_desc, product_cost, product_category, product_images_name.filename)

        # execute
     cursor.execute(sql, data)
     
        #  save the changes
     connection.commit() 
     

     return render_template('upload.html', message="Your Product added Succesfully")
    else:
        return render_template('upload.html', error="Please add a product")
    
        #fashion route to see all the fashions
@app.route('/fashion')
def Fashion():
     # connect to DB
    connection = pymysql.connect(host='localhost', user='root', password='', database='FrontIt')
    sql = "SELECT * FROM `products` WHERE `product_category` = 'dresses'"
    sql1 = "SELECT * FROM `products` WHERE `product_category` = 'handbags'"
    sql2 = "SELECT * FROM `products` WHERE `product_category` = 'socks'"
    sql3 = "SELECT * FROM `products` WHERE `product_category` = 'cap'"
    sql4 = "SELECT * FROM `products` WHERE `product_category` = 'belts'"
    sql5 = "SELECT * FROM `products` WHERE `product_category` = 'trouser'"
    # you need to have a cursor 
    # cursor is used to run / execute the above SQL 
    cursor = connection.cursor()
    cursor1 = connection.cursor()
    cursor2 = connection.cursor()
    # execute
    cursor.execute(sql)
    cursor1.execute(sql1)
    cursor2.execute(sql2)
    # fetch all phones
    dresses = cursor.fetchall()

    # fetch all handbags 
    handbags = cursor1.fetchall()

    # fetch all socks
    socks = cursor2.fetchall()

     # fetch all caps
    cap = cursor2.fetchall()

     # fetch all belts
    belts = cursor2.fetchall()

     # fetch all trousers
    trouser = cursor2.fetchall()

    return render_template('fashion.html', dresses = dresses, handbags = handbags, socks = socks, cap = cap, belts = belts, trouser = trouser)

#a route to upload fashion

@app.route('/uploadfashion', methods =['POST', 'GET'])
def UploadFashion():
    if request.method == 'POST':    # user can add the products 
     product_name = request.form['product_name']
     product_desc = request.form['product_desc']
     product_cost = request.form['product_cost']
     product_category = request.form['product_category']
     product_images_name = request.files['product_images_name']
     product_images_name.save('static/images/' + product_images_name.filename)

     # connect to db 
     connection = pymysql.connect(host='localhost', user='root', password='', database='FrontIt')   
      # create a cursor 
     cursor = connection.cursor()
     sql = "insert into products (product_name, product_desc, product_cost, product_category, product_images_name) values (%s, %s, %s, %s, %s)"
     data = (product_name, product_desc, product_cost, product_category, product_images_name.filename)

        # execute
     cursor.execute(sql, data)
     
        #  save the changes
     connection.commit() 
     

     return render_template('uploadfashion.html', message="Your Fashion added Succesfully")
    else:
        return render_template('uploadfashion.html', error="Please add a Fashion product")
    
    # user registration 
@app.route('/register', methods=['POST', 'GET'])
def Register():
    if request.method == 'POST':    # user can add the products 
        username = request.form['username']
        email = request.form['email']
        gender = request.form['gender']
        phone = request.form['phone']
        password = request.form['password']

        # Validate if any field is empty
        if not username or not email or not password or not phone:
            return render_template('register.html', error="Please fill out all fields")

    

        # Connect to the database
        connection = pymysql.connect(host='localhost', user='root', password='', database='FrontIt')   
        cursor = connection.cursor()

        # Insert the user data into the users table
        sql = "INSERT INTO users (username, email, gender, phone, password) VALUES (%s, %s, %s, %s, %s)"
        data = (username, email, gender, phone, password)

        try:
            cursor.execute(sql, data)
            connection.commit()  # Commit the changes to the database
            return render_template('register.html', message="Your Registration was successful")
        except Exception as e:
            connection.rollback()  # Rollback in case of error
            return render_template('register.html', error=f"Registration failed: {str(e)}")
        finally:
            cursor.close()
            connection.close()
    
    else:
        return render_template('register.html', error="Please register")
    
    
@app.route('/login', methods = ['POST', 'GET'])
def LoginPage():
    if request.method == 'POST':    # user can add the products 
        email = request.form['email']
        password = request.form['password']

        connection = pymysql.connect(host='localhost', user='root', password='', database='FrontIt') 
        cursor = connection.cursor()
        # check if user with email exist in the db
        sql = "select * from users where email = %s and password = %s"
        data = (email, password)

        cursor.execute(sql, data)
        #  check if any result is found 
        if cursor.rowcount == 0:
            return render_template('login.html', error = "invalid credentials")


        else:
            session['key'] = email

            return redirect('/')
    else:
        return render_template('login.html')
    
    #mpesa
    # implement STK PUSH 
@app.route('/mpesa', methods = ['POST'])
def mpesa():
    phone = request.form['phone']
    amount = request.form['amount']

    # use mpesa_payment function mpesa.py
    # it accepts the phone and amount as arguments
    mpesa_payment(amount, phone)

    return '<h1>Please complete in your Phone</h1>'  \
    '<a href="/" class="btn btn-dark btn-sm"> Go back to Products</a>'

    
@app.route('/about')
def Aboutpage():
    return "This is about us"

@app.route('/logout')
def Logout():
    session.clear()
    return redirect('/login') 


if __name__ == '__main__':

    app.run(debug=True, port=8900)
