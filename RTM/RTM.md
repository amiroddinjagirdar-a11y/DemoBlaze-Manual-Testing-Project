# Requirements Traceability Matrix (RTM)

**Project:** DemoBlaze E-Commerce Website  
**Status:** Planning traceability. Test-case execution status is maintained separately in [Test Cases](../docs/Test_cases.md).

The requirement identifiers below organize this portfolio's test coverage; they are not official product requirements supplied by DemoBlaze. Expected behavior is based on the stated test scenarios and should be confirmed against authoritative requirements if available.

| Requirement ID | Requirement | Related test case ID(s) | Coverage note |
|---|---|---|---|
| REQ-HOME-001 | Homepage and catalogue are accessible and display primary navigation | TC_001 | Homepage availability and visible catalogue/navigation |
| REQ-NAV-001 | User can navigate between homepage and cart | TC_002 | Cart navigation and return to homepage |
| REQ-CAT-001 | Selecting a product category updates the product listing | TC_003 | Category selection |
| REQ-PROD-001 | Selecting a catalogue product opens its corresponding details | TC_004 | Product identity and visible details |
| REQ-CART-ADD-001 | User can add a selected product to the cart | TC_005 | Add-to-cart flow |
| REQ-CART-TOTAL-001 | Cart displays selected products and a consistent total | TC_006, TC_007 | Cart contents, total calculation, and removal |
| REQ-AUTH-SIGNUP-001 | Signup handles valid data and missing required fields appropriately | TC_008, TC_009 | Positive signup and empty-field validation |
| REQ-AUTH-LOGIN-001 | Login accepts valid credentials and does not accept invalid credentials | TC_010, TC_011 | Positive and negative login |
| REQ-ORDER-001 | Order placement handles valid input safely and does not report incomplete orders as successful | TC_012, TC_013 | Positive flow is conditional on demo safety; negative validation |
| REQ-NAV-002 | User can return to the catalogue from product details | TC_014 | Product-to-catalogue navigation |
| REQ-UI-RESP-001 | Homepage remains readable and usable at a narrow viewport | TC_015 | Responsive UI inspection |

## Coverage status

The matrix maps each listed portfolio requirement to one or more designed test cases. It does not imply those cases have all been executed or passed. Refer to the [Test Execution Report](../docs/Test_Execution_Report.md) for recorded execution status; update the matrix if requirements or cases change.
