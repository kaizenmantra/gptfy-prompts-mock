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
- Contract Value → Format {{{Contracts.TotalContractValue2__c}}} as currency
- Renewal Date → {{{Contracts.EndDate}}} formatted as MMM D, YYYY
- Health Score → Calculate based on multiple factors (0-100 scale, 100 = healthiest)
- Risk Level → High/Medium/Low based on health score and indicators
- Primary Health Factor → AI-generated based on support case patterns and engagement
- Expansion Potential → AI-calculated expansion opportunity value

Support Case Impact Analysis Table
- Source: "Cases" array to analyze customer health indicators
- REQUIRED EVIDENCE COLUMN: "Supporting Evidence" → Include specific quotes and record references
- Columns:
- Account → Link to account with case trends
- Case Volume → Total cases vs. historical average with trend indicators
- Severity Analysis → Distribution of case priorities and escalations
- Resolution Time → Average resolution vs. SLA performance
- Satisfaction Trends → Customer satisfaction patterns and sentiment analysis
- Health Impact → How case patterns affect renewal probability
- Supporting Evidence → "Case {{{Cases.CaseNumber}}} ({{{Cases.CreatedDate}}}): '{{{Cases.Description}}}' - Status: '{{{Cases.Status}}}'"
- Mitigation Actions → Specific recommendations based on case data

Engagement Quality Assessment
- Source: "Activities" and "Events" arrays to measure customer interaction health
- Recent activity sentiment analysis showing relationship strength
- REQUIRED EVIDENCE COLUMN: "Activity Evidence" → Include specific quotes from activity descriptions
- Columns:
- Account → Link to account record
- Last Engagement → Most recent activity date and type from {{{Task.ActivityDate}}}
- Engagement Frequency → Communication cadence and responsiveness patterns
- Stakeholder Coverage → Number of active contacts and decision-maker engagement
- Relationship Depth → Quality of interactions and strategic discussions
- Activity Evidence → "Activity {{{Task.Id}}} ({{{Task.ActivityDate}}}): '{{{Task.Description}}}'"
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
- EVIDENCE-BASED RECOMMENDATIONS: All recommendations must reference specific data points
- HIGH-RISK CONTRACT FOCUS: Specific action plans for contracts with health scores below 60
- Account-Specific Risk Mitigation: "For [Account Name]: [Specific action] by [timeframe] to improve [health factor] - Evidence: [specific quote/data]"
- Case Resolution Acceleration: Priority support actions based on specific case patterns and quotes
- Stakeholder Engagement Plans: Reference specific contacts and their last interaction dates/content
- Success Metrics: Measurable goals with baseline evidence from current data

Instructions for Health Score Calculation:
Calculate contract health scores (0-100) based on CONSISTENT METHODOLOGY:

CRITICAL: SCORES MUST BE CONSISTENT ACROSS RUNS FOR THE SAME DATA

1. Support Case Health (30% weight) - Case volume, severity, resolution time, customer satisfaction
   - BASE SCORE: 70 for normal case volume (≤3 cases)
   - DEDUCTIONS: -5 points per additional case above 3
   - DEDUCTIONS: -10 points for each day average resolution time exceeds 2 days
   - DEDUCTIONS: -15 points for any critical priority cases
   - ADDITIONS: +5 points for customer satisfaction ratings of "Satisfied" or higher

2. Engagement Quality (25% weight) - Activity frequency, stakeholder coverage, relationship depth
   - BASE SCORE: 60 for any engagement within 90 days
   - DEDUCTIONS: -20 points if no engagement in last 90 days
   - ADDITIONS: +10 points for positive sentiment phrases in activity descriptions
   - ADDITIONS: +5 points per unique stakeholder engaged (max +15)
   - DEDUCTIONS: -10 points if only transactional communication

3. Product Adoption & Value Realization (20% weight) - Usage metrics, feature adoption, documented ROI/value
   - BASE SCORE: 50 (assume moderate adoption without usage data)
   - ADDITIONS: +20 points for mentions of ROI, value, productivity, efficiency in activities
   - DEDUCTIONS: -15 points for mentions of issues, problems, difficulties

4. Customer Advocacy (10% weight) - Referral activity, testimonials, reference participation
   - BASE SCORE: 50 (neutral)
   - ADDITIONS: +30 points for any referral activity
   - DEDUCTIONS: -20 points if explicitly no referrals available

5. Contract Compliance (10% weight) - Payment history, contract terms adherence, auto-renewal status
   - BASE SCORE: 80 (assume good compliance without payment issues)
   - DEDUCTIONS: -30 points for any payment-related cases

6. Expansion Momentum (5% weight) - Active opportunities, growth discussions, pipeline health
   - BASE SCORE: 50 (neutral)
   - ADDITIONS: +20 points for expansion discussions in activities
   - DEDUCTIONS: -10 points if explicitly no expansion opportunities

ACCOUNT HEALTH SCORE = AVERAGE of all contract health scores

CONSISTENCY RULES:
- Use the EXACT SAME scoring methodology every time
- Document the specific evidence that led to each score component
- Account-level score = mathematical average of contract scores
- Never vary base scores or deduction/addition amounts between runs

Health Score Ranges:
- 85-100: Excellent Health (Green) - High renewal probability, strong expansion potential
- 70-84: Good Health (Light Green) - Stable renewal, moderate expansion opportunities
- 55-69: Moderate Risk (Yellow) - Renewal attention needed, limited expansion potential
- 40-54: High Risk (Orange) - Active intervention required, expansion unlikely
- 0-39: Critical Risk (Red) - Immediate escalation needed, significant churn risk

EVIDENCE-BASED SCORING REQUIREMENTS:
All health scores and risk assessments MUST include specific evidence from the data:

1. **Activity Evidence**: Quote specific phrases from {{{Task.Description}}} that support scoring decisions
   - Include Activity ID reference: "Activity {{{Task.Id}}}: '{quote from description}'"
   - Reference specific dates: "On {{{Task.ActivityDate}}}, {specific evidence}"

2. **Case Pattern Evidence**: Reference specific case details that impact health scores
   - Case-specific quotes: "Case {{{Cases.CaseNumber}}}: '{{{Cases.Description}}}'"
   - Resolution evidence: "Resolution time of X days for Case {{{Cases.Id}}}"
   - Customer satisfaction data: "Case priority was '{{{Cases.Priority}}}' for Case {{{Cases.CaseNumber}}}"

3. **Contract-Specific Evidence**: Link health scores to actual contract performance indicators
   - Payment history references from contract data
   - Usage metrics from activity descriptions
   - Renewal conversation evidence from meeting notes

4. **Stakeholder Intelligence**: Quote specific stakeholder feedback and engagement evidence
   - Direct quotes from contact interactions: "Contact {{{Contacts.Name}}} mentioned: '{specific quote}'"
   - Engagement frequency data: "Last engaged on {{{Task.ActivityDate}}} via {{{Task.Subject}}}"
   - Decision-maker sentiment from activity descriptions

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
- **Customer Success Timeline** (NEW - chronological timeline of key activities/cases with quotes and health impact)
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
1. Calculate actual health scores - base on real Case/Activity/Contract/Referral data patterns WITH SPECIFIC EVIDENCE
2. Show specific renewal insights - case resolution, engagement quality, stakeholder coverage, advocacy strength WITH DIRECT QUOTES
3. Include Customer Advocacy Intelligence - analyze referral pipeline, advocacy patterns, and organic growth indicators WITH RECORD REFERENCES
4. Generate expansion-focused recommendations using active Opportunities pipeline data with probabilities and timelines WITH SUPPORTING EVIDENCE
5. Identify specific at-risk contracts for focused intervention and success metrics WITH ACTIVITY/CASE QUOTES
6. Include support case impact metrics and customer satisfaction trends WITH CASE-SPECIFIC DETAILS
7. Cross-reference Product adoption gaps and unused features for expansion opportunities WITH USAGE EVIDENCE
8. Color-code all health indicators based on actual risk levels WITH SUPPORTING DATA QUOTES
9. Ensure all contract records are analyzed for renewal and expansion potential WITH EVIDENCE TRAILS
10. Focus insights on customer success patterns, product adoption, advocacy strength, and competitive positioning WITH SPECIFIC EXAMPLES

MANDATORY EVIDENCE FORMAT:
- Every health score must include: "Score based on: [specific evidence from data]"
- Every risk assessment must include: "Evidence: [direct quote from activity/case/contact]"
- Every recommendation must include: "Based on: [specific record reference with quote]"
- Every expansion opportunity must include: "Supported by: [activity evidence with ID and date]"

HEALTH SCORE CALCULATION EXAMPLE FOR CONSISTENCY:
For Deutsche Bank AG with 5 cases, 4-day avg resolution, positive activity sentiment:

Support Case Health (30%): 70 (base) - 10 (2 extra cases) - 20 (2 days over limit) = 40
Engagement Quality (25%): 60 (base) + 10 (positive sentiment) + 5 (2 contacts) = 75  
Product Adoption (20%): 50 (base) + 20 (positive mentions) = 70
Customer Advocacy (10%): 50 (base) - 20 (no referrals) = 30
Contract Compliance (10%): 80 (base) = 80
Expansion Momentum (5%): 50 (base) - 10 (no opportunities) = 40

WEIGHTED AVERAGE: (40×0.3) + (75×0.25) + (70×0.2) + (30×0.1) + (80×0.1) + (40×0.05) = 58

ALL CONTRACTS MUST USE THIS EXACT METHODOLOGY

ENHANCED EVIDENCE REQUIREMENTS:
- Health scores must quote SPECIFIC PHRASES from activity descriptions that influenced the score
- Primary Health Factors must reference EXACT QUOTES from case descriptions or activity notes
- Stakeholder assessment must include DIRECT QUOTES from contact interactions showing sentiment
- Resolution evidence must include FULL CASE DESCRIPTIONS and resolution details
- Engagement depth must quote SPECIFIC PHRASES from activity descriptions showing relationship quality

EXAMPLE EVIDENCE FORMAT WITH STRATEGIC ANALYSIS:
- Health Score: "Score 45 based on: Case 18628804 'Invoice posting' resolved in 4 days, Activity 00TKh00002rlRgXMAU stated 'excited to share latest enhancements' showing positive engagement"
- Primary Factor: "Support case volume - Evidence: Joseph mentioned 'experiencing delays' in Activity 00TKh00002rjmN6MAI, while Case 18570214 described 'renewals process challenges'"
- Stakeholder Depth: "Limited strategic discussions - Evidence: Recent activities focus on 'insights and updates' rather than strategic planning, Contact Joseph Faddoul last engaged via 'invitation to London event'"

ENHANCED QUOTE ANALYSIS REQUIREMENTS:
For every major insight, include:

1. **Direct Quote with Context**:
   ```html
   <div style="background-color: #e8f5e8; padding: 8px; border-radius: 4px; border-left: 3px solid #2ecc71;">
     <strong style="font-size: 12px; color: #27ae60;">Key Quote:</strong> 
     <em style="font-size: 12px; color: #2c3e50;">"[EXACT_QUOTE_FROM_DATA]"</em>
   </div>
   ```

2. **Strategic Impact Analysis**:
   ```html
   <div style="margin-top: 6px; padding: 4px 6px; background-color: #d1ecf1; border-radius: 3px; font-size: 11px;">
     <strong style="color: #0c5460;">RENEWAL IMPACT:</strong> 
     <span style="color: #2c3e50;">[HOW_THIS_AFFECTS_RENEWAL_PROBABILITY]</span>
   </div>
   ```

3. **Evidence-Based Health Scoring**:
   - Quote specific phrases that influenced the score
   - Reference exact dates and record IDs
   - Explain the connection between evidence and score

4. **Customer Success Timeline** (add this section):
   ```html
   <h3>Customer Success Timeline</h3>
   <div style="position: relative; margin-left: 20px;">
     <div style="position: absolute; left: 6px; top: 0; bottom: 0; width: 2px; background-color: #ddd;"></div>
     
     <!-- For each significant activity/case/engagement - SHOW 5-7 MOST RECENT ENTRIES -->
     <div style="position: relative; margin-bottom: 10px;">
       <div style="position: absolute; left: -20px; width: 12px; height: 12px; border-radius: 50%; background-color: [EVENT_COLOR]; border: 2px solid #fff; box-shadow: 0 0 0 2px [EVENT_COLOR];"></div>
       <div style="margin-left: 8px; background-color: #f8f9fa; padding: 6px 10px; border-radius: 4px; border-left: 3px solid [EVENT_COLOR];">
         <div style="display: flex; justify-content: space-between; align-items: center; margin-bottom: 2px;">
           <span style="font-weight: 600; color: #2c3e50; font-size: 12px;">[ACTIVITY_SUBJECT_OR_CASE_TYPE]</span>
           <span style="color: #7f8c8d; font-size: 10px;">[DATE_FROM_ACTIVITY_OR_CASE]</span>
         </div>
         
         <!-- Hyperlinked customer quote from activity description -->
         <div style="font-size: 11px; color: #555; line-height: 1.2; margin-bottom: 3px;">
           "<strong>[EXTRACT_KEY_QUOTE_FROM_TASK_DESCRIPTION_OR_CASES_DESCRIPTION]</strong>" → [CONCISE_HEALTH_IMPACT] (<a href="/[RECORD_ID]" style="color: #1565c0; text-decoration: none;">[CONTACT_NAME_FROM_WHOID]'s email</a>)
         </div>
       </div>
     </div>
   </div>
   ```

QUOTE EXTRACTION RULES FOR TIMELINE:
- Extract meaningful phrases from {{{Task.Description}}} and {{{Cases.Description}}} that show customer sentiment
- Include phrases showing satisfaction: "excited", "valuable", "positive", "satisfied", "pleased"
- Include phrases showing concerns: "issues", "delays", "challenges", "problems", "difficulties"
- Include commitment language: "will", "plan to", "committed to", "looking forward", "schedule"
- Include relationship indicators: "partnership", "strategic", "important", "critical", "valuable"
- Include business impact phrases: "productivity improvement", "ROI", "efficiency", "growth", "results"

TIMELINE EVENT COLORS:
- Positive Engagement/Success: #2ecc71 (Green)
- Support Cases/Issues: #e74c3c (Red) 
- Neutral Communication: #3498db (Blue)
- Product Updates/Features: #f39c12 (Orange)
- Meetings/Strategic Discussions: #9b59b6 (Purple)

TIMELINE REQUIREMENTS:
- Show chronological order of events (most recent first)
- SHOW 5-7 MOST RECENT ACTIVITIES AND IMPORTANT CASES (not just 2)
- Extract direct quotes from activity descriptions that show customer voice
- Focus on events that impact renewal probability
- Include both positive and negative interactions
- FORMAT: "Quote text" → Impact (Contact's email<hyperlink>)
- Use concise health impact analysis (3-5 words max)
- COMPACT SPACING: margin-bottom: 10px for timeline items
- SMALLER ELEMENTS: 12px dots, 6px padding, 12px titles, 11px quotes, 9px impact text
- Include activities from different months to show relationship progression
- Prioritize activities with meaningful customer quotes over generic communications
- CONTACT MAPPING: Use {{{Task.WhoId}}} to find contact name from Contacts array using {{{Contacts.Name}}}
- Show contact source: "Joseph's email" or "Musab's email" with hyperlink to activity record

Use renewal health intelligence to drive customer retention and account growth success.

------------------

## CORRECTED FIELD MAPPINGS

Based on actual data structure, use these EXACT field references:

**Account Level:**
- {{{Name}}} - Account name
- {{{Industry}}} - Account industry 
- {{{Description}}} - Account description
- {{{Id}}} - Account ID

**Task/Activities:**
- {{{Task.Subject}}} - Activity subject
- {{{Task.Description}}} - Activity description (contains email body and content)
- {{{Task.ActivityDate}}} - Activity date
- {{{Task.Status}}} - Activity status
- {{{Task.Id}}} - Activity ID
- {{{Task.WhoId}}} - Contact ID associated with activity
- {{{Task.Activity_Type__c}}} - Activity type (Email, etc.)

**Cases:**
- {{{Cases.CaseNumber}}} - Case number (18628804, etc.)
- {{{Cases.Subject}}} - Case subject
- {{{Cases.Description}}} - Case description
- {{{Cases.Status}}} - Case status (Complete, etc.)
- {{{Cases.Priority}}} - Case priority (Medium, High, etc.)
- {{{Cases.CreatedDate}}} - Case creation date
- {{{Cases.ClosedDate}}} - Case closed date
- {{{Cases.Id}}} - Case ID

**Contracts:**
- {{{Contracts.ContractNumber}}} - Contract number
- {{{Contracts.TotalContractValue2__c}}} - Contract value
- {{{Contracts.StartDate}}} - Contract start date
- {{{Contracts.EndDate}}} - Contract end date (renewal date)
- {{{Contracts.Status}}} - Contract status
- {{{Contracts.Id}}} - Contract ID
- {{{Contracts.Account.Name}}} - Account name via contract

**Contacts:**
- {{{Contacts.Name}}} - Contact name
- {{{Contacts.Title}}} - Contact title
- {{{Contacts.Email}}} - Contact email
- {{{Contacts.Phone}}} - Contact phone
- {{{Contacts.Id}}} - Contact ID

Description
Transforms contract and customer success data into strategic renewal and expansion intelligence. Analyzes health indicators, support case patterns, and engagement quality to provide actionable insights for customer success teams.

How it Works?
**Transforms customer success data into strategic renewal and expansion intelligence through evidence-based health scoring and timeline analysis.**

This comprehensive dashboard analyzes contracts, support cases, and engagement patterns to provide actionable insights for customer success teams.

**Evidence-Based Health Scoring System**
The platform calculates renewal health scores using a sophisticated weighted methodology:

• **Support Case Analysis (30%)** - Evaluates case volume, resolution times, and priority levels to assess customer satisfaction
• **Engagement Quality Assessment (25%)** - Measures communication frequency, stakeholder coverage, and relationship depth
• **Product Value Realization (20%)** - Tracks adoption metrics and documented ROI from customer interactions
• **Customer Advocacy Strength (10%)** - Analyzes referral activity and testimonial participation
• **Contract Compliance Health (10%)** - Reviews payment history and terms adherence
• **Expansion Momentum (5%)** - Identifies active growth opportunities and strategic discussions

**Customer Success Timeline Intelligence**
Creates a chronological view of customer interactions with direct evidence:

• **Quote-Driven Analysis** - Extracts actual customer statements from activity descriptions
• **Contact Attribution** - Links interactions to specific stakeholders with hyperlinked sources  
• **Health Impact Assessment** - Connects each interaction to renewal probability changes
• **Relationship Progression** - Shows engagement evolution across multiple touchpoints
• **Evidence Traceability** - Provides direct links to source records for verification

**Risk Mitigation and Expansion Planning**
Generates specific, evidence-backed recommendations:

• **Contract-Specific Action Plans** - Tailored interventions based on health score components
• **Stakeholder Engagement Strategy** - Targeted outreach plans for decision makers
• **Support Process Optimization** - Case resolution improvements based on patterns
• **Expansion Opportunity Identification** - Growth discussions supported by positive interactions
• **Success Metrics Tracking** - Measurable goals with baseline evidence from current data

This tool enables customer success teams to make data-driven retention and expansion decisions by providing transparent health scoring, detailed interaction histories, and specific action plans supported by actual customer evidence.

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