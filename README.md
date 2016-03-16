# example-terraform-multi-provider-modules

A Terraform example using multiple AWS providers within modules.

As of Terraform v0.6.12, provider inheritance is problematic with modules
([#1819](https://github.com/hashicorp/terraform/issues/1819)), so this
example defines the provider resource in the module directly.
