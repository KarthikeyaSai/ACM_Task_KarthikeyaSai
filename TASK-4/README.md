# Web Application Deployment on AWS

This project outlines the deployment process of a simple To-Do list web application on AWS, utilizing Amazon S3, EC2, and Route 53. The frontend assets (HTML, CSS, and JavaScript) are stored in an S3 bucket for scalability and cost-efficiency, while the backend is hosted on an EC2 instance running a web server (Nginx or Apache). Route 53 is used for DNS management, providing a custom domain that points to the EC2 instance for seamless access. The site allows users to add, delete, and mark tasks as completed, with data stored locally using `localStorage`. Security best practices were followed by setting up IAM roles, configuring security groups, and enabling SSL via AWS Certificate Manager to ensure secure communication over HTTPS. This setup demonstrates how AWS services can be integrated to build and host a web application in a cost-effective, scalable, and secure manner.

This is the link on which the site is hosted onto
https://s3.eu-north-1.amazonaws.com/karyatodo.link/TASK-2/index.html

