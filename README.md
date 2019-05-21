# Probely Security Scanner Orb [![CircleCI Build Status](https://circleci.com/gh/Probely/security-scan.svg?style=shield "CircleCI Build Status")](https://circleci.com/gh/Probely/probely-orb) [![CircleCI Orb Version](https://img.shields.io/badge/endpoint.svg?url=https://badges.circleci.io/orb/probely/security-scan)](https://circleci.com/orbs/registry/orb/probely/security-scan) [![GitHub license](https://img.shields.io/badge/license-MIT-blue.svg)](https://raw.githubusercontent.com/Probely/security-scan/master/LICENSE) [![CircleCI Community](https://img.shields.io/badge/community-CircleCI%20Discuss-343434.svg)](https://discuss.circleci.com/c/orbs)

This orb uses [Probely](https://probely.com) to scan your web application for 
security vulnerabilities. It enables security testing in your [CircleCI](https://circleci.com) pipeline.

## What is CircleCI?

[CircleCI](https://circleci.com) is a leading continuous integration tool that allows building, testing,
and deploying applications.
Orbs allow CircleCI to be extended with additional functionality. In this
particular case, this orb integrates Probely with CircleCI enabling security
testing of your applications.

You can learn more about Orbs [here](https://circleci.com/docs/2.0/using-orbs/).

## What is Probely?

[Probely](https://probely.com) is a Web Vulnerability Scanning suite for Agile Teams. It provides 
continuous scanning of your Web Applications and lets you efficiently manage 
the lifecycle of the vulnerabilities found. Some of its main features are:

 * Tests for more than 5000 vulnerabilities 
 * Authenticated scanning
 * Tailored instructions on how to fix the vulnerabilities (including snippets of code)
 * API for every single feature
 * Jira and Slack integration
 * PCI-DSS and OWASP compliance reports
 * Designed for developers, easy to use, easy to understand.
 * Re-test vulnerabilities, define custom headers, multiple users, CVSS score, scheduling, and more.

# Usage

Example `config.yml`:

```yaml
version: 2.1

orbs:
  probely: probely/security-scan@1.1.3

jobs:
  scantest:
    executor: ci-base
    steps:
    - run: exit 0 # toggle this to force success or status for testing
    - probely/scan:
	# Remember to set the PROBELY_API_KEY environment variable!
        target_id: ${PROBELY_TARGET_ID}
```

For more detailed usage for this Orb, please check [here](https://circleci.com/orbs/registry/orb/probely/security-scan).

# Dependencies

## cURL

cURL is used to call the Probely API, and must be installed in the container to function properly.

# Help

## Generating an API key on Probely

Before using the plugin, you first need to create an API key for CircleCI to be able to start a scan with Probely.

1. Go to [Probely](https://app.probely.com), and log in
1. Select a target from the drop-down list
1. Go to the **Settings** page
1. Click on the **Integrations** tab
1. Write a name for the API Key. Since we want this API Key for CircleCI, we name it **CircleCI**
1. Click on **Generate New Key**

![Creating an API key](/images/new_api_key.png)

After the API key is created, please take note of the `Target id` and API key values. They will be required to configure the Plugin credentials later on.

# Building and Contributing

Contributions are very welcome! Send us pulls requests :)
