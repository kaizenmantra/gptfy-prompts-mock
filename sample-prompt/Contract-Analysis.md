Contract Analysis Prompt

Process the provided JSON contract data and generate a Contract Analysis Dashboard with 4 metric cards and 1 detailed table showing actual agreement data with aggregated product information.

IMPORTANT:
Return only clean HTML without any backticks, "html" tags, markdown formatting, escaped characters, or newlines. The HTML should be ready to use directly as a single continuous string. DO NOT add \n, line breaks, or any form of newlines in the output. Ensure ALL agreements are shown in the table.

CRITICAL INSTRUCTIONS:
- Extract actual values from the JSON data - NO placeholders like {{field_name}}
- Calculate real metrics from the provided data
- Return only clean HTML without backticks, code blocks, or markdown formatting
- Use inline CSS exclusively - no external stylesheets or classes
- Replace ALL placeholder text with actual calculated values from JSON
- Include clickable links for agreement numbers, opportunity names, and product names that open in new tabs
- DO NOT add \n, line breaks, or any form of newlines in the output

PROCESS THE JSON DATA:
From the provided JSON, extract:
- Account Name: Use "Name" field from account level
- Agreement Details: Process each agreement in "Apttus__R00N50000001Xl0UEAS__r" array
- Agreement ID: Extract agreement ID for linking (will be provided in JSON)
- Agreement Products: Process "Agreement_Products__r" array for each agreement
- Contract Dates: Use "Apttus__Contract_Start_Date__c" and "Apttus__Contract_End_Date__c"
- Total ACV per Agreement: Sum all "TotalPrice__c" values from products array for each agreement
- Agreement Types: Extract "Agreement_Type__c" (PS, OF&L, etc.)
- Date Format: Format all the dates in Jan 1, 2000 

CALCULATE ACCOUNT LEVEL BOX (use actual data):
- Total Active Agreements: Count of items in Agreement the table
- Agreement Types: Count of each Agreement_Type__c (PS, OF&L)
- Account Status: "Active" if any agreement is active, otherwise show status

CALCULATE 4 METRICS (use actual data, not placeholders):
1. Total Account Value: Sum all TotalPrice__c values across all agreements, format as currency
2. Agreements expiring in Future: Count agreements where Apttus__Contract_End_Date__c is in future
3. Agreement Types: Count unique Agreement_Type__c values (e.g., "2 Types: PS, OF&L"), only add if values is available. Don't add other values.
4. Total Products: Count all products across all Agreement_Products__r arrays

GENERATE EXECUTIVE SUMMARY:
Write 2-3 sentences using actual data from JSON mentioning:
- Account name and total agreement count
- Total contract value and primary agreement types
- Key products and contract terms

CREATE AGREEMENTS TABLE:
Show ALL agreements from Apttus__R00N50000001Xl0UEAS__r array as individual rows.
**Filter to show PS and OF&L only** (remove other agreement types).

Table columns:
- Agreement Type (Display Agreement_Type__c with color coding: OF&L=red #e74c3c, PS=green #27ae60)
- Agreement Number (Display as clickable link: Show Apttus__FF_Agreement_Number__c field and link to '/'+Agreement.Id, opens in new tab)
- Opportunity Name Associated with Agreement (Display as clickable link: Show Apttus__Related_Opportunity__r.Name and link to '/'+Apttus__Related_Opportunity__c, opens in new tab)
- Agreement Start Date (Display Apttus__Contract_Start_Date__c)
- Agreement End Date (Display Apttus__Contract_End_Date__c)
- Agreement Owner (Display {{{Apttus__R00N50000001Xl0UEAS__r.Sales_Representative__r.Name}}})
- Description of Authorized Unit/License Type (Show Description_of_Authorized_Unit__c AND Product_License_Type__c combined: "Description_of_Authorized_Unit__c / Product_License_Type__c")
- Product Name (Display ALL products from Agreement_Products__r array as comma-separated clickable links: "<a href='/Product.Id' target='_blank'>Product__r.Name (ProductCode__c) - $TotalPrice__c</a>, <a href='/Product2.Id' target='_blank'>Product2__r.Name (ProductCode2__c) - $TotalPrice2__c</a>" show "No Products" if Agreement_Products__r is empty or null)
- Total ACV (Sum all TotalPrice__c values from Agreement_Products__r array for this agreement, format as currency)
- Territory (Agreement) (from Territory__c)
- Other Territories (from Territories_Other__c)

CRITICAL PRODUCT HANDLING:
- EVERY product in Agreement_Products__r array MUST be displayed as a clickable link
- Product link format: "<a href='/Product.Id' target='_blank'>Product Name (ProductCode) - $Price</a>"
- Show ALL products for each agreement, separated by commas in single cell
- If Agreement_Products__r array exists and has products: Show ALL products as clickable links, NEVER as plain text
- If Agreement_Products__r array is empty or null: Show "No Products"
- Each product must be a separate clickable link separated by commas

CRITICAL LINK HANDLING:
- Agreement Number Links: Use '/'+Agreement.Id
- Opportunity Links: Always use '/'+Apttus__Related_Opportunity__c
- Product Links: Always use '/'+Product__c
- All links must open in new tabs with target="_blank"

REQUIRED OUTPUT FORMAT:
- Title: "Contract Analysis Dashboard"
- Account name header (extract from JSON "Name" field)
- Account Level box showing: Total Agreements, Agreement Types breakdown, Account Status
- 4 metric cards in responsive grid (calculated values, not placeholders)
- Executive summary card (actual summary with real account and agreement details)
- Single table showing actual agreement data with products as comma-separated clickable links in single cell
- Professional styling with inline CSS matching provided format
- Use background color #B0C4DF for main container
- Include hover effects for table rows and alternating row colors
- Agreement Type column should use color-coded badges (OF&L=red background, PS=green background)
- All links should open in new tabs using target="_blank"

CRITICAL: Replace all placeholder text with real calculated values from the JSON data. Do not leave any [PLACEHOLDER] text in the final output. If any field is missing from the JSON data, display appropriate defaults. For products column, EVERY product must be shown as a clickable link with actual Product__c values. Show ALL products for each agreement as comma-separated links in single cell.

Generate the complete HTML dashboard now using the provided JSON data.

<!DOCTYPE html><html lang="en"><head><meta charset="UTF-8"><meta name="viewport" content="width=device-width, initial-scale=1.0"><title>Contract Analysis Dashboard</title></head><body style="font-family: system-ui, Montserrat; margin: 0; padding: 0; background-color: #f5f5f5;"><div style="font-size: 1.75rem; font-weight: bold; color: #16325c; margin-bottom: 2rem; text-align: center; padding: 20px;">Contract Analysis Dashboard</div><div style="font-family:system-ui,Montserrat;width:100%;max-width:1200px;margin:0 auto;padding:20px;border-radius:8px;background:#B0C4DF;"><div style="display: flex; justify-content: space-between; align-items: flex-start; margin-bottom: 2rem;"><div style="flex: 1;"><h1 style="color: #16325c; font-size: 1.5rem; margin: 0;">[ACCOUNT_NAME_FROM_JSON]</h1></div><div style="background: #ffffff; padding: 1rem; border-radius: 6px; box-shadow: 0 1px 2px rgba(0,0,0,0.1); min-width: 250px;"><div style="color: #16325c; font-size: 0.875rem; font-weight: bold; margin-bottom: 0.5rem;">Account Level</div><div style="font-size: 0.75rem; color: #666; line-height: 1.4;"><div>Total Active Agreements: [TOTAL_ACTIVE_AGREEMENT_COUNT]</div><div>Agreement Types: [AGREEMENT_TYPES_BREAKDOWN]</div><div>Account Status: [ACCOUNT_STATUS]</div></div></div></div><div style="display: flex; flex-wrap: wrap; gap: 1rem; justify-content: space-between; margin-bottom: 2rem;"><div style="flex: 1 1 calc(25% - 1rem); background: #ffffff; padding: 1rem; border-radius: 6px; box-shadow: 0 1px 2px rgba(0,0,0,0.1); text-align: center;"><div style="color: #000000; font-size: 0.875rem;font-weight: bold">Total Account Value</div><div style="font-size: 1rem; font-weight: 500; color: #28a745;">$[CALCULATED_TOTAL_ACCOUNT_VALUE]</div></div><div style="flex: 1 1 calc(25% - 1rem); background: #ffffff; padding: 1rem; border-radius: 6px; box-shadow: 0 1px 2px rgba(0,0,0,0.1); text-align: center;"><div style="color: #000000; font-size: 0.875rem;font-weight: bold">Agreements expiring in Future</div><div style="font-size: 1rem; font-weight: 500; color: #007bff;">[COUNT_OF_ACTIVE_AGREEMENTS]</div></div><div style="flex: 1 1 calc(25% - 1rem); background: #ffffff; padding: 1rem; border-radius: 6px; box-shadow: 0 1px 2px rgba(0,0,0,0.1); text-align: center;"><div style="color: #000000; font-size: 0.875rem;font-weight: bold">Agreement Types</div><div style="font-size: 1rem; font-weight: 500; color: #20c997;">[UNIQUE_AGREEMENT_TYPES_COUNT]</div></div><div style="flex: 1 1 calc(25% - 1rem); background: #ffffff; padding: 1rem; border-radius: 6px; box-shadow: 0 1px 2px rgba(0,0,0,0.1); text-align: center;"><div style="color: #000000; font-size: 0.875rem;font-weight: bold">Total Products</div><div style="font-size: 1rem; font-weight: 500; color: #fd7e14;">[TOTAL_PRODUCTS_COUNT]</div></div></div><div style="background: #ffffff; padding: 1rem; border-radius: 8px; box-shadow: 0 2px 4px rgba(0,0,0,0.1); margin-bottom: 1rem;"><div style="color: #16325c; font-size: 1.25rem; font-weight: bold; margin-bottom: 0.75rem;">Executive Summary</div><div style="color: #333; line-height: 1.6; text-align: center; font-size: 1rem; font-weight: 500;">[ACTUAL_SUMMARY_WITH_ACCOUNT_NAME_AGREEMENT_COUNT_TOTAL_VALUE_AND_KEY_PRODUCTS]</div></div><div style="background: #ffffff; padding: 1rem; border-radius: 8px; box-shadow: 0 2px 4px rgba(0,0,0,0.1); margin-bottom: 1rem;"><div style="color: #16325c; font-size: 1.25rem; font-weight: bold; margin-bottom: 0.75rem;">Account Agreements</div><div style="overflow-x: auto;"><table style="width: 100%; border-collapse: collapse; margin-top: 20px; min-width: 1200px;"><thead><tr><th style="background-color: #3498db; color: white; padding: 12px; text-align: left; border: 1px solid #ddd; font-weight: bold; min-width: 80px;">Agreement Type</th><th style="background-color: #3498db; color: white; padding: 12px; text-align: left; border: 1px solid #ddd; font-weight: bold; min-width: 150px;">Agreement Number</th><th style="background-color: #3498db; color: white; padding: 12px; text-align: left; border: 1px solid #ddd; font-weight: bold; min-width: 150px;">Opportunity Name Associated with Agreement</th><th style="background-color: #3498db; color: white; padding: 12px; text-align: left; border: 1px solid #ddd; font-weight: bold; min-width: 100px;">Agreement Start Date</th><th style="background-color: #3498db; color: white; padding: 12px; text-align: left; border: 1px solid #ddd; font-weight: bold; min-width: 100px;">Agreement End Date</th><th style="background-color: #3498db; color: white; padding: 12px; text-align: left; border: 1px solid #ddd; font-weight: bold; min-width: 120px;">Agreement Owner</th><th style="background-color: #3498db; color: white; padding: 12px; text-align: left; border: 1px solid #ddd; font-weight: bold; min-width: 150px;">Description of Authorized Unit/License Type</th><th style="background-color: #3498db; color: white; padding: 12px; text-align: left; border: 1px solid #ddd; font-weight: bold; min-width: 200px;">Product Name</th><th style="background-color: #3498db; color: white; padding: 12px; text-align: left; border: 1px solid #ddd; font-weight: bold; min-width: 100px;">Total ACV</th><th style="background-color: #3498db; color: white; padding: 12px; text-align: left; border: 1px solid #ddd; font-weight: bold; min-width: 100px;">Territory (Agreement)</th><th style="background-color: #3498db; color: white; padding: 12px; text-align: left; border: 1px solid #ddd; font-weight: bold; min-width: 100px;">Other Territories</th></tr></thead><tbody><tr style="background-color: #f9f9f9;" onmouseover="this.style.backgroundColor='#f0f8ff'" onmouseout="this.style.backgroundColor='#f9f9f9'"><td style="padding: 10px; border: 1px solid #ddd; vertical-align: top;"><span style="font-weight: bold; padding: 4px 8px; border-radius: 4px; color: white; text-align: center; background-color: [#e74c3c_FOR_OF&L_OR_#27ae60_FOR_PS]; display: inline-block;">[AGREEMENT_TYPE_FROM_JSON]</span></td><td style="padding: 10px; border: 1px solid #ddd; vertical-align: top;"><a href="/[AGREEMENT_ID_FROM_JSON]" target="_blank" style="color: #007bff; text-decoration: none;">[AGREEMENT_NUMBER_FROM_Apttus__FF_Agreement_Number__c]</a></td><td style="padding: 10px; border: 1px solid #ddd; vertical-align: top;"><a href="/[OPPORTUNITY_ID_FROM_JSON]" target="_blank" style="color: #007bff; text-decoration: none;">[OPPORTUNITY_NAME_FROM_JSON]</a></td><td style="padding: 10px; border: 1px solid #ddd; vertical-align: top;">[AGREEMENT_START_DATE_FROM_Apttus__Contract_Start_Date__c]</td><td style="padding: 10px; border: 1px solid #ddd; vertical-align: top;">[AGREEMENT_END_DATE_FROM_Apttus__Contract_End_Date__c]</td><td style="padding: 10px; border: 1px solid #ddd; vertical-align: top;">[SALES_REPRESENTATIVE_NAME_FROM_Apttus__R00N50000001Xl0UEAS__r_Sales_Representative__r_Name]</td><td style="padding: 10px; border: 1px solid #ddd; vertical-align: top;">[DESCRIPTION_OF_AUTHORIZED_UNIT_FROM_JSON] / [PRODUCT_LICENSE_TYPE_FROM_JSON]</td><td style="padding: 10px; border: 1px solid #ddd; vertical-align: top; font-size: 0.9em; line-height: 1.4;">[ALL_PRODUCTS_AS_CLICKABLE_LINKS_FORMAT: <a href="/[PRODUCT_ID_1]" target="_blank" style="color: #007bff; text-decoration: none;">[PRODUCT_NAME_1] ([PRODUCT_CODE_1]) - $[PRICE_1]</a>, <a href="/[PRODUCT_ID_2]" target="_blank" style="color: #007bff; text-decoration: none;">[PRODUCT_NAME_2] ([PRODUCT_CODE_2]) - $[PRICE_2]</a> | IF_NO_PRODUCTS_SHOW: No Products]</td><td style="padding: 10px; border: 1px solid #ddd; vertical-align: top; font-weight: bold; color: #27ae60;">$[SUM_OF_ALL_TOTALPRICE_VALUES_FROM_AGREEMENT_PRODUCTS_ARRAY]</td><td style="padding: 10px; border: 1px solid #ddd; vertical-align: top;">[TERRITORY_FROM_JSON]</td><td style="padding: 10px; border: 1px solid #ddd; vertical-align: top;">[OTHER_TERRITORIES_FROM_JSON]</td></tr></tbody></table></div></div></div></body></html>


Input JSON data