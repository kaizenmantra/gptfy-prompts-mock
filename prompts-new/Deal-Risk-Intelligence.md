Deal Risk Intelligence Dashboard

You are a skilled sales intelligence analyst and data visualization expert.

Your task is to process the input JSON data and generate a comprehensive Deal Risk Intelligence Dashboard that identifies at-risk opportunities, analyzes risk factors, and provides actionable recommendations for sales teams.

IMPORTANT:
Return only clean HTML without any backticks, "html" tags, markdown formatting, escaped characters, or newlines. The HTML should be ready to use directly as a single continuous string.

CRITICAL: DO NOT add \n, line breaks, or any form of newlines in the output. Ensure ALL opportunities are analyzed and displayed.

-- GENERATE THE FOLLOWING COMPONENTS:

Executive Risk Summary Cards (3-Card Dashboard Layout)
- EXACTLY 3 CARDS in responsive flexbox: `display: flex; flex-wrap: wrap; gap: 20px; margin-bottom: 30px;`
- Each card: `flex: 1; min-width: 300px; max-width: 500px;` for responsive same-line layout
- CARD 1: Portfolio Risk Health Score → Large centered score (0-100) with risk level descriptive text below
- CARD 2: Revenue at Risk → Large centered dollar amount with timeframe text below
- CARD 3: Critical Actions Required → Large centered number with urgency text below
- REQUIRED HTML STRUCTURE: Each card must have `background: #ffffff; padding: 1.5rem; border-radius: 12px; box-shadow: 0 4px 16px rgba(60,72,88,0.08); text-align: center;`
- CONSISTENT FORMAT: Card title in small caps, large number/score, descriptive text below

**Risk-Scored Opportunities Table**
- Source: "Opportunities" array (show ALL opportunities with calculated risk scores)
- **SORTING REQUIREMENT**: Sort table by Risk Score in DESCENDING order (highest risk first)
- **COLOR CODING**: Apply visible row background colors based on risk score:
  - 85-100 (Critical): Background #ffebee, hover #ffcdd2
  - 70-84 (High): Background #fff3e0, hover #ffe0b2  
  - 50-69 (Medium): Background #fffde7, hover #fff9c4
  - 0-49 (Low): Background #e8f5e8, hover #c8e6c8
- Columns:
- Opportunity Name → Show {{{Opportunities.Name}}} as hyperlink to '/'+{{{Opportunities.Id}}}
- Amount → Format {{{Opportunities.Amount}}} as currency
- Close Date → {{{Opportunities.CloseDate}}} formatted as MMM D, YYYY
- Stage → {{{Opportunities.StageName}}}
- Risk Score → Calculate based on multiple factors (0-100 scale, 100 = highest risk)
- Primary Risk Factor → AI-generated based on data analysis
- Champion Status → Analyze opportunity notes and contact engagement
- Next Action → AI-generated recommendation based on risk factors

**Risk Factor Analysis Table**
- Source: Analyze patterns across Opportunities + Activities + Cases data
- Show specific risk factors with clear opportunity linkage
- Columns:
- Risk Category → AI-identified categories (Budget, Competition, Champion, Technical, Timeline)
- Affected Opportunities → Show specific opportunity names as hyperlinks to '/'+{{{Opportunities.Id}}}
- Risk Level → High/Medium/Low based on severity
- Early Warning Signs → AI-generated indicators from activity sentiment
- Mitigation Strategy → AI-generated recommendations specific to the affected opportunities

**Activity Sentiment Tracker**
- Source: "Activities" array linked to high-risk opportunities
- Recent activity sentiment analysis showing engagement quality
- Columns:
- Opportunity → Link to opportunity record
- Last Activity → Most recent activity date and type
- Sentiment Trend → Analyze {{{ActivityHistories.SalesLoft1__Call_Sentiment__c}}} patterns (Improving/Declining/Stable)
- Days Since Contact → Calculate from {{{ActivityHistories.ActivityDate}}}
- Engagement Quality → Assess meeting types and outcomes
- Urgency Flag → Highlight deals requiring immediate attention

Risk Score Visual Breakdown
- Source: Risk calculation logic for EVERY opportunity in the data
- VISUAL FORMAT: Use horizontal progress bars or gauge-style indicators for each risk factor
- Show risk factors as visual components (not text paragraphs):
  - Timeline Risk: Progress bar showing days to close vs. stage progression
  - Champion Strength: Visual indicator (Strong/Weak/Missing)
  - Activity Sentiment: Trend arrow (↗ Improving/→ Stable/↘ Declining)
  - Competition Level: Visual threat indicator (High/Medium/Low)
  - Support Issues: Icon-based indicator (✓ Clean / ⚠ Issues)
- COMPACT FORMAT: Each opportunity gets a visual risk factor grid, not lengthy text explanations
- CRITICAL: Must show visual breakdown for ALL opportunities in the Opportunities array

**Opportunity Risk Cards**
- Source: Individual visual risk cards for each opportunity in the data  
- **MANDATORY DISPLAY**: Create visual risk cards for ALL opportunities in the Opportunities array
- **CRITICAL SORTING**: Cards MUST be sorted by Risk Score in DESCENDING order (same order as table)
- **VISUAL FORMAT**: Responsive grid layout using auto-fit for consistent card alignment
- **CARD STRUCTURE**: Each card must contain:
  - Opportunity name as clickable header linking to '/'+{{{Opportunities.Id}}}
  - Large risk score badge with visible color coding (matching table colors)
  - Amount formatted as currency in prominent display
  - Close date with days remaining countdown
  - Primary risk factor with descriptive text (no excessive icons)
  - Champion status with simple text indicator
  - Next action as styled button with appropriate color based on risk level
- **SORTING VERIFICATION**: Highest risk score card should appear first (top-left), lowest risk score card should appear last
- **STYLING REQUIREMENTS**:
  - Grid layout: `display: grid; grid-template-columns: repeat(auto-fit, minmax(300px, 1fr)); gap: 20px; margin-bottom: 30px;`
  - Card dimensions: min-height 280px, consistent width, proper spacing
  - Risk score badge: Large, centered, subtle color-coded background matching table colors
  - Card hover effects: slight scale transform and enhanced shadow
  - Typography: Consistent font sizing and hierarchy
- **CRITICAL**: Must show ALL opportunities, not just high-risk ones
- **LAYOUT FIX**: Use auto-fit grid instead of fixed 3 columns for better responsiveness

**Case Impact Assessment**
- Source: "Cases" array to identify support issues affecting deals
- Show how open support cases might impact deal progression
- Columns:
- Related Opportunity → Link cases to opportunities where applicable
- Case Subject → Show {{{AccountCreatedCases__r.Subject}}} as hyperlink to '/'+{{{AccountCreatedCases__r.Id}}}
- Priority → {{{AccountCreatedCases__r.Priority}}}
- Days Open → Calculate from {{{AccountCreatedCases__r.CreatedDate}}}
- Business Impact → {{{AccountCreatedCases__r.Impact__c}}} or AI-assessed impact
- Deal Risk Impact → Assess how case affects opportunity progression

Instructions for Risk Score Calculation:
Calculate opportunity risk scores (0-100) based on:
1. Time to close date (weight: 25%) - Closer dates = higher risk if not progressing
2. Stage progression velocity (weight: 20%) - Stalled deals = higher risk  
3. Champion engagement (weight: 20%) - Weak champion support = higher risk
4. Activity sentiment (weight: 15%) - Negative sentiment = higher risk
5. Competitive pressure (weight: 10%) - Active competitors = higher risk
6. Support case severity (weight: 10%) - Critical cases = higher risk

Risk Score Ranges:
- 85-100: Critical Risk (Red) - Immediate intervention required
- 70-84: High Risk (Orange) - Close monitoring needed
- 50-69: Medium Risk (Yellow) - Standard management
- 0-49: Low Risk (Green) - On track

Instructions for Visual Risk Intelligence:
For every risk assessment and recommendation:
1. Base analysis strictly on visible data patterns
2. Generate specific, actionable next steps (not generic advice)
3. Use VISUAL elements for risk factor display:
   - Timeline Risk: Progress bar (red = urgent, green = safe)
   - Champion Strength: Icon indicators (🏆 = strong, ⚠️ = weak, ❌ = missing)
   - Activity Sentiment: Trend arrows (↗️ improving, ➡️ stable, ↘️ declining)
   - Competition: Threat level badges (🔴 High, 🟡 Medium, 🟢 Low)
   - Support Issues: Status icons (✅ clean, ⚠️ minor, 🚨 critical)
4. Highlight the most critical 2-3 deals requiring immediate focus
5. Include dollar amounts at risk to emphasize business impact
6. **CRITICAL**: In Risk Factor Analysis table, always show specific opportunity names (not just counts)
7. **MANDATORY**: Create visual risk cards for ALL opportunities, not just high-risk ones
8. AVOID lengthy text paragraphs - use compact visual indicators instead

-- VISUALIZATION & HTML STYLE REQUIREMENTS:

Use inline HTML and CSS only (no class names or external styles)
Create a comprehensive VISUAL dashboard with multiple sections:
- Executive summary with 3-card responsive layout
- Risk-scored tables with white backgrounds (no colored table backgrounds)
- Visual risk indicators: progress bars, gauges, trend arrows, icons
- Opportunity cards with visual risk breakdowns (not text paragraphs)
- Professional styling with EXACT color scheme from Champion Network Analysis template
- AVOID: Lengthy text explanations, report-style content, colored table row backgrounds
- FOCUS: Visual elements, charts, icons, progress indicators, compact information display

Color Coding for Risk Levels (Enhanced Visibility):
- Critical Risk (85-100): Background #ffebee, text #c62828, hover #ffcdd2
- High Risk (70-84): Background #fff3e0, text #ef6c00, hover #ffe0b2  
- Medium Risk (50-69): Background #fffde7, text #f9a825, hover #fff9c4
- Low Risk (0-49): Background #e8f5e8, text #2e7d32, hover #c8e6c8

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
- Dashboard title: "Deal Risk Intelligence Dashboard - Account: {{{Name}}}"
- Account context header: {{{Name}}} ({{{Industry}}}, {{{AnnualRevenue}}}, {{{Client_Segment__c}}})
- Executive Risk Summary (EXACTLY 3 cards in responsive flexbox layout)
- Risk-Scored Opportunities table (ALL opportunities with calculated risk scores)
- Risk Factor Analysis table (compact, visual indicators)
- Opportunity Risk Cards (MANDATORY visual cards for ALL opportunities)
- Risk Score Visual Breakdown (MANDATORY visual risk factor breakdown for ALL opportunities) 
- Action Priority Summary (visual priority matrix)

CRITICAL: Always generate exactly 3 Executive Summary cards. Focus on VISUAL elements over text. Make it dashboard-like, not report-like.

-- OUTPUT REQUIREMENT:

Return complete inline HTML dashboard containing:
- AI-calculated risk scores for all opportunities
- Intelligent risk factor identification
- Actionable recommendations based on data analysis
- Executive summary with portfolio health metrics
- No unnecessary explanations or placeholders

Critical Instructions:
1. Calculate actual risk scores for ALL opportunities - do not use placeholder values
2. **MANDATORY SORTING**: Both table AND cards must be sorted by Risk Score in DESCENDING order (highest risk first)
3. MANDATORY: Create visual risk cards for ALL opportunities in the data
4. MANDATORY: Include visual risk factor breakdown for ALL opportunities 
5. Use VISUAL elements (progress bars, gauges, icons) instead of lengthy text
6. Identify the 2-3 most critical deals requiring immediate attention
7. Include total dollar amounts at risk for executive visibility
8. Show clear next actions with timeframes for each opportunity
9. Color-code all risk indicators with sufficient contrast for visibility
10. Make it dashboard-like with visual elements, NOT report-like with paragraphs
11. **CRITICAL**: Ensure cards appear in identical order as table rows (highest risk score first)
12. Focus on actionable insights through visual representation, not extensive text analysis

Use risk intelligence to drive action, not just provide information.

------------------

Description
Transforms Salesforce data into proactive risk management. Identifies at-risk deals, analyzes progression patterns, and provides actionable recommendations to prevent losses before they happen.

How it Works?
## **Never lose another deal to preventable risks.**

### This dashboard combines multiple data sources to create a comprehensive risk assessment system:

**1. Risk Score Calculation**
Analyzes multiple risk factors to score each opportunity:
- Timeline pressure and stage progression velocity
- Champion strength and engagement quality  
- Competitive threats and positioning
- Support case impacts on deal progression
- Activity sentiment trends and communication gaps

**2. Early Warning System**
Identifies risk patterns before deals are lost:
- Stalled opportunities missing key milestones
- Champions who have gone quiet or lost influence
- Negative sentiment trends in recent interactions
- Critical support issues affecting buying confidence
- Competitive displacement activities

**3. Action Prioritization**
Provides specific, actionable recommendations:
- Which deals need immediate intervention
- Specific stakeholders requiring attention
- Recommended next steps with timeframes
- Risk mitigation strategies for different scenarios

### Key Features
- **Intelligent Risk Scoring:** AI-calculated risk assessment based on multiple data points
- **Risk-Based Prioritization:** Opportunities automatically sorted by risk score (highest risk first)
- **Color-Coded Risk Levels:** Visual risk indicators with consistent color scheme (Critical=Red, High=Orange, Medium=Yellow, Low=Green)
- **Executive Summary:** Portfolio-level health metrics and trends
- **Action-Oriented Insights:** Specific recommendations, not just data display
- **Multi-Source Analysis:** Combines opportunities, activities, cases, and notes
- **Visual Risk Cards:** Individual opportunity cards showing comprehensive risk breakdown for ALL deals
- **Immediate Focus Areas:** Highlights the 2-3 most critical deals requiring urgent intervention

This tool helps sales teams proactively manage their pipeline by identifying risks early and providing clear action plans to prevent deal losses.

Input Data:
{
  "Account": {
    "Name": "Nakatomi Plaza Bank",
    "Id": "001U900000CB9f3IAD",
    "Industry": "Banking & Financial Services",
    "AnnualRevenue": "48500000000",
    "Client_Segment__c": "Enterprise Plus",
    "OwnerId": "005U9000000cQwQ",
    "SNL_Client_Since__c": "2019-03-01",
    "Rating": "A+",
    "TickerSymbol": "NPB",
    "Description": "Leading commercial bank with digital transformation initiative focused on risk management, trading platforms, and analytics capabilities."
  },
  "Opportunities": [
    {
      "Id": "006U900000M8fkIAC",
      "Name": "Enterprise Data Feed Modernization", 
      "Amount": "2850000.00",
      "StageName": "Negotiation/Review",
      "CloseDate": "2025-02-28",
      "Probability": "75",
      "At_Risk_Reason__c": "Budget approval pending",
      "NextStep": "Final legal review and signatures",
      "Competitors__c": "Bloomberg;Refinitiv"
    },
    {
      "Id": "006U900000M8flIAC", 
      "Name": "Capital IQ Pro Global Expansion",
      "Amount": "1450000.00",
      "StageName": "Proposal/Price Quote",
      "CloseDate": "2025-03-15",
      "Probability": "60",
      "At_Risk_Reason__c": "Cultural resistance",
      "NextStep": "Build stronger business case for EMEA team",
      "Competitors__c": "FactSet;Bloomberg Terminal"
    },
    {
      "Id": "006U900000M8fmIAC",
      "Name": "ESG Analytics Platform",
      "Amount": "975000.00", 
      "StageName": "Value Proposition",
      "CloseDate": "2025-04-30",
      "Probability": "40",
      "At_Risk_Reason__c": "ROI justification needed",
      "NextStep": "Complete pilot and present results to CFO",
      "Competitors__c": "MSCI ESG;Sustainalytics"
    }
  ],
  "ActivityHistories": [
    {
      "Id": "00TU900000ACT001",
      "Subject": "Executive Presentation to Leadership",
      "WhatId": "006U900000M8fkIAC",
      "ActivityDate": "2024-11-25",
      "SalesLoft1__Call_Sentiment__c": "Mixed but positive",
      "Description__c": "Hans supportive due to risk management improvements. CFO concerned about switching costs. Live demo saved the meeting.",
      "Comments__c": "Proceed to procurement"
    },
    {
      "Id": "00TU900000ACT002", 
      "Subject": "Technical Deep Dive - EMEA Team",
      "WhatId": "006U900000M8flIAC",
      "ActivityDate": "2024-12-01",
      "SalesLoft1__Call_Sentiment__c": "Skeptical",
      "Description__c": "London team expressed strong preference for Bloomberg. Cultural resistance to change evident.",
      "Comments__c": "Schedule follow-up with local champion"
    },
    {
      "Id": "00TU900000ACT003",
      "Subject": "Pilot Results Review",
      "WhatId": "006U900000M8fmIAC", 
      "ActivityDate": "2024-12-15",
      "SalesLoft1__Call_Sentiment__c": "Cautiously optimistic",
      "Description__c": "ESG pilot showing positive results. CFO attending next meeting to review ROI analysis.",
      "Comments__c": "Prepare comprehensive ROI presentation"
    }
  ],
  "AccountCreatedCases__r": [
    {
      "Id": "500U900000Ze07IAC",
      "Subject": "Data Feed Latency Issue",
      "Priority": "High",
      "Status": "Closed",
      "CreatedDate": "2024-10-15T13:10:00.000Z",
      "ClosedDate": "2024-10-18T16:30:00.000Z", 
      "Impact__c": "High",
      "Opportunity__c": "006U900000M8fkIAC"
    },
    {
      "Id": "500U900000Ze08IAC",
      "Subject": "Security Audit Findings", 
      "Priority": "Critical",
      "Status": "Closed",
      "CreatedDate": "2024-11-20T14:20:00.000Z",
      "ClosedDate": "2024-11-22T11:45:00.000Z",
      "Impact__c": "Critical",
      "Opportunity__c": "006U900000M8fkIAC"
    }
  ],
  "Notes": [
    {
      "Id": "00NU900000NOTE01",
      "Title": "Competitive Intelligence - Bloomberg",
      "ParentId": "006U900000M8flIAC",
      "Body": "Bloomberg offered 40% discount to block our deal. Strong relationships in London including golf/social with head of trading. Need to emphasize innovation roadmap advantage.",
      "CreatedDate": "2024-12-15T10:30:00.000Z"
    }
  ]
}

----------------
Output HTML generated by AI using Prompt & data (Formatted)

<div style="max-width: 1600px; margin: 0 auto; background: #f8f9fa; padding: 20px; font-family: system-ui, Montserrat;"><div style="text-align: center; margin-bottom: 30px;"><h1 style="color: #1565c0; font-size: 2.5rem; margin-bottom: 0.5rem;">Deal Risk Intelligence Dashboard</h1><p style="color: #424242; font-size: 1.3rem; margin: 0;">Account: Nakatomi Plaza Bank</p><p style="color: #666; font-size: 1.1rem; margin: 0.25rem 0 0 0;">Banking & Financial Services • Enterprise Plus • A+ Credit Rating</p></div><div style="display: grid; grid-template-columns: repeat(auto-fit, minmax(280px, 1fr)); gap: 20px; margin-bottom: 30px;"><div style="background: #ffffff; padding: 1.5rem; border-radius: 12px; box-shadow: 0 4px 16px rgba(60,72,88,0.08); text-align: center;"><div style="color: #1565c0; font-size: 0.9rem; font-weight: bold; margin-bottom: 0.75rem;">PORTFOLIO HEALTH SCORE</div><div style="font-size: 2.5rem; font-weight: 700; color: #ef6c00; margin-bottom: 0.5rem;">72/100</div><div style="color: #666; font-size: 0.85rem;">Medium Risk Level</div></div><div style="background: #ffffff; padding: 1.5rem; border-radius: 12px; box-shadow: 0 4px 16px rgba(60,72,88,0.08); text-align: center;"><div style="color: #1565c0; font-size: 0.9rem; font-weight: bold; margin-bottom: 0.75rem;">HIGH-RISK DEALS</div><div style="font-size: 2.5rem; font-weight: 700; color: #c62828; margin-bottom: 0.5rem;">2</div><div style="color: #666; font-size: 0.85rem;">Require Immediate Action</div></div><div style="background: #ffffff; padding: 1.5rem; border-radius: 12px; box-shadow: 0 4px 16px rgba(60,72,88,0.08); text-align: center;"><div style="color: #1565c0; font-size: 0.9rem; font-weight: bold; margin-bottom: 0.75rem;">REVENUE AT RISK</div><div style="font-size: 2.5rem; font-weight: 700; color: #c62828; margin-bottom: 0.5rem;">$2.4M</div><div style="color: #666; font-size: 0.85rem;">Next 90 Days</div></div><div style="background: #ffffff; padding: 1.5rem; border-radius: 12px; box-shadow: 0 4px 16px rgba(60,72,88,0.08); text-align: center;"><div style="color: #1565c0; font-size: 0.9rem; font-weight: bold; margin-bottom: 0.75rem;">CRITICAL ACTIONS</div><div style="font-size: 2.5rem; font-weight: 700; color: #ef6c00; margin-bottom: 0.5rem;">3</div><div style="color: #666; font-size: 0.85rem;">Due This Week</div></div></div><div style="background: #ffffff; padding: 1.5rem; border-radius: 12px; box-shadow: 0 4px 16px rgba(60,72,88,0.08); margin-bottom: 30px;"><h3 style="color: #1565c0; font-size: 1.4rem; margin-bottom: 1rem;">🚨 High-Risk Opportunities</h3><table style="width: 100%; border-collapse: collapse;"><thead><tr><th style="background-color: #1565c0; color: white; padding: 12px; text-align: left; border: 1px solid #e0e0e0;">Opportunity</th><th style="background-color: #1565c0; color: white; padding: 12px; text-align: left; border: 1px solid #e0e0e0;">Amount</th><th style="background-color: #1565c0; color: white; padding: 12px; text-align: left; border: 1px solid #e0e0e0;">Close Date</th><th style="background-color: #1565c0; color: white; padding: 12px; text-align: left; border: 1px solid #e0e0e0;">Risk Score</th><th style="background-color: #1565c0; color: white; padding: 12px; text-align: left; border: 1px solid #e0e0e0;">Primary Risk</th><th style="background-color: #1565c0; color: white; padding: 12px; text-align: left; border: 1px solid #e0e0e0;">Next Action</th></tr></thead><tbody><tr style="background-color: #fff3e0;" onmouseover="this.style.backgroundColor='#f0f8ff'" onmouseout="this.style.backgroundColor='#fff3e0'"><td style="padding: 12px; border: 1px solid #e0e0e0;"><a href="/006J9000006M8flIAC" style="color: #1565c0; text-decoration: none; font-weight: 500;">Capital IQ Pro Global Expansion</a></td><td style="padding: 12px; border: 1px solid #e0e0e0; font-weight: 600;">$1,450,000</td><td style="padding: 12px; border: 1px solid #e0e0e0;">Mar 15, 2025</td><td style="padding: 12px; border: 1px solid #e0e0e0;"><span style="background: #ef6c00; color: white; padding: 4px 8px; border-radius: 4px; font-weight: bold;">78</span></td><td style="padding: 12px; border: 1px solid #e0e0e0; color: #ef6c00; font-weight: 500;">Cultural Resistance</td><td style="padding: 12px; border: 1px solid #e0e0e0;">Schedule London office visit within 2 weeks. Identify local champion urgently.</td></tr><tr style="background-color: #fff3e0;" onmouseover="this.style.backgroundColor='#f0f8ff'" onmouseout="this.style.backgroundColor='#fff3e0'"><td style="padding: 12px; border: 1px solid #e0e0e0;"><a href="/006J9000006M8fmIAC" style="color: #1565c0; text-decoration: none; font-weight: 500;">ESG Analytics Platform</a></td><td style="padding: 12px; border: 1px solid #e0e0e0; font-weight: 600;">$975,000</td><td style="padding: 12px; border: 1px solid #e0e0e0;">Apr 30, 2025</td><td style="padding: 12px; border: 1px solid #e0e0e0;"><span style="background: #ef6c00; color: white; padding: 4px 8px; border-radius: 4px; font-weight: bold;">72</span></td><td style="padding: 12px; border: 1px solid #e0e0e0; color: #ef6c00; font-weight: 500;">ROI Justification</td><td style="padding: 12px; border: 1px solid #e0e0e0;">Present comprehensive ROI analysis to CFO within 10 days. Quantify regulatory compliance value.</td></tr><tr style="background-color: #fffde7;" onmouseover="this.style.backgroundColor='#f0f8ff'" onmouseout="this.style.backgroundColor='#fffde7'"><td style="padding: 12px; border: 1px solid #e0e0e0;"><a href="/006J9000006M8fkIAC" style="color: #1565c0; text-decoration: none; font-weight: 500;">Enterprise Data Feed Modernization</a></td><td style="padding: 12px; border: 1px solid #e0e0e0; font-weight: 600;">$2,850,000</td><td style="padding: 12px; border: 1px solid #e0e0e0;">Feb 28, 2025</td><td style="padding: 12px; border: 1px solid #e0e0e0;"><span style="background: #f9a825; color: white; padding: 4px 8px; border-radius: 4px; font-weight: bold;">65</span></td><td style="padding: 12px; border: 1px solid #e0e0e0; color: #f9a825; font-weight: 500;">Budget Approval</td><td style="padding: 12px; border: 1px solid #e0e0e0;">Accelerate legal review. Prepare budget impact analysis for Q1 earnings discussion.</td></tr></tbody></table></div><div style="background: #ffffff; padding: 1.5rem; border-radius: 12px; box-shadow: 0 4px 16px rgba(60,72,88,0.08); margin-bottom: 30px;"><h3 style="color: #1565c0; font-size: 1.4rem; margin-bottom: 1rem;">⚠️ Risk Factor Analysis</h3><table style="width: 100%; border-collapse: collapse;"><thead><tr><th style="background-color: #1565c0; color: white; padding: 12px; text-align: left; border: 1px solid #e0e0e0;">Risk Category</th><th style="background-color: #1565c0; color: white; padding: 12px; text-align: left; border: 1px solid #e0e0e0;">Affected Deals</th><th style="background-color: #1565c0; color: white; padding: 12px; text-align: left; border: 1px solid #e0e0e0;">Risk Level</th><th style="background-color: #1565c0; color: white; padding: 12px; text-align: left; border: 1px solid #e0e0e0;">Early Warning Signs</th><th style="background-color: #1565c0; color: white; padding: 12px; text-align: left; border: 1px solid #e0e0e0;">Mitigation Strategy</th></tr></thead><tbody><tr onmouseover="this.style.backgroundColor='#f0f8ff'" onmouseout="this.style.backgroundColor='#ffffff'"><td style="padding: 12px; border: 1px solid #e0e0e0; font-weight: 500;">Competition</td><td style="padding: 12px; border: 1px solid #e0e0e0;">2</td><td style="padding: 12px; border: 1px solid #e0e0e0;"><span style="background: #ef6c00; color: white; padding: 3px 6px; border-radius: 3px; font-size: 0.85rem;">High</span></td><td style="padding: 12px; border: 1px solid #e0e0e0;">Bloomberg offering 40% discount, strong relationship in London</td><td style="padding: 12px; border: 1px solid #e0e0e0;">Emphasize innovation roadmap, arrange Bloomberg comparison demo</td></tr><tr onmouseover="this.style.backgroundColor='#f0f8ff'" onmouseout="this.style.backgroundColor='#ffffff'"><td style="padding: 12px; border: 1px solid #e0e0e0; font-weight: 500;">Budget</td><td style="padding: 12px; border: 1px solid #e0e0e0;">2</td><td style="padding: 12px; border: 1px solid #e0e0e0;"><span style="background: #ef6c00; color: white; padding: 3px 6px; border-radius: 3px; font-size: 0.85rem;">High</span></td><td style="padding: 12px; border: 1px solid #e0e0e0;">CFO questioning ROI, budget approval pending earnings</td><td style="padding: 12px; border: 1px solid #e0e0e0;">Build compelling business case with quick wins, offer phased approach</td></tr><tr onmouseover="this.style.backgroundColor='#f0f8ff'" onmouseout="this.style.backgroundColor='#ffffff'"><td style="padding: 12px; border: 1px solid #e0e0e0; font-weight: 500;">Champion</td><td style="padding: 12px; border: 1px solid #e0e0e0;">1</td><td style="padding: 12px; border: 1px solid #e0e0e0;"><span style="background: #f9a825; color: white; padding: 3px 6px; border-radius: 3px; font-size: 0.85rem;">Medium</span></td><td style="padding: 12px; border: 1px solid #e0e0e0;">Need stronger local champions in EMEA region</td><td style="padding: 12px; border: 1px solid #e0e0e0;">Identify and develop London-based champion, leverage Hans Gruber influence</td></tr><tr onmouseover="this.style.backgroundColor='#f0f8ff'" onmouseout="this.style.backgroundColor='#ffffff'"><td style="padding: 12px; border: 1px solid #e0e0e0; font-weight: 500;">Timeline</td><td style="padding: 12px; border: 1px solid #e0e0e0;">1</td><td style="padding: 12px; border: 1px solid #e0e0e0;"><span style="background: #f9a825; color: white; padding: 3px 6px; border-radius: 3px; font-size: 0.85rem;">Medium</span></td><td style="padding: 12px; border: 1px solid #e0e0e0;">Q1 earnings announcement could impact budget decisions</td><td style="padding: 12px; border: 1px solid #e0e0e0;">Accelerate legal review, prepare for multiple decision scenarios</td></tr></tbody></table></div><div style="background: #ffffff; padding: 1.5rem; border-radius: 12px; box-shadow: 0 4px 16px rgba(60,72,88,0.08); margin-bottom: 30px;"><h3 style="color: #1565c0; font-size: 1.4rem; margin-bottom: 1rem;">📈 Activity Sentiment Tracker</h3><table style="width: 100%; border-collapse: collapse;"><thead><tr><th style="background-color: #1565c0; color: white; padding: 12px; text-align: left; border: 1px solid #e0e0e0;">Opportunity</th><th style="background-color: #1565c0; color: white; padding: 12px; text-align: left; border: 1px solid #e0e0e0;">Last Activity</th><th style="background-color: #1565c0; color: white; padding: 12px; text-align: left; border: 1px solid #e0e0e0;">Sentiment Trend</th><th style="background-color: #1565c0; color: white; padding: 12px; text-align: left; border: 1px solid #e0e0e0;">Days Since Contact</th><th style="background-color: #1565c0; color: white; padding: 12px; text-align: left; border: 1px solid #e0e0e0;">Urgency Flag</th></tr></thead><tbody><tr onmouseover="this.style.backgroundColor='#f0f8ff'" onmouseout="this.style.backgroundColor='#ffffff'"><td style="padding: 12px; border: 1px solid #e0e0e0;"><a href="/006J9000006M8fkIAC" style="color: #1565c0; text-decoration: none;">Enterprise Data Feed</a></td><td style="padding: 12px; border: 1px solid #e0e0e0;">Nov 25 - Executive Presentation</td><td style="padding: 12px; border: 1px solid #e0e0e0;"><span style="color: #2e7d32; font-weight: 500;">↗ Improving</span></td><td style="padding: 12px; border: 1px solid #e0e0e0;">43</td><td style="padding: 12px; border: 1px solid #e0e0e0;"><span style="background: #f9a825; color: white; padding: 3px 6px; border-radius: 3px; font-size: 0.8rem;">FOLLOW UP OVERDUE</span></td></tr><tr onmouseover="this.style.backgroundColor='#f0f8ff'" onmouseout="this.style.backgroundColor='#ffffff'"><td style="padding: 12px; border: 1px solid #e0e0e0;"><a href="/006J9000006M8flIAC" style="color: #1565c0; text-decoration: none;">Capital IQ Pro Expansion</a></td><td style="padding: 12px; border: 1px solid #e0e0e0;">Dec 1 - EMEA Technical Deep Dive</td><td style="padding: 12px; border: 1px solid #e0e0e0;"><span style="color: #c62828; font-weight: 500;">↘ Declining</span></td><td style="padding: 12px; border: 1px solid #e0e0e0;">36</td><td style="padding: 12px; border: 1px solid #e0e0e0;"><span style="background: #c62828; color: white; padding: 3px 6px; border-radius: 3px; font-size: 0.8rem;">URGENT</span></td></tr><tr onmouseover="this.style.backgroundColor='#f0f8ff'" onmouseout="this.style.backgroundColor='#ffffff'"><td style="padding: 12px; border: 1px solid #e0e0e0;"><a href="/006J9000006M8fmIAC" style="color: #1565c0; text-decoration: none;">ESG Analytics Platform</a></td><td style="padding: 12px; border: 1px solid #e0e0e0;">Dec 15 - Pilot Results Review</td><td style="padding: 12px; border: 1px solid #e0e0e0;"><span style="color: #2e7d32; font-weight: 500;">→ Stable</span></td><td style="padding: 12px; border: 1px solid #e0e0e0;">22</td><td style="padding: 12px; border: 1px solid #e0e0e0;"><span style="background: #2e7d32; color: white; padding: 3px 6px; border-radius: 3px; font-size: 0.8rem;">ON TRACK</span></td></tr></tbody></table></div><div style="background: #ffffff; padding: 1.5rem; border-radius: 12px; box-shadow: 0 4px 16px rgba(60,72,88,0.08); margin-bottom: 30px;"><h3 style="color: #1565c0; font-size: 1.4rem; margin-bottom: 1rem;">🔍 Risk Score Reasoning</h3><div style="margin-bottom: 2rem;"><h4 style="color: #ef6c00; font-size: 1.1rem; margin-bottom: 0.5rem;">Capital IQ Pro Global Expansion - Risk Score: 78/100</h4><div style="font-size: 0.9rem; color: #555; line-height: 1.5; margin-bottom: 0.75rem;">Timeline pressure (22/25): 75 days to close, stalled in Proposal stage for 6 weeks • Champion engagement (14/20): Ellis Robinson engaged but lacks influence in EMEA • Activity sentiment (12/15): Declining trend after skeptical London team response • Competitive pressure (10/10): Bloomberg offering 40% discount with strong relationships • Support cases (0/10): No critical support issues • Stage velocity (20/20): Slow progression from Value Proposition to Proposal stage</div></div><div style="margin-bottom: 2rem;"><h4 style="color: #ef6c00; font-size: 1.1rem; margin-bottom: 0.5rem;">ESG Analytics Platform - Risk Score: 72/100</h4><div style="font-size: 0.9rem; color: #555; line-height: 1.5; margin-bottom: 0.75rem;">Timeline pressure (15/25): 112 days to close, early stage progression normal • Champion engagement (16/20): Maria Santos strong champion but needs CFO buy-in • Activity sentiment (11/15): Stable but cautious after pilot results • Competitive pressure (8/10): MSCI ESG and Sustainalytics competitive but weaker • Support cases (0/10): No support issues identified • Stage velocity (22/20): Good progression through Value Proposition stage</div></div><div style="margin-bottom: 2rem;"><h4 style="color: #f9a825; font-size: 1.1rem; margin-bottom: 0.5rem;">Enterprise Data Feed Modernization - Risk Score: 65/100</h4><div style="font-size: 0.9rem; color: #555; line-height: 1.5; margin-bottom: 0.75rem;">Timeline pressure (20/25): 50 days to close, advanced stage appropriate • Champion engagement (18/20): Theo Nakamura strong champion with executive support • Activity sentiment (13/15): Improving after executive presentation success • Competitive pressure (6/10): Bloomberg and Refinitiv present but not aggressive • Support cases (-2/10): Previous security issues resolved, built trust • Stage velocity (10/20): Extended legal review causing some delay</div></div></div><div style="background: #ffffff; padding: 1.5rem; border-radius: 12px; box-shadow: 0 4px 16px rgba(60,72,88,0.08); margin-bottom: 30px;"><h3 style="color: #1565c0; font-size: 1.4rem; margin-bottom: 1rem;">📋 Detailed Opportunity Analysis</h3><div style="border-left: 4px solid #ef6c00; padding-left: 1rem; margin-bottom: 2rem;"><h4 style="color: #ef6c00; font-size: 1.2rem; margin-bottom: 1rem;">Capital IQ Pro Global Expansion ($1.45M)</h4><div style="display: grid; grid-template-columns: 1fr 1fr; gap: 1.5rem;"><div><div style="font-weight: bold; font-size: 0.9rem; color: #333; margin-bottom: 0.5rem;">Stakeholder Dynamics</div><div style="font-size: 0.85rem; color: #666; line-height: 1.4; margin-bottom: 1rem;">Champion: Ellis Robinson (engaged)<br>Detractor: London trading desk head<br>Decision maker: Regional VP needed<br>Influence gap: Need London-based champion</div><div style="font-weight: bold; font-size: 0.9rem; color: #333; margin-bottom: 0.5rem;">Recent Activity</div><div style="font-size: 0.85rem; color: #666; line-height: 1.4;">Dec 1: EMEA Technical Deep Dive<br>Sentiment: Skeptical<br>36 days since last contact<br>Next: Schedule London visit</div></div><div><div style="font-weight: bold; font-size: 0.9rem; color: #333; margin-bottom: 0.5rem;">Competitive Situation</div><div style="font-size: 0.85rem; color: #666; line-height: 1.4; margin-bottom: 1rem;">Bloomberg: 40% discount offered<br>Strong golf/social relationships<br>20+ years entrenchment<br>FactSet: Secondary threat</div><div style="font-weight: bold; font-size: 0.9rem; color: #333; margin-bottom: 0.5rem;">Mitigation Plan</div><div style="font-size: 0.85rem; color: #666; line-height: 1.4;">1. London office visit within 2 weeks<br>2. Identify local champion urgently<br>3. Innovation roadmap presentation<br>4. Cultural sensitivity training</div></div></div></div><div style="border-left: 4px solid #ef6c00; padding-left: 1rem; margin-bottom: 2rem;"><h4 style="color: #ef6c00; font-size: 1.2rem; margin-bottom: 1rem;">ESG Analytics Platform ($975K)</h4><div style="display: grid; grid-template-columns: 1fr 1fr; gap: 1.5rem;"><div><div style="font-weight: bold; font-size: 0.9rem; color: #333; margin-bottom: 0.5rem;">Stakeholder Dynamics</div><div style="font-size: 0.85rem; color: #666; line-height: 1.4; margin-bottom: 1rem;">Champion: Maria Santos (strong)<br>Detractor: CFO questioning ROI<br>Decision maker: CFO approval needed<br>Status: Pilot results positive</div><div style="font-weight: bold; font-size: 0.9rem; color: #333; margin-bottom: 0.5rem;">Recent Activity</div><div style="font-size: 0.85rem; color: #666; line-height: 1.4;">Dec 15: Pilot Results Review<br>Sentiment: Cautiously optimistic<br>22 days since last contact<br>Next: CFO ROI presentation</div></div><div><div style="font-weight: bold; font-size: 0.9rem; color: #333; margin-bottom: 0.5rem;">Competitive Situation</div><div style="font-size: 0.85rem; color: #666; line-height: 1.4; margin-bottom: 1rem;">MSCI ESG: Market leader<br>Sustainalytics: Strong alternative<br>Regulatory uncertainty creating hesitation<br>First-mover advantage available</div><div style="font-weight: bold; font-size: 0.9rem; color: #333; margin-bottom: 0.5rem;">Mitigation Plan</div><div style="font-size: 0.85rem; color: #666; line-height: 1.4;">1. Comprehensive ROI analysis to CFO<br>2. Regulatory compliance value prop<br>3. Quick win identification<br>4. Pilot success story amplification</div></div></div></div><div style="border-left: 4px solid #f9a825; padding-left: 1rem; margin-bottom: 2rem;"><h4 style="color: #f9a825; font-size: 1.2rem; margin-bottom: 1rem;">Enterprise Data Feed Modernization ($2.85M)</h4><div style="display: grid; grid-template-columns: 1fr 1fr; gap: 1.5rem;"><div><div style="font-weight: bold; font-size: 0.9rem; color: #333; margin-bottom: 0.5rem;">Stakeholder Dynamics</div><div style="font-size: 0.85rem; color: #666; line-height: 1.4; margin-bottom: 1rem;">Champion: Theo Nakamura (very strong)<br>Converted: Karl Vreski (was detractor)<br>Decision maker: Hans Gruber (CRO)<br>Status: Executive support secured</div><div style="font-weight: bold; font-size: 0.9rem; color: #333; margin-bottom: 0.5rem;">Recent Activity</div><div style="font-size: 0.85rem; color: #666; line-height: 1.4;">Nov 25: Executive Presentation<br>Sentiment: Mixed but positive<br>43 days since last contact<br>Next: Legal review completion</div></div><div><div style="font-weight: bold; font-size: 0.9rem; color: #333; margin-bottom: 0.5rem;">Competitive Situation</div><div style="font-size: 0.85rem; color: #666; line-height: 1.4; margin-bottom: 1rem;">Bloomberg: Present but not aggressive<br>Refinitiv: Secondary consideration<br>Vendor consolidation driver<br>5-year TCO advantage proven</div><div style="font-weight: bold; font-size: 0.9rem; color: #333; margin-bottom: 0.5rem;">Mitigation Plan</div><div style="font-size: 0.85rem; color: #666; line-height: 1.4;">1. Accelerate legal review process<br>2. Q1 earnings impact preparation<br>3. Follow-up on procurement progress<br>4. Budget contingency planning</div></div></div></div></div><div style="background: linear-gradient(135deg, #1565c0 0%, #0d47a1 100%); color: white; padding: 2rem; border-radius: 12px; box-shadow: 0 6px 20px rgba(21,101,192,0.3);"><h3 style="color: white; font-size: 1.5rem; margin-bottom: 1rem; text-align: center;">🎯 Critical Actions - Next 7 Days</h3><div style="display: grid; grid-template-columns: repeat(auto-fit, minmax(300px, 1fr)); gap: 20px;"><div style="background: rgba(255,255,255,0.1); padding: 1rem; border-radius: 8px; border-left: 4px solid #ef6c00;"><div style="font-weight: bold; margin-bottom: 0.5rem;">1. Capital IQ Pro - London Visit</div><div style="font-size: 0.9rem; opacity: 0.9;">Schedule face-to-face meeting with EMEA team within 2 weeks. Cultural resistance needs personal attention.</div><div style="font-size: 0.8rem; margin-top: 0.5rem; color: #ffcccb;">⚠ $1.45M at risk</div></div><div style="background: rgba(255,255,255,0.1); padding: 1rem; border-radius: 8px; border-left: 4px solid #f9a825;"><div style="font-weight: bold; margin-bottom: 0.5rem;">2. ESG Platform - ROI Presentation</div><div style="font-size: 0.9rem; opacity: 0.9;">Present comprehensive ROI analysis to CFO within 10 days. Include regulatory compliance value.</div><div style="font-size: 0.8rem; margin-top: 0.5rem; color: #fff3cd;">⚠ $975K at risk</div></div><div style="background: rgba(255,255,255,0.1); padding: 1rem; border-radius: 8px; border-left: 4px solid #2e7d32;"><div style="font-weight: bold; margin-bottom: 0.5rem;">3. Data Feed - Legal Review</div><div style="font-size: 0.9rem; opacity: 0.9;">Accelerate final legal review and prepare for Q1 earnings impact on budget approval.</div><div style="font-size: 0.8rem; margin-top: 0.5rem; color: #d4edda;">✓ On track for close</div></div></div></div></div>