# DemoBlaze E-Commerce — Manual Testing Portfolio

> **Portfolio project:** This is a self-initiated manual testing exercise created for learning and demonstration. It is not company experience, client work, or evidence that the application has been tested in a production engagement.

## Project overview

This portfolio documents a structured manual QA approach for the publicly accessible [DemoBlaze](https://www.demoblaze.com/) e-commerce website. It focuses on the customer journey from account access and product discovery through cart management and order placement.

The repository contains test planning and design artifacts plus a manually maintained execution record. As recorded in [Test Cases](docs/Test_cases.md), TC_001 and TC_002 are marked Pass; TC_003–TC_015 remain Not Run. See the [Test Execution Report](docs/Test_Execution_Report.md) for the current record. These user-provided results have no execution date or evidence recorded. No defects are asserted.

## Objectives

- Demonstrate how to define scope, assumptions, risks, and a practical test approach.
- Design traceable manual scenarios for core e-commerce workflows.
- Include functional, positive, negative, UI, smoke, regression, and exploratory coverage.
- Provide a consistent template for recording defects and an honest test summary.
- Practice clear, reproducible QA documentation suitable for a fresher tester portfolio.

## Documents

| Document | Purpose |
|---|---|
| [Test Plan](docs/Test_Plan.md) | Scope, objectives, environment, approach, assumptions, risks, and completion criteria |
| [Test Scenarios](docs/Test_Scenarios.md) | Planned scenarios, priorities, test types, and execution status |
| [Test Cases](docs/Test_cases.md) | Detailed manual cases and recorded execution states |
| [Test Execution Report](docs/Test_Execution_Report.md) | Execution summary with dates, outcomes, and evidence fields |
| [Bug Report Template](docs/Bug_Report_Template.md) | Reusable format for recording and triaging a reproducible issue |
| [Test Summary Report](docs/Test_Summary_Report.md) | Summary report template; update after test execution |
| [RTM](RTM/RTM.md) | Requirement-to-test-case traceability matrix |
| [SQL practice queries](SQL/database_test_queries.sql) | Practice queries for an illustrative e-commerce schema only |

## Application under test

- **Name:** DemoBlaze E-Commerce Website
- **URL:** [https://www.demoblaze.com/](https://www.demoblaze.com/)
- **Test type:** Manual web application testing
- **Project status:** Test design/documentation with partial execution recorded for TC_001 and TC_002

## How to use this portfolio

1. Review the [test plan](docs/Test_Plan.md) and confirm the scope and environment before testing.
2. Use the [scenario catalogue](docs/Test_Scenarios.md) to execute and record tests. Record actual results and evidence only after performing each test.
3. Report reproducible issues using the [bug report template](docs/Bug_Report_Template.md). Do not report assumptions as defects.
4. Update the [test execution report](docs/Test_Execution_Report.md) and [test summary report](docs/Test_Summary_Report.md) with actual dates, outcomes, evidence, open issues, and limitations after each test run.

## Responsible testing note

The target is a publicly accessible demo site. Use it only for ordinary, low-volume manual testing. Do not submit real personal, payment, or sensitive information, automate high-volume activity, or attempt destructive/security testing without explicit authorization. Site content, availability, and behavior may change; re-check the environment and update this portfolio when executing tests.

## Suggested future updates

- Add tester name, test date, browser/OS versions, and build or site version when known.
- Record actual execution evidence and outcomes in the test cases and execution report.
- Add defect records only for issues actually reproduced, with sensitive data redacted.
- Update the summary with the exact scope and execution period; preserve the distinction between planned and executed testing.
