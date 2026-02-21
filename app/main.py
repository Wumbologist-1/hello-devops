from fastapi import FastAPI
import os

app = FastAPI()

@app.get("/")
def root():
    return {"message": "Hello DevOps. Service is running."}

@app.get("/health")
def health():
    return {"status": "ok"}

@app.get("/version")
def version():
    # VERSION will come from environment variables in Docker / compose
    return {"version": os.getenv("VERSION", "dev")}