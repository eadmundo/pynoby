from flask import Flask, render_template
app = Flask(__name__)

app.debug = True

@app.route("/")
def hello_world():
    return render_template('index.jinja')

if __name__ == "__main__":
    app.run(host='0.0.0.0')