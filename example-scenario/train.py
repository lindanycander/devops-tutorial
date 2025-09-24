from sklearn.datasets import load_iris
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
