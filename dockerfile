#article I used as a guide: https://www.geeksforgeeks.org/python/how-to-run-a-python-script-using-docker/

FROM python:latest
#setting the working directory in the container
WORKDIR /home/app/src
#copy a file from host working directory to x location in container, in this case the working directory
COPY dev.py ./
COPY requirements.txt ./
#RUN specifies a command to run during the image build process
#do the python packages get installed into the container?
RUN pip install --no-cache-dir -r requirements.txt
#RUN specifies a command to run once the container is started
CMD ["python","./dev.py"]
