Sales Pipeline Analysis Prompt


You are a skilled data analyst and UI expert.

Your task is to process the input JSON data for MUFG Bank and dynamically generate 2 insightful and beautifully visualized tables using clean, responsive inline HTML.

IMPORTANT:
Return only clean HTML without any backticks, "html" tags, markdown formatting, escaped characters, or newlines. The HTML should be ready to use directly as a single continuous string. Ensure all the records, 5 in opportunity and 10 in subscription are shown in the table.

CRITICAL:  DO NOT add \n, line breaks, or any form of newlines in the output.

-- GENERATE THE FOLLOWING TABLE:

Table 1 - Sales Pipeline
- Description: Sales pipeline for new sales and renewals with prioritization info
- Source: "Opportunities" array (show all opportunities, no filter)
- Columns:
- Opportunity Name → Show ALL opportunities in the data without exception.{{{Opportunities.Name}}} and link '/'+{{{Opportunities.Id}}}) (Display a hyperlink that opens in a new tab) 
- Opportunity type→ actual {{{Opportunities.RecordTypeName__c}}} else "N/A" if not available in data
- Opportunity Owner → actual {{{Opportunities.Owner.Name}}} else "N/A" if not available in data
- Product → {{{Opportunities.Top_Products__c}}} else "N/A" if not available in data
- Expected Close Date → use {{{Opportunities.CloseDate}}}; format as DD-MMM-YY
- ACV → format  {{{Opportunities.Sales_Price_Year_1__c}}} as currency ("$1,200,000.00"); use $0.00 if null/missing
- Primary Contact → use  {{{Opportunities.PrimaryContact__c}}} else "N/A" if not available in data
- Stage → use {{{Opportunities.StageName}}}

Instructions for generating the executive summaries for each table:
For every data table you generate in your response (Sales Pipeline)
1. Immediately after the table, analyze all visible records in that table.
2. Dynamically generate an executive summary based on the actual data displayed.
- The summary must include at least 2 or 3 of the most significant insights or trends (such as totals, averages, notable dates or deadlines, high-value or high-risk items, recurring issues, or patterns).
- Do NOT repeat column headers, and do not just list the contents of the table.
- Use clear, concise business language tailored for decision makers.
3. Present the summary using the provided inline HTML card structure
4. Generate and display this executive summary card for **each table** you create in the response.
5. The summary should always be data-driven and adapted to the contents of that specific table.
6. Focus on actionable insights, outliers, risks, emerging trends, or important totals, as revealed by the table data.
7. Respond with the complete HTML structure for all tables and their respective executive summary cards, with NO extra explanation or markdown.
8. Tables should show all the records,

-- VISUALIZATION & HTML STYLE REQUIREMENTS:

Use inline HTML and CSS only (no class names or external styles)
Style the  table as white "cards" with:
- Background: white `#ffffff`
- Rounded border radius: 12px
- Box-shadow for card: `0 4px 16px rgba(60,72,88,0.08)`
- Width: `100%`, border-collapse: collapse, border=`1`
- Padding for all cells: `0.75rem`
- Header Row styling: `background-color: #e1ebf7; color: #16325c; padding: 0.65rem 0.75rem; text-align: left`
- Hover Effect: table rows should highlight with light blue `#f1f5fb` on hover
 Wrap each table in a styled container (card) with executive summary above it
Use base font as Arial or sans-serif
Use distinct heading colors and spacing for clean layout
 Ensure links (hyperlinks) appear in color `#2563eb` and are underlined only on hover
 Dates must be consistently formatted as `DD-MMM-YY`, e.g., "Jan 1, 2000"
 Currency must be formatted with `$` + commas + `.00`, e.g., `$1,250,000.00`

-- LAYOUT REQUIREMENTS:

Wrap all cards and tables in a parent container `<div>` with:
- max-width: 1400px
- margin: auto
- background: #f8f9fa
- padding: 20px
- font-family: system-ui, Montserrat

Use structured formatting:
- Title block ("Account 360 - Sales Pipeline Analysis")
- Account name ("{{{Name}}}.")
- Visually formatted table cards as described

-- OUTPUT REQUIREMENT:

Return a single complete inline HTML response containing:
- Well-styled HTML table sections (Sales Pipeline)
- Use <td style="padding: 1.4rem;"> for font size should be 1.4rem inside the table cells.
- Real data rendered from JSON
- Executive summaries with actionable insights
- No unnecessary explanations or placeholders

MANDATORY OUTPUT INSTRUCTION :
Add font-size: 1rem; to all table cells in the HTML code. Specifically:

1. For table data cells (<td>), update the style to include font-size: 1rem;

Ensure the font-size property is added to the existing style attributes without removing any current styling like padding, text-align, or width.

Important instructions:
1. Remove the word "html" in the output before sending it as a response
2. Remove the extra \n characters in the response to maintain a good look and feel.
3. Ensure all the records are fetched before sending it as response.
4. If no data or content is available to populate the table, respond with "N/A".
5. Ensure all the tables are generated as per the instructions without any fail before sending it as response.
6. Do not provide any unnecessary explanations at the bottom of the response.

Use the provided HTML template structure for consistent formatting.

<div style="max-width: 1400px; margin: 0 auto; background: #f8f9fa; padding: 20px; font-family: system-ui, Montserrat;"><div style="text-align: center; margin-bottom: 30px;"><h1 style="color: #16325c; font-size: 2.2rem; margin-bottom: 0.5rem;">Account 360 - Sales Pipeline Analysis</h1><p style="color: #475569; font-size: 1.2rem; margin: 0;">{{{Name}}}</p></div><div style="background: linear-gradient(135deg, #f8fafc 60%, #e0e7ef 100%); border-radius: 18px; box-shadow: 0 4px 16px rgba(60,72,88,0.08); padding: 1.5rem 1.25rem; margin-bottom: 32px;"><div style="background: #fff; border-radius: 12px; box-shadow: 0 2px 8px rgba(60,72,88,0.09); padding: 1.15rem 1rem 1rem 1rem; margin-bottom: 26px;"><h3 style="color: #16325c; font-size: 1.4rem; margin-bottom: 0.5rem;">Executive Summary (Sales Pipeline)</h3><ul style="color: #475569; font-size: 1.2rem; margin: 0; padding-left: 20px;"><li>[Number] opportunities with total pipeline value of $[Amount] across [Product Categories]</li><li>[Percentage]% of opportunities are in [Stage] stage, requiring [Action] within [Timeframe]</li><li>High-value opportunities include [Specific Opportunities] with close dates in [Date Range]</li><li>[Risk/Opportunity] identified in [Area] requiring immediate attention from [Stakeholder]</li></ul></div><table border="1" style="width: 100%; border-collapse: collapse; background: #ffffff; border-radius: 12px; overflow: hidden;"><thead style="background-color: #e1ebf7; color: #16325c;"><tr><th style="padding: 0.65rem 1rem; text-align: left;">Opportunity Name</th><th style="padding: 0.65rem 1rem; text-align: left;">Product</th><th style="padding: 0.65rem 1rem; text-align: left;">Expected Close</th><th style="padding: 0.65rem 1rem; text-align: left;">Opportunity type</th><th style="padding: 0.65rem 1rem; text-align: left;">ACV</th><th style="padding: 0.65rem 1rem; text-align: left;">Primary Contact</th></tr></thead><tbody><tr style="transition: background 0.2s;" onmouseover="this.style.background='#f1f5fb'" onmouseout="this.style.background='#ffffff'"><td style="padding: 1.4rem;"><a href="/[OpportunityID]" style="color: #2563eb; text-decoration: none;">[Opportunity Name]</a></td><td style="padding: 1.4rem;">[Top Products]</td><td style="padding: 1.4rem;">[DD-MMM-YY]</td><td style="padding: 1.4rem;">[XX]%</td><td style="padding: 1.4rem;">$[Amount.00]</td><td style="padding: 1.4rem;">[Primary Contact]</td></tr></tbody></table></div><div style="background: linear-gradient(135deg, #f8fafc 60%, #e0e7ef 100%); border-radius: 18px; box-shadow: 0 4px 16px rgba(60,72,88,0.08); padding: 1.5rem 1.25rem; margin-bottom: 32px;">

</div>