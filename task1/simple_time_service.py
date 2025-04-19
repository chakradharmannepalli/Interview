from flask import Flask, jsonify, request
from datetime import datetime

app = Flask(__name__)

@app.route('/')
def get_time():
    timestamp = datetime.now().isoformat()  # Get the current timestamp in ISO format
    ip_address = request.remote_addr  # Get the IP address of the visitor
    return jsonify({
        'timestamp': timestamp,
        'ip': ip_address
    })

if __name__ == '__main__':
    app.run(host='0.0.0.0', port=8080)

