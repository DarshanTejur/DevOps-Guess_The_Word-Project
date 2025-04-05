# Guess the Word

## Overview

This is a DevOps-enhanced version of the classic Guess The Word game, featuring a Flask-based backend and a React-based frontend. The project is containerized using Docker, deployed using Terraform, and integrated with GitHub Actions for CI/CD.

## Features

  Frontend (React): Interactive game interface with a clean UI.

  Backend (Flask): API for word logic and game rules.

  CI/CD: Automated build and deploy pipeline using GitHub Actions.

  Infrastructure as Code: Container orchestration using Terraform and Docker provider.


## Technologies

  - Frontend
      * React
      * HTML, CSS, JavaScript

  - Backend
      * Python Flask
      * REST API
        
  - DevOps
      * Docker
      * GitHub Actions (CI/CD)
      * Terraform (Infrastructure as Code)
      * Docker Provider
      
## Folder Structure


DevOps-Guess_The_Word-Project/
│
├── Back-end/               # Flask backend source code
├── Front-end/              # React frontend source code
├── docker-compose.yml      # (Initial development, replaced by Terraform)
├── terraform/              # Terraform files
│   ├── main.tf
│   ├── backend-container.tf
│   ├── frontend-container.tf
│   └── variables.tf
└── .github/workflows/
    └── devops-pipeline.yml # CI/CD pipeline


### Step-by-Step Setup Instructions
You don't need to touch any internal code files — everything is already configured.

   1. Clone the Repo

          git clone https://github.com/DarshanTejur/DevOps-Guess_The_Word-Project.git
          cd DevOps-Guess_The_Word-Project

   2. Install Dependencies
    Make sure you have:

      * Docker Desktop or Docker CLI
      * Terraform (>=1.5.0)
      * Git

   3. Initialize Terraform

          cd terraform
          terraform init

  4. Build and Run Containers via Terraform

          terraform apply
  
  (Type yes when prompted. Terraform will build and run containers for backend and frontend.)

   5. Access the Application
      Once Terraform has successfully created the containers, you can access both apps from your browser or via API tools like Postman or curl.

      * Frontend (React App):
        Open your browser and go to http://localhost:3000

      * Backend (Flask API):
        Accessible via  http://localhost:5000

   6. Access the Application

      * Frontend

           Frontend: http://localhost:3000
           (The frontend is exposed to your host and can be accessed directly from your browser.)

      * Backend
          Backend API: http://localhost:5000
            Note: The backend runs inside a Docker container, not directly on your host.

   7. How to Verify the Backend is Running
      To confirm that the backend Flask API is active inside its container:

      * List running containers:

                 docker ps
        
        (Look for a container named backend or similar.)

      * Enter the backend container:

                docker exec -it backend /bin/sh

         (Inside the container, test the API using curl:)

                  curl http://localhost:5000

          (If it's running correctly, you’ll get a valid API response.)

   8. Exit the container:

                 exit

------------------------------------------------------------------------------------------------------------------------------------------------------
## How I Set This Up (Step-by-Step Guide)

1. Docker Setup
    I containerized both the frontend and backend apps using Docker:

    * Backend (Flask API)
          Created a Dockerfile inside the Back-end/ directory.
          It installs Python dependencies and runs the Flask app.

    * Frontend (React App)
          Created another Dockerfile inside the Front-end/Spelling Bee/ directory.
          It builds the React app and serves it using a lightweight server (like Nginx or similar).

2.  GitHub Actions - CI/CD Workflow
      As this project was originally forked, I created a new branch to contribute DevOps features like Docker, GitHub Actions, and Terraform without disturbing the main codebase.

      * Steps I Followed:
          1. Forked the Repository
                I forked the original project to my GitHub account so I could work independently.

          2. Created a New Branch
                To keep the changes organized and separate from the main branch:

                      git checkout -b devops-features

          4. Created GitHub Actions Workflow
                I created a workflow file to enable CI/CD:

                      mkdir -p .github/workflows
                      touch .github/workflows/devops-pipeline.yml

              Inside devops-pipeline.yml,(file in the repo) I defined steps like building Docker images and running tests whenever I push to the branch.

          6. Git Add, Commit, Push
              After creating and updating the workflow:

                      git add .
                      git commit -m "Add CI/CD pipeline using GitHub Actions"
                      git push origin devops-features
             
          7. Checked GitHub Actions
              * Go to your repo on GitHub
              * Click the Actions tab
              * You’ll see the pipeline automatically running on push!



## Usage


1. Start the Flask backend and ensure it is running.
2. Start the React frontend.
3. Open your browser and navigate to http://localhost:3000 (or the port specified by React).

## API Endpoints

A Swagger interface is provided to explore and test endpoints interactively under the URL: [http://127.0.0.1:5000/apidocs/](http://127.0.0.1:5000/apidocs/)

## Contact

Feel free to contact me for any questions or suggestions about this project.
