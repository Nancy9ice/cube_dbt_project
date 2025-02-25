# Use the base Cube.js image
FROM cubejs/cube:dev

# Install Python and pip
RUN apt-get update && apt-get install -y python3 python3-venv python3-pip

# Set the working directory
WORKDIR /cube/conf/cube_project

# Create a virtual environment
RUN python3 -m venv /opt/venv

# Copy the requirements file
COPY requirements.txt .

# Activate the virtual environment and install dependencies
ENV PATH="/opt/venv/bin:$PATH"
RUN pip install --upgrade pip && pip install -r /cube/conf/cube_project/requirements.txt

# Copy the rest of your application files
COPY . .