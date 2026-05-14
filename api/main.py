from fastapi import FastAPI
# from pydantic import BaseModel
from typing import List

# class NumberList(BaseModel):
#     numbers: List[int]

app = FastAPI()

@app.get("/")
def home():
    return {"message": "Hello, world!"}

@app.post("/numbers/")
def post_numbers(data: List[int]):
    return {"sum": sum(data)}