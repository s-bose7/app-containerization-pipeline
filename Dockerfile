# Use a Python base image
FROM python:3.9

# Set the working directory
WORKDIR /app

# Copy the contents of your repo to the container
COPY . .

# Install dependencies (Jupyter Notebook and any dependencies in requirements.txt)
RUN pip install --no-cache-dir -r requirements.txt
RUN pip install jupyter

# Expose the Jupyter Notebook port
EXPOSE 8888

# Run Jupyter Notebook server
CMD ["jupyter", "notebook", "--ip=0.0.0.0", "--port=8888", "--no-browser", "--allow-root"]
