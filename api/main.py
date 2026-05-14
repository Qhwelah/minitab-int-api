from fastapi import FastAPI
from typing import List

app = FastAPI()

@app.get("/")
def home():
    return {"message": "Hello, world!"}

@app.post("/numbers/")
def post_numbers(data: List[int]):
    return {"sum": sum(data)}

@app.post("/mean/")
def post_mean(list_num: List[int]):
    mean = sum(list_num) / len(list_num)
    mean = round(mean, 3)
    return {"mean": mean}