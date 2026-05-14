from fastapi import FastAPI
from typing import List
import numpy as np

app = FastAPI()

# From a list of numbers, calculate and return the mean
@app.post("/mean")
def post_mean(list_num: List[float]):
    mean = sum(list_num) / len(list_num)
    mean = round(mean, 3)
    return {"mean": mean}

# From a list of numbers, calculate and return the standard deviation
@app.post("/stddev")
def post_stddev(list_num: List[float]):
    stddev = np.std(list_num)
    stddev = round(stddev, 3)
    return {"stddev": stddev}