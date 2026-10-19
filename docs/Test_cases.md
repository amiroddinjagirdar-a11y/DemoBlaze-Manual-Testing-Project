# DemoBlaze E-Commerce — Manual Test Cases

**Target:** [https://www.demoblaze.com/](https://www.demoblaze.com/)  

**Execution status:** All 15 test cases are marked Pass based on the tester’s report. Ensure actual results and evidence reflect what was observed during execution.

## Test Cases

### TC_001 — Verify homepage loads

- **Module:** Homepage

- **Test Scenario:** Verify the homepage loads and presents the main catalogue and navigation.

- **Preconditions:** Browser has internet access.

- **Test Steps:** 1. Open the target URL. 2. Wait for the page to finish loading. 3. Inspect the page content and primary navigation.

- **Test Data:** Target URL.

- **Expected Result:** The homepage loads without a blocking error; the catalogue and primary navigation are available.

- **Actual Result:** Homepage loaded successfully. Product categories and products are visible.

- **Status:** Pass

- **Priority:** High

### TC_002 — Navigate between homepage and cart

- **Module:** Navigation

- **Test Scenario:** Verify the user can navigate to the cart and return to the homepage/catalogue.

- **Preconditions:** Homepage is open.

- **Test Steps:** 1. Select the cart navigation control. 2. Verify the cart view opens. 3. Use the homepage/brand navigation control to return.

- **Test Data:** No special data required.

- **Expected Result:** Each navigation action opens the corresponding view and the user can return to the catalogue.

- **Actual Result:** Cart page opened successfully, and navigation back to the homepage worked as expected.

- **Status:** Pass

- **Priority:** High

### TC_003 — Select a product category

- **Module:** Product Categories

- **Test Scenario:** Verify selecting a category updates the product listing.

- **Preconditions:** Homepage and category controls are available.

- **Test Steps:** 1. Select an available product category. 2. Observe the product listing. 3. Select another category and observe the listing again.

- **Test Data:** Any two available categories.

- **Expected Result:** The listing updates to show products associated with the selected category.

- **Actual Result:** Tester reported this test case as passed; add the specific observed result and evidence.

- **Status:** Pass

- **Priority:** High

### TC_004 — View product details

- **Module:** Product Details

- **Test Scenario:** Verify a product card opens the corresponding product details.

- **Preconditions:** A product is visible in the catalogue.

- **Test Steps:** 1. Select a product card. 2. Review the product details. 3. Compare the displayed product with the selected card.

- **Test Data:** Any listed product.

- **Expected Result:** The detail view opens for the selected product and presents its visible product information.

- **Actual Result:** Tester reported this test case as passed; add the specific observed result and evidence.

- **Status:** Pass

- **Priority:** High

### TC_005 — Add a product to the cart

- **Module:** Add to Cart

- **Test Scenario:** Verify a selected product can be added to the cart.

- **Preconditions:** A product detail view is open.

- **Test Steps:** 1. Activate the add-to-cart control. 2. Acknowledge any browser confirmation if presented. 3. Open the cart.

- **Test Data:** One listed product.

- **Expected Result:** Appropriate feedback is presented and the selected product appears in the cart

- **Actual Result:** Tester reported this test case as passed; add the specific observed result and evidence.

- **Status:** Pass

- **Priority:** High

### TC_006 — Verify cart contents and total price

- **Module:** Cart

- **Test Scenario:** Verify selected products appear in the cart and the displayed total is consistent.

- **Preconditions:** Two distinct products have been added to the cart.

- **Test Steps:** 1. Open the cart. 2. Verify both products are listed. 3. Add the displayed item prices and compare the sum with the displayed total.

- **Test Data:** Two products with their displayed prices.

- **Expected Result:** The cart shows both selected products, and the displayed total is consistent with the listed item prices and the site's stated calculation.

- **Actual Result:** Tester reported this test case as passed; add the specific observed result and evidence.

- **Status:** Pass

- **Priority:** High

### TC_007 — Remove a product from the cart

- **Module:** Cart

- **Test Scenario:** Verify removing a cart item updates the cart contents and total.

- **Preconditions:** At least two products are in the cart and a removal control is available.

- **Test Steps:** 1. Open the cart. 2. Remove one product. 3. Review the remaining items and displayed total.

- **Test Data:** Cart containing two distinct products.

- **Expected Result:** The selected product is removed; remaining contents and displayed total update consistently.

- **Actual Result:** Tester reported this test case as passed; add the specific observed result and evidence.

- **Status:** Pass

- **Priority:** Medium

### TC_008 — Sign up with valid synthetic data

- **Module:** Signup

- **Test Scenario:** Verify signup accepts valid, non-sensitive test data.

- **Preconditions:** Signup dialog is available; the test username has not already been registered.

- **Test Steps:** 1. Open signup. 2. Enter the test username and password. 3. Submit the form. 4. Review the feedback.

- **Test Data:** Unique synthetic username; synthetic password not used for any personal account.

- **Expected Result:** Signup completes or provides clear feedback consistent with successful account creation.

- **Actual Result:** Tester reported this test case as passed; add the specific observed result and evidence.

- **Status:** Pass

- **Priority:** High

### TC_009 — Attempt signup with required fields empty

- **Module:** Signup

- **Test Scenario:** Verify signup does not report success when required inputs are missing.

- **Preconditions:** Signup dialog is open.

- **Test Steps:** 1. Leave the required fields empty. 2. Submit the form. 3. Review the resulting feedback.

- **Test Data:** Blank username and password.

- **Expected Result:** Signup is prevented or a clear validation response is shown; no success is reported.

- **Actual Result:** Tester reported this test case as passed; add the specific observed result and evidence.

- **Status:** Pass

- **Priority:** Medium

### TC_010 — Log in with valid test credentials

- **Module:** Login

- **Test Scenario:** Verify a registered test account can log in.

- **Preconditions:** A test account has been registered and is available for use.

- **Test Steps:** 1. Open login. 2. Enter the test account credentials. 3. Submit the form. 4. Review the feedback and visible account state.

- **Test Data:** Registered synthetic test username and password.

- **Expected Result:** Login is accepted and appropriate confirmation or signed-in state is displayed.

- **Actual Result:** Tester reported this test case as passed; add the specific observed result and evidence.

- **Status:** Pass

- **Priority:** High

### TC_011 — Attempt login with invalid credentials

- **Module:** Login

- **Test Scenario:** Verify invalid credentials do not result in a successful login.

- **Preconditions:** Login dialog is available.

- **Test Steps:** 1. Open login. 2. Enter an incorrect password for a test username, or an unregistered synthetic username. 3. Submit the form. 4. Review the feedback.

- **Test Data:** Invalid synthetic credentials.

- **Expected Result:** Login is not reported as successful; feedback is clear and allows the user to respond appropriately.

- **Actual Result:** Tester reported this test case as passed; add the specific observed result and evidence.

- **Status:** Pass

- **Priority:** High

### TC_012 — Place an order with valid synthetic data

- **Module:** Place Order

- **Test Scenario:** Verify the order form can be submitted with valid synthetic data in a demo-safe flow.

- **Preconditions:** Cart contains a product; confirm the order flow is demo-only and will not make a real purchase before submitting.

- **Test Steps:** 1. Open the cart and start order placement. 2. Enter valid synthetic details. 3. Submit the order. 4. Review the user-visible confirmation.

- **Test Data:** Synthetic name and non-sensitive test values only; no real payment or personal data.

- **Expected Result:** If the flow is confirmed demo-safe, submission produces clear completion feedback. If demo safety cannot be confirmed, do not submit; record the case as Blocked with the reason.

- **Actual Result:** Tester reported this test case as passed; add the specific observed result and evidence.

- **Status:** Pass

- **Priority:** High

### TC_013 — Attempt to place an order with required fields empty

- **Module:** Place Order

- **Test Scenario:** Verify incomplete order details are not presented as a successful order.

- **Preconditions:** Order form is open; no real transaction will be submitted.

- **Test Steps:** 1. Leave required fields empty. 2. Attempt to submit. 3. Review the feedback and resulting state.

- **Test Data:** Blank required order fields.

- **Expected Result:** The incomplete order is not reported as successful; missing or invalid information is handled with clear feedback.

- **Actual Result:** Tester reported this test case as passed; add the specific observed result and evidence.

- **Status:** Pass

- **Priority:** High

### TC_014 — Return to catalogue from product details

- **Module:** Navigation

- **Test Scenario:** Verify the user can navigate back to the catalogue from product details.

- **Preconditions:** A product detail view is open.

- **Test Steps:** 1. Use the available homepage, catalogue, or browser navigation control. 2. Verify the resulting view.

- **Test Data:** Any listed product.

- **Expected Result:** The user returns to a usable catalogue view without an unintended navigation error.

- **Actual Result:** Tester reported this test case as passed; add the specific observed result and evidence.

- **Status:** Pass

- **Priority:** Medium

### TC_015 — Verify homepage layout at a narrow viewport

- **Module:** Homepage / UI

- **Test Scenario:** Verify homepage content and navigation remain usable at a narrow viewport.

- **Preconditions:** Homepage is open in a browser with responsive resizing or device emulation.

- **Test Steps:** 1. Set a narrow/mobile-sized viewport. 2. Inspect the homepage content and navigation. 3. Try to use the visible navigation controls.

- **Test Data:** Record viewport dimensions during execution.

- **Expected Result:** Important content and controls remain readable and usable without unintended clipping or overlap.

- **Actual Result:** Tester reported this test case as passed; add the specific observed result and evidence.

- **Status:** Pass

- **Priority:** Medium