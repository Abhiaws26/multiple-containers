from flask import Flask, jsonify
import os, socket, time

app = Flask(__name__)

# Environment variables control which pod/version is serving
ENVIRONMENT = os.getenv("APP_ENV", "blue")   # default: blue
VERSION = os.getenv("APP_VERSION", "v1")     # default: v1
START_TIME = time.time()

@app.route("/")
def home():
    msg = f"Serving from {ENVIRONMENT.upper()} pod"
    return jsonify({
        "message": msg,
        "version": VERSION,
        "hostname": socket.gethostname()
    })

@app.route("/health")
def health():
    uptime = time.time() - START_TIME
    return jsonify({
        "status": "healthy",
        "uptime_seconds": round(uptime, 2)
    })

@app.route("/ready")
def ready():
    return jsonify({"status": "ready"})

if __name__ == "__main__":
    app.run(host="0.0.0.0", port=5000)
