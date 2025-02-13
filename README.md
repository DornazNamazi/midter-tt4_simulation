### **Midterm Exam Simulation**

---

#### **Part 1: Documentation Review**
- **Duration**: 10:00 AM to 10:15 AM (15 minutes)  
- **Task**:  
   - Review the provided documentation carefully.  
   - If anything is unclear, feel free to ask questions during this time.  
- **Submission**:  
   - Submit a `.txt` file with the text `"I read"` before the deadline (8:45 AM).  

> Stay alert, as each section will be released on the LEA platform in stages.

---

#### **Part 2: Multiple Choice Questions**
- **Duration**: 10:20 AM to 10:50 30 min  
- **Task**:  
   - Complete the multiple-choice questions within the given time.  
   - You may attempt the questions as many times as needed during the 1-hour time frame.  

##### **Instructions**:
1. **Run the Docker Container**:  
   Start the quiz by running the following command to launch the container:
   ```bash
   docker run --name midterm-tt4-simulation -p 8080:80 -d allanbarcelos/midterm-simulation-tt4:1.0.0
   ```

2. **Access the Quiz**:  
   After the container is running, access the quiz at:  
   [http://localhost:8080](http://localhost:8080)

3. **Complete the Quiz**:  
   Fill out the form to begin the multiple-choice section.  

4. **Download Results**:  
   At the end of the quiz, you will receive a file named `midterm-simulation.zip`.  
   - **Extract the contents**.  
   - The extracted files will include:
     - A **PDF** with your exam results.
     - A **7z file** named `<your student code>_<lastName><firstName>_Protected.7z`.

5. **Submission**:  
   - Submit **only the `.7z` file** to the LEA platform under the **Midterm Part 2 (Questions)** activity.

---

#### **Part 3: Project Implementation**
- **Duration**: 11:00 AM to 11:30 AM (30 minutes)  
- **Overview**: Implement a full-stack project.

##### **Project Structure**
```
/student-crud
├── /api                  # Backend (Node.js)
│   ├── index.js          # API implementation 
├── /app                  # Frontend (HTML, SCSS, JS, Webpack)
│   ├── index.html        # Main HTML file
│   ├── index.js          #
│   ├── index.scss        #
│   └── webpack.config.js # Webpack configuration
├── Dockerfile            # Docker configuration for the app
├── default.conf          # Nginx configuration (if necessary)
└── README.md
```

##### **Instructions**
1. **Setup**:  
   - Download the `project.zip` file from the LEA platform.  
   - Extract it to your project root:  
     - **Windows**: `C:/Projects/midterm-project_simulation/`  
     - **Linux/macOS**: `~/Projects/midterm-project_simulation/`  

2. **Git Repository Setup**:  
   - Initialize a Git repository in the extracted directory.  
   - Create a **public GitHub repository** named `midterm-tt4-project_simulation`.  
   - Make your first commit with the message `"first commit"` (no changes yet).  

3. **Dockerfile Adjustments**:  
   - Update the Dockerfile to change the **default port** for the Nginx web server.  
   - Commit these changes with a message explaining the update.

4. **Frontend List**:  
   - In the `/app` directory, create `list.html` with a table featuring 5 columns: (Code, Name, Course, Date of Birth, Actions).  
   - Commit these changes with a descriptive message.  

5. **Testing and Docker Image**:  
   - Build and test the application locally.  
     - Generate a Docker image with the name:  
       `<your username>/midterm-project_simulation:v1.0.0`.  
     - Run the container to verify functionality.  
   - Push the Docker image to your **Docker Hub account**.  

6. **Submission**:  
   - Create a `.txt` file containing:  
     - The URL of your GitHub repository.  
     - The URL of your Docker Hub repository.  
   - Submit this file via the LEA platform.

---

#### **Part 4: Collaboration**
- **Duration**: 10:30 AM to 11:50 AM (20 min)  
- **Task**: Collaborate with a teammate on their repository.

##### **Instructions**
1. **Fork a Repository**:  
   - Fork your teammate’s GitHub repository:  
     - If there are **two members** in your group, each person forks the other’s repository.  
     - If there are **three members**, follow this rotation:  
       - Person 1 → fork Person 2’s repository  
       - Person 2 → fork Person 3’s repository  
       - Person 3 → fork Person 1’s repository  

2. **API Improvement**:  
   - Create `edit.html` with a form, using the fields from `list.html`.  
   - Commit your changes with a message explaining the updates.  

3. **Pull Request**:  
   - Open a **pull request** to your teammate’s repository.  
   - Wait for approval, then sync your fork with the changes.

4. **Update Docker Image**:  
   - Pull the latest changes into your local repository (`git pull`).  
   - Rebuild and push an updated Docker image with the tag:  
     `<your username>/midterm-project_simulation:v1.1.0`.  

