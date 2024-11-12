
#pip install -r requirements.txt
#python3.9 manage.py collectstatic

#!/bin/bash

# Check for Python3 and pip
if ! command -v python3 &> /dev/null
then
    echo "Python3 not found, installing..."
    apt-get update && apt-get install -y python3 python3-pip
fi

if ! command -v pip3 &> /dev/null
then
    echo "pip3 not found, installing..."
    apt-get install -y python3-pip
fi

# Install the required Python dependencies (assumes requirements.txt is present)
if [ -f "requirements.txt" ]; then
    echo "Installing dependencies from requirements.txt..."
    pip3 install -r requirements.txt
else
    echo "requirements.txt not found, skipping dependency installation."
fi

# Continue with your other build steps
