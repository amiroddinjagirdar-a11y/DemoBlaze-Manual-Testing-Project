# Test Scenarios — DemoBlaze E-Commerce Website

## Status and usage

This document is a **planned test catalogue**, not an execution record. No scenario below is claimed to have been run, passed, failed, or blocked. After execution, populate the status, actual result, date, environment, and evidence fields based on what was actually observed.

**Status values:** Not Run (default), Pass, Fail, Blocked. Use Blocked only when an execution attempt cannot proceed and record the reason.

**Priority:** P1 = high/core journey; P2 = medium; P3 = low/cosmetic. These are planning priorities, not defect severities.

## Scenario catalogue

| ID | Area | Scenario / planned check | Expected result | Type(s) | Priority | Status |
|---|---|---|---|---|---|---|
| NAV-001 | Navigation | Open the home page using the target URL | Home/catalogue view loads and primary navigation is available | Smoke, Functional | P1 | Not Run |
| NAV-002 | Navigation | Navigate from the home view to the cart and return to shopping | Each destination opens as expected; a clear route back to the catalogue is available | Functional, UI | P1 | Not Run |
| NAV-003 | Navigation | Use the brand/home control from a non-home view | User returns to the home/catalogue view without an unintended error | Functional, Regression | P2 | Not Run |
| NAV-004 | Navigation | Inspect primary navigation and category controls at desktop and narrow viewport sizes | Controls remain visible/usable, or an understandable responsive navigation pattern is provided | UI, Exploratory | P2 | Not Run |
| AUTH-001 | Signup | Open signup and submit valid, synthetic registration data | User receives clear success feedback and the account can be used if the UI indicates creation succeeded | Positive, Functional | P1 | Not Run |
| AUTH-002 | Signup | Submit signup with required inputs omitted | Submission is prevented or a clear validation response is shown; no ambiguous success is presented | Negative, Functional | P1 | Not Run |
| AUTH-003 | Signup | Submit malformed or boundary-length values in fields that accept them | Inputs are handled safely and feedback is understandable; invalid data is not silently accepted | Negative, Functional | P2 | Not Run |
| AUTH-004 | Signup | Attempt to register an already-used test username, if supported by the site | Duplicate-account handling is clear and does not misleadingly report a new account | Negative, Functional | P2 | Not Run |
| AUTH-005 | Signup | Dismiss signup without submitting | Dialog closes through available controls and no account is created | Functional, UI | P3 | Not Run |
| AUTH-006 | Login | Log in using a valid test account | User receives appropriate feedback and the expected signed-in state is shown | Positive, Functional, Smoke | P1 | Not Run |
| AUTH-007 | Login | Submit incorrect credentials | Login is not reported as successful; feedback is clear and the user can retry | Negative, Functional | P1 | Not Run |
| AUTH-008 | Login | Submit login with one or more required fields empty | Submission is prevented or the missing input is clearly indicated | Negative, Functional | P2 | Not Run |
| AUTH-009 | Login | Close or cancel login without submitting | Dialog closes and the user remains able to navigate the site | UI, Functional | P3 | Not Run |
| CAT-001 | Categories | Select each available product category | The selected category is reflected in the listing and products shown are consistent with that selection | Functional, Regression | P1 | Not Run |
| CAT-002 | Catalogue | Open a product from a category listing | The selected product's detail view opens and corresponds to the item selected | Functional, Smoke | P1 | Not Run |
| CAT-003 | Catalogue | Navigate between categories and return to the full catalogue | Listings update appropriately and navigation remains usable | Functional, Regression | P2 | Not Run |
| CAT-004 | Catalogue/UI | Review product cards, images, titles, and price presentation | Content is legible, aligned, and associated with the correct visible product card | UI, Exploratory | P2 | Not Run |
| CAT-005 | Catalogue | Use available pagination or additional-item navigation, if present | Additional products can be reached and the listing updates without losing basic navigation | Functional, Exploratory | P3 | Not Run |
| PROD-001 | Product details | Inspect a selected product's title, image, description, and price | Detail information is visible and internally consistent with the selected product | Functional, UI | P1 | Not Run |
| PROD-002 | Product details | Add a product to the cart from its detail view | User receives appropriate feedback; the selected product is available in the cart | Positive, Functional, Smoke | P1 | Not Run |
| PROD-003 | Product details | Activate add-to-cart repeatedly or during a delayed response | Behavior is understandable and does not create unintended duplicate items without user feedback | Negative, Exploratory | P2 | Not Run |
| PROD-004 | Product details/UI | Use browser back/navigation after opening product details | User can return to a usable prior view without a broken or misleading state | UI, Regression | P3 | Not Run |
| CART-001 | Cart | Open the cart after adding one product | Cart displays the expected product and relevant information | Positive, Functional, Smoke | P1 | Not Run |
| CART-002 | Cart | Add a second distinct product and inspect the cart | Both selected products are represented correctly and the cart remains usable | Functional, Regression | P1 | Not Run |
| CART-003 | Cart | Remove an item, if the UI provides a removal action | The selected item is removed and remaining cart contents/total presentation update appropriately | Functional, Negative | P2 | Not Run |
| CART-004 | Cart | Open cart with no item added in the current session | Empty state is understandable and does not display misleading item data | Negative, UI | P2 | Not Run |
| CART-005 | Cart | Navigate away from and back to the cart | Cart contents behave consistently with the site's intended session behavior | Functional, Exploratory | P2 | Not Run |
| CART-006 | Cart/UI | Review cart layout with multiple items and at a narrow viewport | Item details and available actions remain readable and usable | UI, Exploratory | P2 | Not Run |
| ORD-001 | Checkout/order | Open order placement from a populated cart | Order form opens and required inputs/actions are identifiable | Functional, Smoke | P1 | Not Run |
| ORD-002 | Checkout/order | Submit the order form with valid synthetic data, only after confirming it is a demo-safe flow | Clear completion feedback is presented and the order flow reaches its expected user-visible end state | Positive, Functional | P1 | Not Run |
| ORD-003 | Checkout/order | Attempt submission with required fields empty | Order is not misleadingly confirmed; missing/invalid inputs are surfaced clearly | Negative, Functional | P1 | Not Run |
| ORD-004 | Checkout/order | Enter malformed or boundary values in order fields | Invalid values are handled with understandable feedback and do not result in a false success | Negative, Functional | P2 | Not Run |
| ORD-005 | Checkout/order | Cancel or close order placement before submission | User can safely leave the form; no success confirmation is shown for an unsubmitted order | Functional, UI | P2 | Not Run |
| ORD-006 | Checkout/order | Review cart/order state after a completed demo order | User-visible state is consistent with the site's stated flow; any ambiguity is recorded for clarification | Functional, Exploratory | P2 | Not Run |
| UI-001 | UI/usability | Review modal dialogs for readable labels, visible controls, and clear dismissal | Dialog content and controls are understandable and do not obstruct essential actions | UI | P2 | Not Run |
| UI-002 | UI/usability | Check representative desktop and narrow viewport layouts across key screens | Content and controls remain usable without unintended clipping or overlap | UI, Regression | P2 | Not Run |
| UI-003 | UI/usability | Review validation and success feedback across signup, login, cart, and order flows | Feedback is visible, understandable, and associated with the action that produced it | UI, Functional | P2 | Not Run |

## Smoke test subset

Run this minimal, prioritized subset first when establishing availability. Each remains **Not Run** until actually attempted:

1. NAV-001 — Open the site.
2. AUTH-006 — Log in with a valid test account, if a safe test account is available.
3. CAT-001 — Select a category.
4. CAT-002 and PROD-002 — Open a product and add it to the cart.
5. CART-001 — Verify the selected product in the cart.
6. ORD-001 — Verify that order placement can be opened. Do not submit an order until the flow is confirmed demo-safe.

If test-account setup is unavailable, mark the relevant case Blocked or Not Run with a reason; do not substitute an assumed result.

## Regression subset

After a relevant change or a new test cycle, consider re-running NAV-001, AUTH-006/007, CAT-001/002, PROD-002, CART-001/002, and ORD-001/003. Record which cases were selected and why; this suggested subset is not a claim of completed regression testing.

## Exploratory charter

**Charter:** Explore the end-to-end customer journey and look for confusing, inconsistent, or interrupted states not captured by the scripted cases.

- Start from the catalogue and vary the order of category, product, cart, and navigation actions.
- Observe dialogs and feedback during cancellation, repeated actions, and navigation changes.
- Compare the selected product and cart/order information at each step.
- Inspect important screens at desktop and narrow viewport sizes.
- Record session starting conditions, actions, observations, and any reproducible issue. Timebox the session and do not use real personal or payment data.

Exploratory observations are not defects until the expected behavior is sufficiently clear and the issue is reproducible.

## Execution record (to complete during actual testing)

| Scenario ID | Execution date/time | Tester | Environment (OS/browser/version/viewport) | Status | Actual result / evidence reference |
|---|---|---|---|---|---|
| _Add a row per attempted scenario_ | — | — | — | Not Run | — |

Do not enter a result or mark a case Pass based solely on the expected-result text above.
