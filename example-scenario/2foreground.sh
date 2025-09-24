echo 'from fastapi import FastAPI
import joblib
from sklearn.datasets import load_iris

# Load trained model from file
model = joblib.load("iris_model.pkl")
iris = load_iris()
target_names = iris.target_names

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
    class_name = target_names[prediction]
    return {"prediction": int(prediction), "name": class_name}

# Define hidden easter egg endpoint
@app.get("/easter-egg")
def secret():
    return {"secret": "Congrats, you found the easter egg! 🎉"}
' > '~/iris/app.py'

echo 'from sklearn.datasets import load_iris
from sklearn.ensemble import RandomForestClassifier
import joblib

# Load iris dataset
iris = load_iris()
X, y = iris.data, iris.target

# Train the model
model = RandomForestClassifier()
model.fit(X, y)

# Save model to a file called iris_model.pkl
joblib.dump(model, "iris_model.pkl")

# Print confirmation message
print("Model trained and saved as iris_model.pkl")
' > '~/iris/train.py'