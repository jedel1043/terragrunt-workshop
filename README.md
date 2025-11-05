# Terraform + Terragrunt workshop

Welcome to the Terraform + Terragrunt workshop! This repository contains a
guide on how to use Terraform to deploy and manage Juju models. Additionally,
this shows how to minimize deduplication of deployment plans with Terragrunt.

This guide is a partial adaptation of the [Terralith to Terragrunt guide][tl2tg].
You should read that guide if you want more extensive explanations about the concepts
used in this guide.

[tl2tg]: terragrunt.gruntwork.io/docs/guides/terralith-to-terragrunt/

## Getting started

To go through the workshop, you'll require two things:

- A working Juju installation.
- LXD exposed as a Juju cloud.

## Set up

### Installing Tenv

This is a version manager for OpenTofu, Terraform, Terragrunt, and other TF-related
tools. We will use it to easily install and manage the versions of OpenTofu and
Terragrunt

```bash
sudo snap install tenv
```

Then, install OpenTofu + Terragrunt with the command

```bash
tenv opentofu install 1.10.6 # OpenTofu
tenv tg install 0.93.1 # Terragrunt
```

If you are rate limited by Github, you might need to generate a personal access token
in https://github.com/settings/personal-access-tokens, then set the `TENV_GITHUB_TOKEN`
with:
```bash
export TENV_GITHUB_TOKEN=<my-token>
```

## Level 1 - Basic infrastructure

Checkout the `level-1` branch:

```bash
git checkout level-1
```

Then run the following commands to initialize and deploy the Terraform plans:

```bash
tofu -chdir=live init
tofu -chdir=live apply
```

After checking that all the resources look good, just type "yes" and enter to
create all the defined resources.

## Level 2 - Terraform modules

## Level 3 - Two deployments

## Level 4 - Terragrunt
