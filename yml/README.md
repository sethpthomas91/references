# Overview

This directory contains useful yml scripts.

Structure:

- basic-template.yml: Starter workflow for Github Actions.

## Starting out

In order to start using these ymls create a .github directory at the root level in your Github repository.

Create a yml file called action.yml. This can really be named whatever you want it to be. Copy and paste the basic-template.yml in this file.

Merge this yml file into your main branch and navigate to github actions.

You need to have a runner available for you to use. This can be either a github runner or a self-hosted runner.

## basic-template.yml

Basic yml workflow that executes on a workflow dispatch.