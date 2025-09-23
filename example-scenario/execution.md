# Instructions

### 1. Install dependencies with this command `pip install scikit-learn fastapi uvicorn joblib`.

Pip is the dependency handler for Python. We install the following packages:

- scikit-learn for training the model.
- fastapi for creating a web API.
- uvicorn for running the web API as a web server.
- joblib for saving and loading trained models.

### 2. See the content of the training file with this command `cat train.py`.

The content of the training file is displayed in the terminal. By reading the code together with the code comments, you can see that we load the iris dataset and train it with the random forest classifier.

### 3. Train the model with this command `python train.py`.

We expect this output: `Model trained and saved as iris_model.pkl`.

The command runs the training script, which loads the Iris dataset, trains a RandomForest model and saves it for later use.

### 4. See the code of the program that sets up FastAPI with the command `cat app.py`.

The content of the main program file is displayed in the terminal. By reading the code together with the code comments, you can see that we create the web API with FastAPI.

### 5. Start the server with this command `uvicorn app:app --host 0.0.0.0 --port 8000`.

The command uses uvicorn to start a server hosting our FastAPI app on IP 0.0.0.0 and port 8000. This must continue to run in the terminal.

### 6. Test the API by first running this command `curl http://localhost:8000/` in another terminal, to see if the connection is established.

We expect this as output: `{"message":"Iris model API is running!"}`.

### 7. Then run this command to get a prediction from the model `curl -X POST "http://localhost:8000/predict?sepal_length=5.1&sepal_width=3.5&petal_length=1.4&petal_width=0.2"`.

We expect this output: `{"prediction":0}`.

This command sends measurements of a flower to the model for getting a prediction.

### 8. See if you can find anything fun on another IP address (URL) by running `curl http://localhost:8000/<SOME_PATH>`.

We expect a response similar to this `{"secret": <SOME_MESSAGE>}`. If you paid attention during the steps above, you already know where to find it. Good luck!
