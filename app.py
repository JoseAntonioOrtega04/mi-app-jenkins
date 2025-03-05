from flask import Flask

app = Flask(__name__)

@app.route('/')
def home():
    return "El despliegue con Jenkins y Docker fue correcto"

if __name__ == '__main__':
    app.run(host='0.0.0.0', port=80)

