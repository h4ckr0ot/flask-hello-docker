from flask import Flask, jsonify

app = Flask(__name__)

@app.route('/')
def index():
    return jsonify({'hey' : 'there'})


if __name__ == '__main__':
    app.run(host='0.0.0.0', port=5001, debug=True)