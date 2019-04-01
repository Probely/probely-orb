# Probely Security Scanner Orb
This orb uses [Probely](https://probely.com) to scan your web application for 
security vulnerabilities. It enables security testing in your CI/CD pipeline.

Probely is a Web Vulnerability Scanning suite for Agile Teams. It provides 
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

# Using the orb
Detailed usage instructions for the Orb are provided in the CircleCI [registry](https://circleci.com/orbs/registry/orb/probely/security-scan).

# Generating an API key
Before using the plugin, you first need to create an API key for Jenkins to be able to start a scan with Probely.

1. Go to https://app.probely.com and log in
1. Select a target from the drop-down list
1. Go to the **Settings** page
1. Click on the **Integrations** tab
1. Write a name for the API Key. Since we want this API Key for Jenkins, we name it **Jenkins**
1. Click on **Generate New Key**

![Creating an API key](/images/new_api_key.png)

After the API key is created, please take note of the `Target id` and API key values. They will be required to configure the Plugin credentials later on.


# Building and Contributing

Contributions are very welcome. 


