[![Run Tests](https://github.com/rsilveira65/terraform-playground/actions/workflows/run_linter_and_tests.yaml/badge.svg)](https://github.com/rsilveira65/terraform-playground/actions/workflows/run_linter_and_tests.yaml) [![Build and Publish](https://github.com/rsilveira65/terraform-playground/actions/workflows/build_and_push.yaml/badge.svg)](https://github.com/rsilveira65/terraform-playground/actions/workflows/build_and_push.yaml)



## Architecture 
TODO

## Workflows
### [Build and Push](.github/workflows/build_and_push.yaml)
Build the application artifact and push it to the Docker Hub registry.

### [Lint and Test](.github/workflows/run_linter_and_tests.yaml)
Apply the linter and run the tests. Uses ESLint and Mocha.

### [Provisioning](.github/workflows/provisioning.yaml)
Apply terraform changes if any tf file has updated in the infrastructure folder.

### [Deploy](.github/workflows/deploy.yaml)
Apply the application Helm chart to the Kubernetes cluster.