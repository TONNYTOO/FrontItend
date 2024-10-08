from flask import Flask, render_template
import re

app = Flask(__name__)

app.secret_key = 'your_secret_key'  # Required for flash messages

# Function to check password strength
def check_password_strength(password):
    if len(password) < 6:
        return "Have at least 6 characters."
    
    if not re.search("[a-z]", password):
        return "Have at least one lowercase letter."
    
    if not re.search("[A-Z]", password):
        return "Have at least one uppercase letter."
    
    if not re.search("[0-9]", password):
        return "Have at least one digit."
    
    if not re.search("[!@#$%^&*(),.?\":{}|<>]", password):
        return "Have at least one special character."

    else:
         return True

if __name__ == '__main__':
    app.run(debug=True, port=89800)