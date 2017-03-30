FROM tensorflow/tensorflow:latest

# launchbot-specific labels
LABEL name.launchbot.io="Tensorflow"
LABEL workdir.launchbot.io="/usr/workdir"
LABEL description.launchbot.io="Tensorflow for jupyter notebook"
LABEL 8888.port.launchbot.io="Jupyter Notebook"
LABEL 6006.port.launchbot.io="Tensorflow Dashboard"


# Set the working directory
WORKDIR /usr/workdir

# Expose the notebook port
EXPOSE 8888
EXPOSE 6006

# Start the notebook server
CMD jupyter notebook --no-browser --port 8888 --ip=*