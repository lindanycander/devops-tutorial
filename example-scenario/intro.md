# Executable tutorial - Training the Iris dataset and deploying model with FastAPI

## Background

Machine learning, LLMs and AI become more and more popular and used. These models must be deployed for users and applications to use them. In this tutorial, we use the Iris dataset, a classic dataset for testing ML algorithms, to train a simple classifier. The iris dataset consists of flower samples with measurements. We deploy the model as a web service using FastAPI (a Python web framework) and run it with Uvicorn (an ASGI server).

## Why this matters for DevOps/MLOps

This is relevant to MLOps because it demonstrates one important principle: making the ML model available as a reliable, reproducible service. Like how DevOps ensures that software applications are deployed to production, MLOps does the same for machine learning by deploying models, data and/or predictions.

In this tutorial, we deploy the model, making it possible to interact with it by using the curl command. This exercise mirrors real-world MLOps workflows, where trained models must be deployed as reliable services that other applications can use.

## What you will learn

1. How to train a simple ML model on the Iris dataset.
2. How to deploy the model using FastAPI and Uvicorn.
3. How to interact with the model via HTTP requests (curl).
4. How deployment makes ML models usable and reliable in practice.
5. (BONUS: How to find an easter egg in the given environment)
