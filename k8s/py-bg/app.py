from flask import Flask, jsonify
import os
import socket
import time

app = Flask(__name__)

VERSION = os.getenv("APP_VERSION", "v1")
START_TIME = time.time()

@app.route("/")
def home():
    return jsonify({
        "message": "Blue-Green Deployment Demo",
        "version": VERSION,
        "hostname": socket.gethostname()
    })

@app.route("/health")
def health():
    uptime = time.time() - START_TIME
    return jsonify({
        "status": "healthy",
        "uptime_seconds": round(uptime, 2)
    }), 200

@app.route("/ready")
def ready():
    return jsonify({"status": "ready"}), 200


if __name__ == "__main__":
    app.run(host="0.0.0.0", port=5000)
