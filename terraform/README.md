# aws-quadtree-terraform
Terraform to setup QuadTree environment on AWS to apply DevOps practice.

## Reading Materials.
- https://www.terraform.io/
- https://blog.gruntwork.io/an-introduction-to-terraform-f17df9c6d180
- https://www.terraform.io/intro/index.html
- http://www.darwinrecruitment.com/news/what-is-terraform-and-how-is-it-changing-devops-technologies-68233/
- https://www.terraform.io/docs/providers/aws/index.html


## Run

1. Export AWS_ACCESS_KEY_ID , AWS_SECRET_ACCESS_KEY to Environment Variable.
  http://docs.aws.amazon.com/cli/latest/userguide/cli-chap-getting-started.html#cli-environment

2. Browse Into env/prod folder.

3. Run following commands.

<br>

```$ terraform get```
> Usage: terraform get [options] PATH<br>

**Downloads and installs modules needed for the configuration given by
PATH.**

This recursively downloads all modules needed, such as modules
imported by modules imported by the root and so on. If a module is
already downloaded, it will not be redownloaded or checked for updates
unless the -update flag is specified.

----------
```$ terraform plan```
> Usage: terraform plan [options] [DIR-OR-PLAN]

  **Generates an execution plan for Terraform.**

  This execution plan can be reviewed prior to running apply to get a
  sense for what Terraform will do. Optionally, the plan can be saved to
  a Terraform plan file, and apply can take this plan file to execute
  this plan exactly.

  If a saved plan is passed as an argument, this command will output
  the saved plan contents. It will not modify the given plan.

  ---------
  ```$ terraform apply```
  > Usage: terraform apply [options] [DIR-OR-PLAN]

  Builds or changes infrastructure according to Terraform configuration
  files in DIR.

  By default, apply scans the current directory for the configuration
  and applies the changes appropriately. However, a path to another
  configuration or an execution plan can be provided. Execution plans can be
  used to only execute a pre-determined set of actions.

  DIR can also be a SOURCE as given to the "init" command. In this case,
  apply behaves as though "init" was called followed by "apply". This only
  works for sources that aren't files, and only if the current working
  directory is empty of Terraform files. This is a shortcut for getting
  started.

  ---------
  ``` $ terraform destroy```
  > Usage: terraform destroy [options] [DIR]

  Destroy Terraform-managed infrastructure.