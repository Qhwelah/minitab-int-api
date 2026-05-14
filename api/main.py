from fastapi import FastAPI
from typing import List

app = FastAPI()

@app.get("/")
def home():
    return {"message": "Hello, world!"}

@app.post("/numbers/")
def post_numbers(data: List[int]):
    return {"sum": sum(data)}