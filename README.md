# cap_stone_project_1

## Overview

This project aims to provide a complete infrastructure-as-code solution using Terraform to create a Kubernetes cluster in AWS. It also includes setting up a CI/CD pipeline with Jenkins and developing a microservice that provides current weather data for a given location.

## Project Components

### 1. Cloud Engineering / Infrastructure-as-Code

- **Objective**: Use Terraform to create a Kubernetes cluster in AWS.
- **Requirements**:
  - You are free to use publicly available modules/components.
  - Ensure you understand the logic within those modules, as questions may arise.
  - Assume the IAM user running this has full admin permissions in AWS and is operating in the `us-east-2` region.

### 2. Continuous Integration / Continuous Deployment

- **Objective**: Install Jenkins in the Kubernetes cluster to act as a CI/CD tool.
- **Requirements**:
  - The Jenkins administrative interface should be publicly accessible but protected by a username and password.

### 3. Software Development

- **Objective**: Create a microservice backend that provides current weather data for a given location.
- **Requirements**:
  - Expose a REST endpoint to handle requests for weather data.
  - Use a free API like [Open Meteo](https://open-meteo.com/) to obtain weather data.
  - You may use any of the following programming languages: JavaScript, Python, Java, Go, or C#.
  - Store the code for the service in a public Git repository (preferably GitHub).
  - The service should be built by a pipeline in Jenkins, deployed to the Kubernetes cluster, and made publicly accessible.

### 4. Tying It All Together

- **Objective**: Provide a single script that automates the entire process.
- **Requirements**:
  - The script should:
    1. Run the Infrastructure-as-Code (IaC) to create the Kubernetes cluster.
    2. Install the CI/CD tool (Jenkins) into Kubernetes.
    3. Create a pipeline for your microservice.
    4. Execute the pipeline for your microservice, thus building and deploying it.
  
## Additional Instructions

- Please provide any additional instructions or assumptions you have made for running the script.
- Ensure that all components are well-documented and that the code is clean and maintainable.

## Getting Started

1. **Clone the Repository**:
   ```bash
   git clone https://github.com/yourusername/your-repo-name.git
   cd your-repo-name
"# project1" 
