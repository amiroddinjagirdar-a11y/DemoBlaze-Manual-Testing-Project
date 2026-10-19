# Bug Report Template — DemoBlaze E-Commerce Website

> This is a blank template. It does not document an actual defect. Create a report only after observing and reproducing an issue; do not treat planned scenarios or assumptions as findings.

## Defect report

| Field | Details |
|---|---|
| Bug ID | _Assigned identifier_ |
| Title | _Concise summary: [Area] observable issue and condition_ |
| Status | New / Open / In Progress / Fixed / Retest / Closed / Rejected / Deferred |
| Severity | Critical / High / Medium / Low |
| Priority | P1 / P2 / P3 |
| Reported by | _Name or portfolio tester identifier_ |
| Date/time found | _Include timezone_ |
| Environment | _URL, OS/version, browser/version, viewport, network notes_ |
| Related test scenario | _Scenario ID, if applicable_ |
| Evidence | _Screenshot/video/log reference; redact sensitive information_ |

### Summary

_Describe the actual, observable problem in one or two sentences. Avoid speculative root causes._

### Preconditions

1. _Required starting state, account type, cart contents, or other setup._

### Steps to reproduce

1. _Action 1._
2. _Action 2._
3. _Continue with specific, repeatable actions._

### Expected result

_State the expected behavior and its basis (requirement, accepted product behavior, or clearly identified assumption)._

### Actual result

_Describe what was observed. Include exact user-visible message text where useful._

### Reproducibility

_For example: 3/3 attempts, or intermittent with conditions. Record only attempts actually performed._

### Impact

_Explain which user or workflow is affected and whether a safe workaround exists._

### Additional notes

_Relevant observations, limitations, or follow-up questions. Separate confirmed facts from hypotheses._

## Severity guidance

- **Critical:** A confirmed issue makes the application or a core workflow unusable for intended users, with no reasonable workaround, or causes a serious integrity impact.
- **High:** A major feature or core journey is significantly impaired; workaround is unavailable or costly.
- **Medium:** A feature is partially impaired or a reasonable workaround exists.
- **Low:** Minor functional or cosmetic impact with little effect on task completion.

Severity should reflect observed impact. Do not assign Critical/High solely because a test failed once or because the expected behavior is uncertain.

## Reporting quality checklist

- [ ] Issue was actually observed and can be reproduced, or intermittent behavior is described honestly.
- [ ] Title identifies the affected area and symptom without asserting an unverified cause.
- [ ] Preconditions and steps are specific enough for another tester to follow.
- [ ] Expected behavior has a stated basis; ambiguous behavior is flagged as a question.
- [ ] Actual result is distinct from expected result.
- [ ] Environment and relevant scenario ID are included.
- [ ] Evidence contains no real credentials, payment information, or unnecessary personal data.
- [ ] Severity, priority, and user impact are justified by observed facts.
