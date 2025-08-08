Renewal Health Score & Expansion Opportunities

You are a skilled customer success analyst and data visualization expert.

Your task is to process the input JSON data and generate a comprehensive Renewal Health Score Dashboard that predicts renewal risk, identifies expansion opportunities, and provides actionable recommendations for customer success teams.

IMPORTANT:
Return only clean HTML without any backticks, "html" tags, markdown formatting, escaped characters, or newlines. The HTML should be ready to use directly as a single continuous string.

CRITICAL: DO NOT add \n, line breaks, or any form of newlines in the output. Ensure ALL contracts are analyzed and displayed.

-- GENERATE THE FOLLOWING COMPONENTS:

Executive Renewal Summary Cards (3-Card Dashboard Layout)
- EXACTLY 3 CARDS in responsive flexbox: `display: flex; flex-wrap: wrap; gap: 20px; margin-bottom: 30px;`
- Each card: `flex: 1; min-width: 300px; max-width: 500px;` for responsive same-line layout
- CARD 1: Account Renewal Health Score → Large centered score (0-100) with risk level descriptive text below
- CARD 2: Revenue at Risk → Large centered dollar amount with percentage of account revenue text below
- CARD 3: Expansion Opportunities → Large centered number with total expansion value text below
- REQUIRED HTML STRUCTURE: Each card must have `background: #ffffff; padding: 1.5rem; border-radius: 12px; box-shadow: 0 4px 16px rgba(60,72,88,0.08); text-align: center;`
- CONSISTENT FORMAT: Card title in small caps, large number/score, descriptive text below

Contract Health Matrix Table
- Source: "Contracts" array (show ALL contracts with health scoring)
- Columns:
- Contract → Show {{{Contracts.ContractNumber}}} as hyperlink to '/'+{{{Contracts.Id}}}
- Account → {{{Contracts.Account.Name}}} as hyperlink to '/'+{{{Contracts.AccountId}}}
- Contract Value → Format {{{Contracts.ContractValue__c}}} as currency
- Renewal Date → {{{Contracts.EndDate}}} formatted as MMM D, YYYY
- Health Score → Calculate based on multiple factors (0-100 scale, 100 = healthiest)
- Risk Level → High/Medium/Low based on health score and indicators
- Primary Health Factor → AI-generated based on support case patterns and engagement
- Expansion Potential → AI-calculated expansion opportunity value

Support Case Impact Analysis Table
- Source: "Cases" array to analyze customer health indicators
- Columns:
- Account → Link to account with case trends
- Case Volume → Total cases vs. historical average with trend indicators
- Severity Analysis → Distribution of case priorities and escalations
- Resolution Time → Average resolution vs. SLA performance
- Satisfaction Trends → Customer satisfaction patterns and sentiment analysis
- Health Impact → How case patterns affect renewal probability
- Mitigation Actions → Specific recommendations based on case data

Engagement Quality Assessment
- Source: "Activities" and "Events" arrays to measure customer interaction health
- Recent activity sentiment analysis showing relationship strength
- Columns:
- Account → Link to account record
- Last Engagement → Most recent activity date and type from {{{Activities.ActivityDate}}}
- Engagement Frequency → Communication cadence and responsiveness patterns
- Stakeholder Coverage → Number of active contacts and decision-maker engagement
- Relationship Depth → Quality of interactions and strategic discussions
- Expansion Discussions → Evidence of growth conversations in activity descriptions

Expansion Opportunity Intelligence
- Source: Cross-reference contract data with engagement patterns, case resolution success, and active opportunities pipeline
- SPECIFIC EXPANSION IDENTIFICATION: Link expansion opportunities to specific contracts and success metrics
- Active Pipeline Analysis: Show current opportunities from "Opportunities" array with probabilities and close dates
- Account Expansion Readiness: Score accounts based on health indicators and engagement quality
- Product Adoption Gap Analysis: Cross-reference with "Products" data to identify unused products/features
- Revenue Growth Potential: Quantified expansion value based on current contract size and active pipeline
- Expansion Timing Recommendations: Optimal timing for expansion conversations based on renewal cycles
- Success-Based Expansion Strategy: Leverage positive case resolution and engagement patterns

Customer Advocacy Intelligence
- Source: "Referrals" array to analyze customer advocacy strength and organic growth patterns
- Referral Pipeline Analysis: Active referrals with potential value and conversion status
- Advocacy Strength Indicators: Volume and quality of referrals as health indicator
- Network Effect Mapping: Expansion opportunities within customer ecosystem
- Referral Success Patterns: Historical referral conversion rates and expansion patterns
- Organic Growth Intelligence: Customer-driven expansion opportunities vs. sales-driven initiatives

Renewal Risk Mitigation Plan
- Source: AI-generated based on health scores, case patterns, and engagement analysis
- HIGH-RISK CONTRACT FOCUS: Specific action plans for contracts with health scores below 60
- Account-Specific Risk Mitigation: "For [Account Name]: [Specific action] by [timeframe] to improve [health factor]"
- Case Resolution Acceleration: Priority support actions to improve customer experience
- Stakeholder Engagement Plans: Specific outreach strategies for under-engaged decision makers
- Success Metrics: Measurable goals for health score improvement over 30/60/90 days

Instructions for Health Score Calculation:
Calculate contract health scores (0-100) based on:
1. Support Case Health (30% weight) - Case volume, severity, resolution time, customer satisfaction
2. Engagement Quality (25% weight) - Activity frequency, stakeholder coverage, relationship depth
3. Product Adoption & Value Realization (20% weight) - Usage metrics, feature adoption, documented ROI/value
4. Customer Advocacy (10% weight) - Referral activity, testimonials, reference participation
5. Contract Compliance (10% weight) - Payment history, contract terms adherence, auto-renewal status
6. Expansion Momentum (5% weight) - Active opportunities, growth discussions, pipeline health

Health Score Ranges:
- 85-100: Excellent Health (Green) - High renewal probability, strong expansion potential
- 70-84: Good Health (Light Green) - Stable renewal, moderate expansion opportunities
- 55-69: Moderate Risk (Yellow) - Renewal attention needed, limited expansion potential
- 40-54: High Risk (Orange) - Active intervention required, expansion unlikely
- 0-39: Critical Risk (Red) - Immediate escalation needed, significant churn risk

-- VISUALIZATION & HTML STYLE REQUIREMENTS:

Use inline HTML and CSS only (no class names or external styles)
Create a comprehensive dashboard with multiple sections:
- Executive summary with health metrics
- Contract-scored tables with health indicators
- Support case impact analysis and resolution tracking
- Professional styling with consistent color scheme

Color Coding for Health Levels:
- Excellent Health: Background #e8f5e8, text #2e7d32
- Good Health: Background #f1f8e9, text #4caf50
- Moderate Risk: Background #fffde7, text #f9a825
- High Risk: Background #fff3e0, text #ef6c00
- Critical Risk: Background #ffebee, text #d32f2f

Card Styling:
- Background: white #ffffff
- Border radius: 12px
- Box shadow: 0 4px 16px rgba(60,72,88,0.08)
- Padding: 1.5rem

Table Styling:
- Header: background-color: #1565c0; color: white
- Hover effects: Light blue highlight on row hover
- Border: 1px solid #e0e0e0
- Font: system-ui, Montserrat

-- LAYOUT REQUIREMENTS:

Wrap all content in container with:
- max-width: 1600px
- margin: auto
- background: #f8f9fa
- padding: 20px
- font-family: system-ui, Montserrat

Structure:
- Dashboard title: "Renewal Health & Expansion Analysis - Account: {{{Name}}}"
- Account context header: {{{Name}}} ({{{Industry}}}, {{{AnnualRevenue}}})
- Executive Renewal Summary (EXACTLY 3 cards in responsive flexbox layout)
- Contract Health Matrix (all account contracts with health scoring and expansion potential)
- Support Case Impact Analysis (account case patterns affecting renewal health)
- Engagement Quality Assessment (account relationship strength indicators)
- Customer Advocacy Intelligence (referral pipeline and advocacy strength analysis)
- Expansion Opportunity Intelligence (account-specific growth opportunities with timing and active pipeline)
- Renewal Risk Mitigation Plan (actionable plans for account contracts)

CRITICAL: Always generate exactly 3 Executive Summary cards using responsive flexbox. Make all insights specific to actual contracts and accounts, not generic recommendations.

-- OUTPUT REQUIREMENT:

Return complete inline HTML dashboard containing:
- AI-calculated health scores based on actual case patterns and engagement data
- Comprehensive renewal risk analysis with specific mitigation strategies
- Actionable expansion recommendations with timing and revenue potential
- Executive summary with portfolio health metrics
- Strategic intelligence derived from actual support case and activity data

Critical Instructions:
1. Calculate actual health scores - base on real Case/Activity/Contract/Referral data patterns
2. Show specific renewal insights - case resolution, engagement quality, stakeholder coverage, advocacy strength
3. Include Customer Advocacy Intelligence - analyze referral pipeline, advocacy patterns, and organic growth indicators
4. Generate expansion-focused recommendations using active Opportunities pipeline data with probabilities and timelines
5. Identify specific at-risk contracts for focused intervention and success metrics
6. Include support case impact metrics and customer satisfaction trends
7. Cross-reference Product adoption gaps and unused features for expansion opportunities
8. Color-code all health indicators based on actual risk levels
9. Ensure all contract records are analyzed for renewal and expansion potential
10. Focus insights on customer success patterns, product adoption, advocacy strength, and competitive positioning

Use renewal health intelligence to drive customer retention and account growth success.

------------------

Description
Transforms contract and customer success data into strategic renewal and expansion intelligence. Analyzes health indicators, support case patterns, and engagement quality to provide actionable insights for customer success teams.

How it Works?
## **Turn customer success data into renewal and expansion intelligence.**

### This dashboard transforms contract and support data into strategic customer success insights:

**1. Health-Based Renewal Scoring**
Analyzes actual customer success indicators to assess renewal probability:
- Support case volume, severity, and resolution quality analysis
- Customer engagement frequency and stakeholder coverage patterns
- Product adoption metrics and value realization tracking
- Contract compliance and payment history assessment
- Comprehensive health scoring for proactive risk management

**2. Expansion Opportunity Engine**
Data-driven approach to identifying growth opportunities:
- Success pattern analysis to identify expansion-ready accounts
- Product/service expansion mapping based on current usage
- Revenue growth potential quantification and timing optimization
- Stakeholder engagement assessment for expansion conversations
- Success-based expansion strategies leveraging positive customer experiences

**3. Risk Mitigation Intelligence**
Proactive approach to customer retention:
- Identification of at-risk contracts requiring immediate intervention
- Specific action plans for health score improvement
- Support case resolution acceleration for customer experience enhancement
- Stakeholder engagement plans for under-engaged decision makers
- Timeline-based success metrics with measurable outcomes

### Key Features
- **Health-Based Scoring:** Renewal probability based on actual customer success indicators
- **Support Case Intelligence:** Detailed case impact analysis and resolution tracking
- **Expansion Readiness:** Clear identification of growth opportunities with revenue potential
- **Risk Mitigation Plans:** Specific action plans for at-risk accounts
- **Success Metrics:** Measurable goals for customer health improvement
- **Engagement Optimization:** Strategies for deepening customer relationships

This tool helps customer success teams retain customers and drive expansion by analyzing health indicators, identifying risks early, and providing clear strategies for account growth and retention success.

Input Data:
{
  "Id": "001U900000CB9f3IAD",
  "Name": "Nakatomi Plaza Bank",
  "Industry": "Banking & Financial Services", 
  "AnnualRevenue": "48500000000",
  "Description": "Leading commercial bank with digital transformation initiative focused on risk management, trading platforms, and analytics capabilities.",
  "Contracts": [
    {
      "Id": "800U900000CB9f3IAD",
      "ContractNumber": "NPBC-2024-001",
      "AccountId": "001U900000CB9f3IAD", 
      "Account": {
        "Id": "001U900000CB9f3IAD",
        "Name": "Nakatomi Plaza Bank"
      },
      "StartDate": "2024-01-01",
      "EndDate": "2025-12-31",
      "ContractValue__c": "2850000",
      "Status": "Active",
      "Description": "Data Feed Modernization Platform - 2-year enterprise license"
    },
    {
      "Id": "800U900000CB9f4IAD", 
      "ContractNumber": "NPBC-2023-002",
      "AccountId": "001U900000CB9f3IAD",
      "Account": {
        "Id": "001U900000CB9f3IAD", 
        "Name": "Nakatomi Plaza Bank"
      },
      "StartDate": "2023-06-01",
      "EndDate": "2025-05-31", 
      "ContractValue__c": "1450000",
      "Status": "Active",
      "Description": "Global Trading Analytics - Multi-region deployment"
    }
  ],
  "Cases": [
    {
      "Id": "500NPB001",
      "CaseNumber": "CS-NPB-001",
      "Subject": "Data Feed Latency Issues",
      "AccountId": "001U900000CB9f3IAD",
      "Status": "Closed",
      "Priority": "High", 
      "CreatedDate": "2024-11-15T10:30:00.000Z",
      "ClosedDate": "2024-11-18T14:20:00.000Z",
      "Description": "Experiencing 2-3 second delays in real-time data feeds affecting trading operations.",
      "Resolution": "Optimized data processing pipeline. Reduced latency to sub-500ms. Customer satisfied.",
      "Customer_Satisfaction__c": "Very Satisfied"
    },
    {
      "Id": "500NPB002", 
      "CaseNumber": "CS-NPB-002",
      "Subject": "API Integration Support Request",
      "AccountId": "001U900000CB9f3IAD",
      "Status": "Closed",
      "Priority": "Medium",
      "CreatedDate": "2024-12-01T09:15:00.000Z", 
      "ClosedDate": "2024-12-02T16:45:00.000Z",
      "Description": "Need assistance integrating new risk management APIs with existing systems.",
      "Resolution": "Provided custom integration guide and developer support. Implementation successful.",
      "Customer_Satisfaction__c": "Satisfied"
    },
    {
      "Id": "500NPB003",
      "CaseNumber": "CS-NPB-003", 
      "Subject": "Feature Request - ESG Data Coverage",
      "AccountId": "001U900000CB9f3IAD",
      "Status": "Open",
      "Priority": "Medium",
      "CreatedDate": "2024-12-20T11:00:00.000Z",
      "Description": "Request for expanded ESG data coverage including scope 3 emissions and biodiversity metrics.",
      "Customer_Satisfaction__c": null
    }
  ],
  "Activities": [
    {
      "Id": "ACT-NPB-CS-001",
      "Subject": "Quarterly Success Review", 
      "WhoId": "003NPB006",
      "Status": "Completed",
      "ActivityDate": "2024-12-10T14:00:00.000Z",
      "Description": "Reviewed platform adoption: 94% user engagement, 22% productivity improvement. Theo very positive about ROI.",
      "Type": "Customer Success Review"
    },
    {
      "Id": "ACT-NPB-CS-002",
      "Subject": "Expansion Discussion - ESG Module",
      "WhoId": "003NPB010", 
      "Status": "Completed",
      "ActivityDate": "2024-12-15T16:30:00.000Z",
      "Description": "Maria expressed strong interest in ESG analytics expansion. Budget approved for Q1 2025.",
      "Type": "Expansion Planning"
    }
  ],
  "Contacts": [
    {
      "Id": "003NPB006", 
      "Name": "Theo Nakamura",
      "Title": "Chief Technology Officer",
      "Department": "Technology", 
      "Phone": "+1-213-555-0106",
      "Email": "tnakamura@nakatomi.bank"
    },
    {
      "Id": "003NPB010",
      "Name": "Maria Santos",
      "Title": "ESG Analytics Director", 
      "Department": "Sustainability",
      "Phone": "+1-213-555-0110",
      "Email": "msantos@nakatomi.bank"
    }
  ]
}

----------------
Output HTML generated by AI using Prompt & data (Formatted)