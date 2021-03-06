
def valid_login(u,p):
    for _ in admins:
        if u == _[0] and p == _[1]:
            return True
    return False

def valid_inputs(request):
    if request.form['cpf'].isnumeric():
        pass
    for c in request.form['name'].split():
        if not c.isalpha():
            return False
    return True

def insertData(request):
    for type in types:
        if request.form['role'] == type:
            #persons.append( Person(type, request.form['cpf'], request.form['name']) )
            persons[type].append(Person(request.form['cpf'], request.form['name']))
            return True
    return False

@app.route('/login')
def getLoginView():
    if 'username' in session: # if admin already logged in redirect to dashboard
        return redirect(url_for('dashboard'))
    return render('login.html')

@app.route('/attemptLogin', methods=['POST', 'GET'])
def login():
    error = None
    if request.method == 'POST':
        if valid_login(request.form['username'], request.form['password']):
            resp = respond(redirect(url_for('dashboard')))
            resp.set_cookie('username', request.form['username'])
            session['username'] = request.form['username']
            return resp
        else:
            error = "Invalid username or password"
    else:
        error = "Not right method LUL"
    return render('login.html', err=error)

@app.route('/dashboard')
def dashboard():
    if 'username' in session:
        return render('dashboard.html')
    else:
        return "You are not allowed"

@app.route('/register', methods=['POST', 'GET'])
def register():
    if request.method == 'POST':
        if valid_inputs(request):
            if insertData(request):
                return render('dashboard.html')
            else:
                return render('dashboard.html', error="Error: could not resolve role name")
        else:
            return render('dashboard.html', error="Error: name field has to be alphabetic")
    else:
        return redirect(url_for('index'))

@app.route('/getRegisters')
def getRegisters():
    return json.dumps(persons, indent=4)

@app.route('/sendRegisters', methods=['POST'])
def refreshAttempts():
    error = None
    p = open('passed.tmp', 'a+')
    r = open('reject.tmp', 'a+')
    if request.method == 'POST':
        data = []
        for _ in request.form:
            data.append(json.loads(_))
        data = data[0]

        for _ in data["Passaram"]:
            p.write(_+"\n")

        for _ in data["Rejeitados"]:
            r.write(_+"\n")

        return "True"
    else:
        return "False"

@app.route('/viewRegisters')
def viewRegisters():
    passed = []
    reject = []
    try:
        with open("passed.tmp", "r") as tmp:
            for line in tmp:
                passed.append(line)
    except:
        passed = None

    try:
        with open("reject.tmp", "r") as tmp:
            for line in tmp:
                reject.append(line)
    except:
        reject = None

    return render('registros.html', passed=passed, reject=reject)

@app.route('/logout')
def logout():
    session.pop('username')
    return redirect(url_for('index'))
