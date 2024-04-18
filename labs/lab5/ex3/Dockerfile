ARG PYTHON_VER
FROM python:${PYTHON_VER}
WORKDIR /myapp
COPY ./myapp ./
RUN pip install -r requirements.txt
# pip install -r <- następna ścieżka będzie do pliku requirements
CMD ["uvicorn", "app:app", "--reload", "--port", "3000", "--host", "0.0.0.0"]
EXPOSE 3000
# Also, please ensure that Uvicorn is running with the correct host. By default, Uvicorn will only be accessible from the local machine. If you want it to be accessible from other machines, you need to run Uvicorn with --host 0.0.0.0.
