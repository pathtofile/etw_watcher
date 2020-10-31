# Action Runner
Use GitHub Actions to automatically create commit diffs.

# Overview
This is designed to comapre the output of a command as Windows is updated from version to version.
It is setup to launch a GitHub Action either:
 - Every Day at midnight
 - If any new commits happen on the `main` branch

This action will execute the `run.ps1` scritp, then add any files that were added or changed in the `output` folder, before adding a new commit with the Windows Version as the commit message. If there are no changes, there is no new commit.

As such, when the Windows runner is updated, you can use the GitHub UI or other git tool to see the changes between versions.

# Setup:
## 1. Clone this repository

## 2. Setup Github Action Runner
Setup private GitHub Action runner.
If using the automatic free-tier runner, please read the [FAQ](#FAQ) Section below first, before continuing.

## 3. Alter `run.ps1`
This is the script that will be run. Use the existing `run.ps1` as a Guide - Make sure to log any output you wish the track in the `output` folder, and make sure the text encoding is `ASCII`

## 4. Commit changes
Commit and push the changes, and watch the `Actions` tab in the GitHub UI.


# FAQ
## Is This Acceptable use for the free-tier GitHub Actions?
In theory, this could be used with either your own private runners, OR the free tier GitHub Actions which are controler and run by GitHub themselves.

The Acceptable Use Policy of GitHub actions is here: https://docs.github.com/en/free-pro-team@latest/github/site-policy/github-additional-product-terms#5-actions-and-packages
It States:
```markdown
Actions and any elements of the Action service may not be used in violation of the Agreement, the Acceptable Use Policy, or the GitHub Actions service limitations. Additionally, Actions should not be used for:

 1. cryptomining;
 2. using our servers to disrupt, or to gain or to attempt to gain unauthorized access to, any service, device, data, account or network (other than those authorized by the GitHub Bug Bounty program)
 3. the provision of a stand-alone or integrated application or service offering Actions or any elements of Actions for commercial purposes;
 4. any activity that places a burden on our servers, where that burden is disproportionate to the benefits provided to users (for example, don't use Actions as a content delivery network or as part of a serverless application, but a low benefit Action could be ok if it’s also low burden); or
 5. any other activity unrelated to the production, testing, deployment, or publication of the software project associated with the repository where GitHub Actions are used.
```

So, IANAL, but if you make sure you are 100% not voilating `4.`, you're doing this for non-commercial reasons, and the results are used to assist development of a project also hosted in this repository, maybe it's ok?

For Example, getting the current list of ETW Providers for my ETW Tracer [Sealighter](https://github.com/pathtofile/Sealighter/) helps me ensure it works with all ETW Provers.
