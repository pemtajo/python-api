FROM python:3.7-alpine 

WORKDIR /api
# Install dependencies.
ADD requirements.txt requirements.txt
RUN pip install -r requirements.txt

# Copy code.
COPY . .

CMD python3 main.py