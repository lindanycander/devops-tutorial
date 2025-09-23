from fastapi import FastAPI
import joblib

# Load trained model from file
model = joblib.load("iris_model.pkl")

# Create FastAPI app
app = FastAPI()

# Define endpoint for root
@app.get("/")
def read_root():
    return {"message": "Iris model API is running!"}

# Define endpoint for prediction
@app.post("/predict")
def predict(sepal_length: float, sepal_width: float, petal_length: float, petal_width: float):
    data = [[sepal_length, sepal_width, petal_length, petal_width]]
    prediction = model.predict(data)[0]
    return {"prediction": int(prediction)}

# Define hidden easter egg endpoint
@app.get("/easter-egg")
def secret():
    return {"secret": "Congrats, you found the easter egg! 🎉"}
