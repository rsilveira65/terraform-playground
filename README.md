[![Run Tests](https://github.com/rsilveira65/terraform-playground/actions/workflows/run_linter_and_tests.yaml/badge.svg)](https://github.com/rsilveira65/terraform-playground/actions/workflows/run_linter_and_tests.yaml) [![Build and Publish](https://github.com/rsilveira65/terraform-playground/actions/workflows/build_and_push.yaml/badge.svg)](https://github.com/rsilveira65/terraform-playground/actions/workflows/build_and_push.yaml)

## Folder Structure
### [application](.github/application/README.md)
Application developed using NodeJS that calculates if a number is prime or not.
#### Stack: 
- [NodeJS](https://nodejs.org/en/)
- [Docker](https://www.docker.com/)
- [Express](https://expressjs.com/)
- [Chai](https://chaijs.com/)
- [Mocha](https://mochajs.org/)
- [EsLint](https://eslint.org/)

### [infrastructure](.github/infrastructure/README.md)
Infrastructure as Code that contains the infrastructure of the application.
#### Stack: 
- [Terraform](https://www.terraform.io/)
- [Terraform Provider AWS](https://www.terraform.io/docs/providers/aws/)
- [EKS Fargate](https://docs.aws.amazon.com/eks/latest/userguide/fargate-platform-image.html)

### [hearst_tha](.github/hearst_tha/README.md)
Helm Chart that deploys the application in the EKS cluster.


## Architecture Diagram
TODO

## CI/CD Diagram
TODO

## Workflows
### [Build and Push](.github/workflows/build_and_push.yaml)
Build the application artifact and push it to the [Docker Hub registry](https://hub.docker.com/r/rsilveira65/hearst_tha).

### [Lint and Test](.github/workflows/run_linter_and_tests.yaml)
Apply the linter and run the tests. Uses ESLint and Mocha.

### [Provisioning](.github/workflows/provisioning.yaml)
Apply terraform changes if any tf file has updated in the infrastructure folder.

### [Deploy](.github/workflows/deploy.yaml)
Apply the application Helm chart to the Kubernetes cluster.