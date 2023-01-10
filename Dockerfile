FROM python:3.9
WORKDIR / code
COPY ./requirment.txt /code/requirments.txt
RUN pip install --no-cache-dir --upgrade -r /code/requirments.txt
COPY ./main.py /code/main.py
COPY ./form.html /code/form.html
CMD ["unicorn", "main:app", "--host","0.0.0.0" "--port", "80"]
