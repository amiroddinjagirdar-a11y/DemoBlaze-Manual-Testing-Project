# Test Plan — DemoBlaze E-Commerce Website

## 1. Document control

| Field | Value |
|---|---|
| Project | DemoBlaze E-Commerce Website |
| Application URL | [https://www.demoblaze.com/](https://www.demoblaze.com/) |
| Document status | Planned test approach; execution has not been recorded |
| Prepared for | Self-initiated manual testing portfolio |
| Prepared by | Portfolio author (tester name to be added) |
| Version | 1.0 |

This is a self-initiated portfolio project for learning and demonstration. It does not represent employment, company experience, client work, or a formal engagement with the DemoBlaze application owner.

## 2. Purpose and objectives

This plan describes a focused manual test effort for the main customer-facing e-commerce journey. Its objectives are to:

- Check that core account, catalogue, cart, and order workflows can be exercised as designed.
- Verify positive flows as well as validation, boundary, and interruption cases.
- Assess visible usability and UI behavior across representative browsers and viewport sizes.
- Identify regressions in key workflows when a change or new test cycle is introduced.
- Provide traceable scenarios and a truthful record of test execution and issues.

## 3. Scope

### 3.1 In scope

- Site navigation and movement between the home/catalogue view, categories, product details, cart, and account dialogs.
- Signup and login, including required data, invalid inputs, duplicate/incorrect credentials where test data permits, and feedback messages.
- Product categories and catalogue behavior: category selection, product listing, and navigation between listings.
- Product details: visible product information and adding a selected item to the cart.
- Cart: item visibility, navigation back to shopping, and behavior after adding one or more products.
- Checkout/order placement: order form validation, submission, confirmation, and cart/order state as observable to the user.
- Functional, positive, negative, UI, smoke, regression, and exploratory testing.
- Basic compatibility checks using the agreed browsers, operating systems, and viewport sizes.

### 3.2 Out of scope

- Source-code, API, database, and infrastructure testing.
- Performance, load, stress, penetration, security, and accessibility conformance audits.
- Payment gateway or financial processing validation; do not enter real payment data.
- Email/SMS delivery verification or backend order reconciliation unless a safe, authorized mechanism is provided.
- Testing third-party services or integrations outside the public site's observable interface.
- Broad automated test implementation.

## 4. Test items and quality focus

| Area | Main quality focus |
|---|---|
| Navigation | Links and controls take the user to the expected view; returning to shopping remains possible |
| Signup | Input handling, required fields, account creation feedback, duplicate/invalid data handling |
| Login | Valid/invalid credential handling, feedback, and access to the expected account state |
| Categories/catalogue | Category selection, product list consistency, and usable transitions |
| Product details | Correctly associated product information and add-to-cart action |
| Cart | Added item visibility and consistency between product selection and cart contents |
| Checkout/order placement | Form validation, order submission feedback, and clear completion/cancel paths |
| UI/usability | Readability, alignment, responsive layout, visible state and actionable feedback |

## 5. Test approach

Testing is planned as hands-on, black-box manual testing using the website UI. Scenarios in [Test Scenarios](Test_Scenarios.md) are a test design catalogue, not evidence of completed execution.

### 5.1 Test types

- **Functional:** Verify user-visible behavior against expected outcomes.
- **Positive:** Exercise valid inputs and standard workflows.
- **Negative:** Check invalid, missing, inconsistent, or boundary inputs and their feedback.
- **UI/usability:** Review layout, readability, control visibility, and feedback at representative sizes.
- **Smoke:** A small, high-priority check that the core journey is available before deeper testing.
- **Regression:** Re-run key existing workflows after a relevant site change or retest.
- **Exploratory:** Time-boxed, documented investigation of areas not fully covered by scripted scenarios.

### 5.2 Prioritization

- **P1 — High:** Blocks or compromises a core customer journey (account access, product selection, cart, or order submission).
- **P2 — Medium:** Important feature or meaningful validation/UI issue with a workaround or limited impact.
- **P3 — Low:** Cosmetic or low-impact issue that does not prevent the main workflow.

Priority is a planning aid, not a defect severity assessment. Severity and priority for a reported issue should be assigned based on actual evidence and impact.

### 5.3 Execution and evidence

For each executed scenario, record its ID, date, tester, environment, actual result, status (Pass/Fail/Blocked/Not Run), and evidence reference where appropriate. A scenario remains **Not Run** until it has actually been attempted. For a failure, capture concise reproduction steps, expected and actual results, and a screenshot or other safe evidence. Avoid recording passwords, personal information, or other sensitive data.

## 6. Test environment

The exact environment must be recorded at execution time; it has not been established or validated by this plan.

| Component | Planned/required record |
|---|---|
| Application | DemoBlaze public demo, `https://www.demoblaze.com/` |
| Environment type | Publicly accessible demo; deployment/build identifier may not be available |
| Browser | Record browser name and full version; use a current stable desktop browser |
| Operating system | Record name and version |
| Viewports | At minimum, a desktop viewport and a narrow/mobile-sized viewport; record dimensions |
| Network | Record notable connectivity limitations or interruptions |
| Test data | Use only synthetic, non-sensitive data and accounts permitted by the site |
| Date/time | Record execution date and timezone |

If the site is unavailable, behaves inconsistently, or changes during a run, record the limitation and avoid treating an environmental failure as a confirmed product defect without further reproduction.

## 7. Test data and safety

- Use synthetic names and non-sensitive values only.
- Do not use real passwords, personal contact information, or payment details.
- Use an account created specifically for the test, if the site permits, and avoid reusing credentials.
- Do not create excessive accounts/orders or perform high-volume activity.
- Record only the minimum information needed to reproduce an issue; redact sensitive information from evidence.
- Confirm whether the demo site supports test transactions before attempting an order flow; do not make a real purchase.

## 8. Assumptions and dependencies

- The public site is reachable and available for manual interaction during the test window.
- The tester has an up-to-date browser and can record its version and viewport.
- Test accounts and synthetic data may be used in accordance with the site's rules.
- User-visible messages and state changes are the primary oracle when backend or email access is unavailable.
- No formal product requirements or acceptance criteria have been supplied; expected results in the scenario catalogue are based on standard user-facing e-commerce expectations and must be adjusted if authoritative requirements are obtained.
- Content, interface, and behavior may change independently of this portfolio.
- Order submission may be demo-only; its real-world fulfillment or downstream processing is not assumed.

## 9. Risks and mitigations

| Risk | Potential impact | Mitigation |
|---|---|---|
| Public demo availability or behavior changes | Results may be intermittent or not reproducible | Record timestamp/environment, retry responsibly, and distinguish environmental blockers from product defects |
| No formal requirements | Expected behavior may be ambiguous | Mark assumptions, seek authoritative clarification when available, and avoid overclaiming defects |
| Shared demo data or account state | Results may be affected by prior activity | Use a dedicated synthetic account where allowed; record starting conditions and clean up only when safe |
| Order flow may have side effects | Unintended real or persistent transaction | Verify demo/test nature first; do not submit real financial information or make a real purchase |
| Browser/network differences | UI or workflow may vary by environment | Record versions and viewport; repeat only on agreed representative configurations |
| Sensitive data in evidence | Privacy or credential exposure | Use synthetic data and inspect/redact screenshots and notes before sharing |
| Limited time and coverage | Lower-priority paths may remain untested | Prioritize P1 smoke/core journey first and report untested areas explicitly |

## 10. Entry and exit criteria

### Entry criteria

- The target URL is available, or an availability limitation is documented.
- Scope and safe test-data rules are understood.
- The execution environment and starting conditions can be recorded.
- Scenario catalogue is available to the tester.

### Exit criteria

- Planned in-scope scenarios are either executed or explicitly marked Not Run/Blocked with a reason.
- Failures have sufficient reproduction detail and evidence, where safely available.
- No result is reported as executed without an actual attempt.
- Execution totals, open issues, limitations, and residual risks are documented in the summary report.
- Test completion is reported against the agreed scope; untested scenarios are not implied to have passed.

## 11. Deliverables

- This test plan.
- [Test scenario catalogue](Test_Scenarios.md) with execution fields.
- [Bug report template](Bug_Report_Template.md) for confirmed, reproducible issues.
- [Test summary report](Test_Summary_Report.md), completed only after execution.
- Any actual test evidence or defect records, stored and shared safely.

## 12. Execution status

**No tests are represented as executed in this portfolio at the time this plan was prepared.** The scenarios are planned test coverage. Update the execution status and summary only after performing the tests.
