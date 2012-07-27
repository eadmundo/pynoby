from flask import Flask, render_template
app = Flask(__name__, template_folder='/vagrant/shared/templates')

app.debug = True

@app.route("/")
def hello_world():
    return render_template('index.html')

if __name__ == "__main__":
    app.run(host='0.0.0.0')