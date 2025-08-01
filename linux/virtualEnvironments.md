# Navigate to your project directory
```bash
cd /path/to/your/project
```
# Create a virtual environment named 'venv'
```
python -m venv venv
Activate the virtual environment:
```

On macOS/Linux:
  ```bash
source venv/bin/activate
```
On Windows:
```bash
.\venv\Scripts\activate
```

2. Install Dependencies and Freeze Them:
Install the packages your project needs and freeze them into a requirements.txt file:

```bash
pip install package_name
pip freeze > requirements.txt
```

3. Initialize Git:
If your project is not yet a Git repository, initialize it:

```bash
git init
Create a .gitignore file to exclude virtual environment folders and other files from version control:
```


# .gitignore
```
__pycache__/
venv/
*.pyc
*.pyo
*.pyd
```

4. Commit to Git:
```bash
git add .
git commit -m "Initial commit with virtual environment and requirements.txt"
```

5. Share Your Project:
If you want to share your project with others, you can push it to a remote repository (e.g., GitHub):

```bash
git remote add origin https://github.com/your_username/your_project.git
```

# Push to the master branch
```
git push -u origin master
```
6. Clone the Project:
If someone else wants to use your project, they can clone it and recreate the virtual environment:

```bash
# Clone the repository
git clone https://github.com/your_username/your_project.git
```

# Navigate to the project directory
```
cd your_project
```

# Create and activate the virtual environment
```
python -m venv venv
source venv/bin/activate  # On macOS/Linux
.\venv\Scripts\activate  # On Windows
```

# Install dependencies
```
pip install -r requirements.txt
```
7. Deactivate the Virtual Environment:
When you're done working on your project, deactivate the virtual environment:

```bash
deactivate
```

By following these steps, you can create a virtual environment, manage your project's dependencies, and use Git for version control. This approach helps keep your project isolated and easily shareable.


# AWS for LoRaWAN 
```
lora small	i-07a7399c5dbb6f979	t3a.small	us-east-1f	ec2-3-237-8-108.compute-1.amazonaws.com	3.237.8.108	lora	2021/07/29 16:59 GMT-5
lora large 1	i-023f0d2e73691b079	t3a.large	us-east-1f	ec2-34-204-203-10.compute-1.amazonaws.com	34.204.203.10	lora	2021/07/29 17:04 GMT-5
lora large 2	i-0c1cbeba834cf2246	t3a.large	us-east-1f	ec2-3-238-248-138.compute-1.amazonaws.com	3.238.248.138	lora	2021/07/29 17:04 GMT-5
lora medium 1	i-0c88a21ff5cf26794	t3a.medium	us-east-1f	ec2-3-235-223-202.compute-1.amazonaws.com	3.235.223.202	lora	2021/07/29 17:10 GMT-5
lora medium 2	i-05228f1849fbf0ac3	t3a.medium	us-east-1f	ec2-3-80-232-187.compute-1.amazonaws.com	3.80.232.187	lora	2021/07/29 17:35 GMT-5
lora medium 3	i-03b2c17738b728b06	t3a.medium	us-east-1f	ec2-3-230-135-128.compute-1.amazonaws.com	3.230.135.128	lora	2021/07/29 17:10 GMT-5
```



