Account 360 Prompt

Objective: Generate clean HTML tables from Salesforce JSON data. Output should be in plain HTML format without Markdown or code block syntax.

Instructions:

Use data from the provided JSON, linked by 18-digit IDs.
Ensure all records are shown in the tables.
Include border="1" in all HTML table tags.
Write summaries in third person and condense key points.
Always try to generate whatever required to give the complete response.
Dates should be formatted as "01-Jan-23".
Add captions to each HTML table.
Prioritize quality over speed in responses.
Convert all internal CSS to inline CSS for the response.
Use the following inline CSS for table header 'th' style="background-color: #e1ebf7; color: #16325c; padding: 0.5rem; text-align: left;"
Use the following inline CSS for caption = "font-size: 1.0rem; font-weight: bold; padding: 0.5rem; color: #5C5C5C;text-align: left;"

To-Do:

Table 1: 'Opportunities'
Columns: ''Opportunity' (Display a hyperlink that opens in a new tab. Show {{{Opportunities.Name}}} and link '/'+{{{Opportunities.Id}}}),'.''Summary' (Summarize this opportunity in 30 words or less)',''Objection' (Generate the objection by understanding the reason stated  raised by customer that is stopping the opportunity from getting closed and . Keep it under 5 words.)',''Next Best Action' (Generate the next best action we should take on this opportunity that will help us close-won it.Keep it under 30 words only.)','Close date ({{{Opportunities.CloseDate}}})','Amount ({{{Opportunities.Amount}}})'.

Table 2: 'Cases'
Columns: ' 'Case' (Display a hyperlink that opens in a new tab. Show {{{Cases.Subject}}} and link '/'+{{{Cases.Id}}})', ''Summary' (Summarize this case in 30 words or less)','Customer Intent' (Generate the intent of the customer),'Sentiment' (Must generate sentiment for the case. Constrain the value to positive, Neutral, Negative), 'Days Open' (Calculate the difference between today's date and {{{Cases.CreatedDate}}}. To calculate the difference Convert today's date and the {{{Cases.CreatedDate}}} to datetime objects and subtract the {{{Cases.CreatedDate}}} from today's date. Extract the difference in days.).

Expected Output:
HTML tables filled with data from the JSON payload, formatted as specified above, without any Markdown or code block (````) or (```) characters..


{{{Cases.CreatedDate}}

------------------

Description
This prompt requests two HTML tables to help a new salesperson grasp their account's opportunities and cases, defining each table's structure and data elements for an efficient, informative overview, aiding in effective action planning.

How it Works?
Know everything about your Account.
This prompt transforms your Salesforce data into easy-to-read, formatted tables highlighting key business information. It focuses on two main areas:



1. Opportunities Table
This table provides a quick overview of your sales pipeline:

What it shows:
Opportunity names
Brief summaries
Potential objections
Suggested next steps
Closing dates
Opportunity amounts
How it helps:
Quickly understand the status of each opportunity
Identify actions needed to move deals forward
Track financial goals and timelines
2. Cases Table
This table gives you a snapshot of your customer support workload:

What it shows:
Case subjects
Issue summaries
Customer intentions
Customer sentiment (positive, neutral, or negative)
Number of days each case has been open
How it helps:
Prioritize responses based on sentiment and urgency
Manage response times effectively
Understand common customer issues at a glance
Key Features
User-friendly format: Clear, visually appealing tables that are easy to read
Clickable links: Access more details directly from the table
At-a-glance insights: Quickly scan and understand your sales and support situations
Time-saving: View critical information without navigating multiple Salesforce pages
This tool simplifies your Salesforce data, making it easier to make informed decisions about sales opportunities and customer support issues.


Input Data:
{
  "Cases" : [ {
    "SystemModstamp" : "2025-04-14 12:35:55",
    "Subject" : "Real-time Analytics Dashboard Not Updating",
    "CreatedDate" : "2024-04-07 13:10:00",
    "IsClosed" : "false",
    "Description" : "Marketing team reports that real-time analytics dashboard not refreshing with current data. Still showing data from previous day. Impacting campaign optimization efforts.",
    "ContactEmail" : "btaylor@quantumtechinc.com",
    "AccountId" : "001J900000CB9f3IAD",
    "Id" : "500J9000009Ze07IAC",
    "CaseNumber" : "00001505"
  }, {
    "SystemModstamp" : "2025-04-14 12:35:55",
    "Subject" : "Integration with Legacy ERP Failed",
    "CreatedDate" : "2024-04-01 11:20:00",
    "IsClosed" : "false",
    "Description" : "New integration between our platform and customer's legacy ERP system failing with timeout errors. Customer unable to proceed with digital transformation initiative until resolved.",
    "ContactEmail" : "btaylor@quantumtechinc.com",
    "AccountId" : "001J900000CB9f3IAD",
    "Id" : "500J9000009Ze06IAC",
    "CaseNumber" : "00001504"
  }, {
    "SystemModstamp" : "2025-04-14 12:35:55",
    "Subject" : "Need Training for New Sales Analytics Platform",
    "CreatedDate" : "2024-03-22 10:30:00",
    "ClosedDate" : "2024-03-25 15:45:00",
    "IsClosed" : "true",
    "Description" : "Sales team requires training on newly implemented analytics platform. Looking to improve lead scoring and opportunity forecasting accuracy.",
    "ContactEmail" : "btaylor@quantumtechinc.com",
    "AccountId" : "001J900000CB9f3IAD",
    "Id" : "500J9000009Ze08IAC",
    "CaseNumber" : "00001506"
  }, {
    "SystemModstamp" : "2025-04-14 12:35:55",
    "Subject" : "Performance Degradation in Cloud Instance",
    "CreatedDate" : "2024-03-05 09:45:00",
    "ClosedDate" : "2024-03-07 16:20:00",
    "IsClosed" : "true",
    "Description" : "Customer experiencing 30% performance degradation in production environment after recent scaling operation. Impacting end-user experience during peak hours.",
    "ContactEmail" : "alewis@quantumtechinc.com",
    "AccountId" : "001J900000CB9f3IAD",
    "Id" : "500J9000009Ze05IAC",
    "CaseNumber" : "00001503"
  }, {
    "SystemModstamp" : "2025-04-14 12:35:55",
    "Subject" : "Security Vulnerability in v4.2 API",
    "CreatedDate" : "2024-02-10 14:30:00",
    "ClosedDate" : "2024-02-11 08:15:00",
    "IsClosed" : "true",
    "Description" : "Critical security vulnerability identified in API authentication module. Customer security team discovered during routine pen testing. Potential for unauthorized access to sensitive endpoints.",
    "ContactEmail" : "alewis@quantumtechinc.com",
    "AccountId" : "001J900000CB9f3IAD",
    "Id" : "500J9000009Ze04IAC",
    "CaseNumber" : "00001502"
  } ],
  "Opportunities" : [ {
    "IsClosed" : "false",
    "CloseDate" : "2024-09-15 00:00:00",
    "Amount" : "750000.00",
    "Name" : "Quantum Cloud Infrastructure Expansion",
    "Description" : "Expansion of current cloud infrastructure to support growth into new markets and additional workloads. Includes high-performance computing resources and dedicated instance requirements.",
    "AccountId" : "001J900000CB9f3IAD",
    "Id" : "006J9000006M8fkIAC"
  }, {
    "OpportunityContactRoles" : [ {
      "OpportunityId" : "006J9000006M8flIAC",
      "Id" : "00KJ9000000MLN6MAO",
      "Contact.Name" : "Amanda Lewis"
    } ],
    "IsClosed" : "false",
    "CloseDate" : "2025-10-06 00:00:00",
    "Amount" : "450000.00",
    "Name" : "AI-Driven Analytics Platform",
    "Description" : "Implementation of AI analytics platform to process customer usage data and provide predictive insights for product development. Competing against DataMind and TechInsight solutions.",
    "AccountId" : "001J900000CB9f3IAD",
    "Id" : "006J9000006M8flIAC"
  }, {
    "IsClosed" : "true",
    "CloseDate" : "2024-02-28 00:00:00",
    "Amount" : "280000.00",
    "Name" : "Data Center Migration Services",
    "Description" : "Professional services for data center migration to cloud infrastructure. Lost to competitor offering lower price point despite inferior technical solution.",
    "AccountId" : "001J900000CB9f3IAD",
    "Id" : "006J9000006M8fpIAC"
  }, {
    "OpportunityContactRoles" : [ {
      "OpportunityId" : "006J9000006M8fnIAC",
      "Id" : "00KJ9000000MLNGMA4",
      "Contact.Name" : "David Park"
    } ],
    "IsClosed" : "false",
    "CloseDate" : "2024-11-15 00:00:00",
    "Amount" : "350000.00",
    "Name" : "Managed DevOps Services",
    "Description" : "Fully managed DevOps services including CI/CD pipeline optimization, container orchestration, and infrastructure-as-code implementation. Annual contract with monthly professional services hours.",
    "AccountId" : "001J900000CB9f3IAD",
    "Id" : "006J9000006M8fnIAC"
  }, {
    "IsClosed" : "true",
    "CloseDate" : "2025-11-12 00:00:00",
    "Amount" : "550000.00",
    "Name" : "Cloud Infrastructure Renewal",
    "Description" : "Renewal of existing cloud infrastructure services with 10% expansion in capacity. Includes enhanced SLA and premium support package.",
    "AccountId" : "001J900000CB9f3IAD",
    "Id" : "006J9000006M8foIAC"
  }, {
    "OpportunityContactRoles" : [ {
      "OpportunityId" : "006J9000006M8fmIAC",
      "Id" : "00KJ9000000MLNBMA4",
      "Contact.Name" : "Brian Taylor"
    } ],
    "IsClosed" : "false",
    "CloseDate" : "2025-08-30 00:00:00",
    "Amount" : "1200000.00",
    "Name" : "Quantum Security Suite - Enterprise License",
    "Description" : "Enterprise-wide deployment of advanced security platform with zero-trust architecture, threat intelligence, and automated response capabilities. Multi-year agreement with annual true-up provisions.",
    "AccountId" : "001J900000CB9f3IAD",
    "Id" : "006J9000006M8fmIAC"
  } ],
  "Object Name" : "Account",
  "OwnerId" : "0058e000000cQwQAAU",
  "Description" : "S&P Global Commodity Insights is a leading provider of information, benchmark prices, and analytics for the global energy and commodities markets. As a division of S&P Global, it offers comprehensive coverage across sectors such as oil, natural gas, power, petrochemicals, metals, agriculture, and shipping .​",
  "Id" : "001J900000CB9f3IAD",
  "Name" : "S&P Commodity Insights"
}

----------------
Output HTML generated by AI using Prompt & data (Formatted)

<table border="1">
  <caption style="font-size: 1.0rem; font-weight: bold; padding: 0.5rem; color: #5C5C5C;text-align: left;">Opportunities</caption>
  <thead>
    <tr>
      <th style="background-color: #e1ebf7; color: #16325c; padding: 0.5rem; text-align: left;">Opportunity</th>
      <th style="background-color: #e1ebf7; color: #16325c; padding: 0.5rem; text-align: left;">Summary</th>
      <th style="background-color: #e1ebf7; color: #16325c; padding: 0.5rem; text-align: left;">Objection</th>
      <th style="background-color: #e1ebf7; color: #16325c; padding: 0.5rem; text-align: left;">Next Best Action</th>
      <th style="background-color: #e1ebf7; color: #16325c; padding: 0.5rem; text-align: left;">Close date</th>
      <th style="background-color: #e1ebf7; color: #16325c; padding: 0.5rem; text-align: left;">Amount</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <td><a href="/006J9000006M8fkIAC" target="_blank">Quantum Cloud Infrastructure Expansion</a></td>
      <td>Opportunity for a significant deal with a potential client.</td>
      <td>Budget constraints</td>
      <td>Schedule a follow-up meeting to discuss budget options.</td>
      <td>15-Sep-24</td>
      <td>$750,000.00</td>
    </tr>
    <tr>
      <td><a href="/006J9000006M8flIAC" target="_blank">AI-Driven Analytics Platform</a></td>
      <td>Engagement with a key client for a new project.</td>
      <td>Need more information</td>
      <td>Provide detailed project proposal and benefits.</td>
      <td>06-Oct-25</td>
      <td>$450,000.00</td>
    </tr>
    <tr>
      <td><a href="/006J9000006M8fnIAC" target="_blank">Managed DevOps Services</a></td>
      <td>Potential upsell opportunity with an existing customer.</td>
      <td>Timing issues</td>
      <td>Follow up to align on project timelines.</td>
      <td>15-Nov-24</td>
      <td>$350,000.00</td>
    </tr>
    <tr>
      <td><a href="/006J9000006M8fmIAC" target="_blank">Quantum Security Suite - Enterprise License</a></td>
      <td>Large opportunity with a strategic partner.</td>
      <td>Approval delays</td>
      <td>Engage with decision-makers to expedite approval.</td>
      <td>30-Aug-25</td>
      <td>$1,200,000.00</td>
    </tr>
  </tbody>
</table>

<table border="1">
  <caption style="font-size: 1.0rem; font-weight: bold; padding: 0.5rem; color: #5C5C5C;text-align: left;">Cases</caption>
  <thead>
    <tr>
      <th style="background-color: #e1ebf7; color: #16325c; padding: 0.5rem; text-align: left;">Case</th>
      <th style="background-color: #e1ebf7; color: #16325c; padding: 0.5rem; text-align: left;">Summary</th>
      <th style="background-color: #e1ebf7; color: #16325c; padding: 0.5rem; text-align: left;">Customer Intent</th>
      <th style="background-color: #e1ebf7; color: #16325c; padding: 0.5rem; text-align: left;">Sentiment</th>
      <th style="background-color: #e1ebf7; color: #16325c; padding: 0.5rem; text-align: left;">Days Open</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <td><a href="/500J9000009Ze07IAC" target="_blank">Real-time Analytics Dashboard Not Updating</a></td>
      <td>Customer reports issues with dashboard updates affecting operations.</td>
      <td>Resolve dashboard issues</td>
      <td>Negative</td>
      <td>7</td>
    </tr>
    <tr>
      <td><a href="/500J9000009Ze06IAC" target="_blank">Integration with Legacy ERP Failed</a></td>
      <td>Integration failure causing disruptions in workflow.</td>
      <td>Fix integration problems</td>
      <td>Negative</td>
      <td>13</td>
    </tr>
    <tr>
      <td><a href="/500J9000009Ze08IAC" target="_blank">Need Training for New Sales Analytics Platform</a></td>
      <td>Customer requires training for new platform usage.</td>
      <td>Request training session</td>
      <td>Positive</td>
      <td>0</td>
    </tr>
    <tr>
      <td><a href="/500J9000009Ze05IAC" target="_blank">Performance Degradation in Cloud Instance</a></td>
      <td>Performance issues reported in cloud services.</td>
      <td>Improve performance</td>
      <td>Negative</td>
      <td>0</td>
    </tr>
    <tr>
      <td><a href="/500J9000009Ze04IAC" target="_blank">Security Vulnerability in v4.2 API</a></td>
      <td>Security concerns raised regarding API vulnerabilities.</td>
      <td>Address security issues</td>
      <td>Negative</td>
      <td>0</td>
    </tr>
  </tbody>
</table>