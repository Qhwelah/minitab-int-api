FROM python:3.14

WORKDIR /usr/src/api

# Install dependencies
COPY requirements.txt ./
RUN pip install --no-cache-dir -r requirements.txt

COPY api/. .

CMD ["sleep", "infinity"]