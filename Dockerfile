FROM python
WORKDIR /app
COPY requirements.txt .
RUN python -m pip install -r requirements.txt
COPY headers.txt .
COPY log4j-scan.py .
ENTRYPOINT ["python", "log4j-scan.py"]
