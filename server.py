from flask import Flask, jsonify

app = Flask(__name__)
@app.route('/', methods=['GET'])
def home():
    print("Client connected!")
    return jsonify({'message': 'Hello from the server!'}), 200

if __name__ == '__main__':
    print("Server is starting...")
    app.run(host='0.0.0.0', port=8080)
