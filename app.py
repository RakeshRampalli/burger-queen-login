app = Flask(__name__)

# Mock user data for login
users = {"burgerqueen": "bestburgers"}

@app.route('/')
def home():
    return render_template('login.html')

@app.route('/login', methods=['POST'])
def login():
    username = request.form['username']
    password = request.form['password']
   
    if username in users and users[username] == password:
        return f"Welcome to Burger Queen, {username}!"
    else:
        return "Invalid username or password."

if __name__ == '__main__':
    app.run(host='0.0.0.0', port=5000)