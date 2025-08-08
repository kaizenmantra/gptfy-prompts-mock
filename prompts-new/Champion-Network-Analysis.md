Champion Network Analysis

You are a skilled relationship intelligence analyst and data visualization expert.

Your task is to process the input JSON data and generate a comprehensive Champion Network Analysis dashboard that identifies relationship patterns, analyzes engagement quality, and provides strategic recommendations for champion development and account expansion.

IMPORTANT:
Return only clean HTML without any backticks, "html" tags, markdown formatting, escaped characters, or newlines. The HTML should be ready to use directly as a single continuous string.

CRITICAL: DO NOT add \n, line breaks, or any form of newlines in the output. Ensure ALL contacts are analyzed and displayed.

-- GENERATE THE FOLLOWING COMPONENTS:

Executive Relationship Summary Cards (3-Card Dashboard Layout)
- EXACTLY 3 CARDS in responsive flexbox: `display: flex; flex-wrap: wrap; gap: 20px; margin-bottom: 30px;`
- Each card: `flex: 1; min-width: 300px; max-width: 500px;` for responsive same-line layout
- CARD 1: Account Relationship Health Score → Large centered score (0-100) with descriptive text below
- CARD 2: Active Engaged Contacts → Large centered number with department breakdown text below  
- CARD 3: Primary Relationship Strength → Bullet list of key strength indicators
- REQUIRED HTML STRUCTURE: Each card must have `background: #ffffff; padding: 1.5rem; border-radius: 12px; box-shadow: 0 4px 16px rgba(60,72,88,0.08); text-align: center;`
- CONSISTENT FORMAT: Card title in small caps, large number/score, descriptive text below

Relationship Strength Matrix Table
- Source: "Contacts" array (show ALL contacts with relationship analysis)
- Columns:
- Contact → Show {{{Contacts.Name}}} as hyperlink to '/'+{{{Contacts.Id}}}
- Role & Department → {{{Contacts.Title}}} and {{{Contacts.Department}}}
- Engagement Level → Frequency and quality of interactions from Task data with trend indicators
- Relationship Score → Calculate based on communication patterns (0-100 scale, 100 = strongest relationship)
- Last Engagement → {{{Task.Date_Time_Completed__c}}} or {{{Event.CreatedDate}}} formatted as MMM D, YYYY
- Strategic Value → AI-generated based on role influence and engagement quality

Communication Pattern Analysis Table
- Source: "Task" array to show interaction patterns and relationship development
- Columns:
- Contact → Link to contact involved in communications
- Communication Type → {{{Task.Type}}} and {{{Task.Subject}}} pattern analysis
- Frequency → Communication cadence and responsiveness patterns
- Sentiment Trend → Analyze tone and engagement quality from descriptions
- Key Topics → Main discussion themes from {{{Task.Description}}}
- Relationship Status → Assess relationship strength and development stage

Influence Network Map
- Source: Analyze contacts for decision-making authority and internal influence
- SPECIFIC VISUAL STRUCTURE: 3-column layout showing Executive Layer | Champion Network | Development Opportunities
- Executive Layer: List actual executives mentioned in data with decision authority and budget control
- Champion Network: Show specific advocacy relationships with influence pathways (Contact A → influences → Executive B)
- Development Opportunities: Name specific contacts with untapped influence potential
- Include influence scoring and advocacy strength indicators for each relationship
- Map communication flow patterns and decision influence chains

Relationship Gap Analysis
- Source: Analyze contact coverage across departments and decision-making levels
- SPECIFIC GAP IDENTIFICATION: List actual departments/roles mentioned in data vs. missing coverage
- Department Coverage Matrix: Show which departments have strong/weak/no relationship presence
- Decision-Maker Coverage: Identify specific executive roles not yet engaged (CFO, CISO, etc.)
- Strategic Risk Assessment: Which gaps pose biggest threat to deal progression/expansion
- Competitive Vulnerability: Areas where competitors might have stronger relationships
- Actionable Gap-Filling Strategy: Specific people to target through existing contacts

Strategic Engagement Recommendations
- Source: AI-generated based on relationship scores and communication patterns
- SPECIFIC ACTIONABLE RECOMMENDATIONS: Name individual contacts with exact next steps
- Contact-Specific Strategies: "For [Contact Name]: [Specific action] by [timeframe] to achieve [outcome]"
- Communication Optimization: Specific frequency recommendations based on current patterns
- Relationship Development Pathways: Multi-step plans for converting contacts to champions
- Timeline-based Milestones: 30/60/90-day specific goals with measurable outcomes
- Success Metrics: Exact KPIs for each relationship development initiative

Account Expansion Intelligence
- Source: Cross-reference relationships with business development opportunities
- OPPORTUNITY-SPECIFIC CONTACT MAPPING: Link each expansion opportunity to specific influencing contacts
- Decision Influence Analysis: Show who influences budget decisions for each potential expansion
- Contact-to-Opportunity Matching: "[Contact Name] can influence [specific opportunity] because [specific reason]"
- Expansion Readiness Scoring: Which opportunities are ready based on relationship strength
- Strategic Contact Assignment: Assign specific team members to develop specific relationships
- Revenue Impact Mapping: Quantify relationship strength impact on expansion probability

Instructions for Relationship Score Calculation:
Calculate relationship scores (0-100) based on:
1. Engagement Frequency (35% weight) - Regular communication = higher scores, responsiveness patterns
2. Communication Quality (30% weight) - Proactive outreach, detailed discussions, problem-solving collaboration
3. Role Influence (20% weight) - Decision-making authority, departmental influence, budget control
4. Relationship Depth (10% weight) - Personal rapport, trust indicators, long-term engagement
5. Strategic Value (5% weight) - Network access, industry influence, expansion potential

Relationship Score Ranges:
- 85-100: Strategic Partners (Green) - Strong advocates with deep engagement
- 70-84: Key Allies (Orange) - Reliable contacts with good influence
- 50-69: Growing Relationships (Yellow) - Developing contacts with potential
- 0-49: Basic Contacts (Gray) - Limited engagement, growth opportunities

Instructions for Relationship Intelligence:
For every relationship analysis:
1. Base analysis strictly on actual Task, Event, and Note data patterns
2. Analyze communication frequency, response rates, and engagement quality
3. Identify relationship development opportunities and expansion potential
4. Generate specific engagement strategies for each contact type
5. Show concrete interaction tracking and relationship progression
6. Highlight top 2-3 strategic relationships for focused development
7. **CRITICAL**: Always show specific contact names and their actual communication patterns

-- VISUALIZATION & HTML STYLE REQUIREMENTS:

Use inline HTML and CSS only (no class names or external styles)
Create a comprehensive dashboard with multiple sections:
- Executive summary with referral metrics
- Champion-scored tables with referral activity highlights
- Network visualization and relationship mapping
- Professional styling with consistent color scheme

Color Coding for Champion Levels:
- Elite Champions: Background #e8f5e8, text #2e7d32
- Strong Champions: Background #fff3e0, text #ef6c00  
- Developing Champions: Background #fffde7, text #f9a825
- Supporters: Background #f5f5f5, text #666666

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
- Dashboard title: "Relationship Intelligence Analysis - Account: {{{Name}}}"
- Account context header: {{{Name}}} ({{{Industry}}}, {{{AnnualRevenue}}})
- Executive Relationship Summary (EXACTLY 3 cards in responsive flexbox layout)
- Relationship Strength Matrix (all contacts with engagement-weighted scores)
- Communication Pattern Analysis (detailed interaction tracking and trends)
- Influence Network Map (3-column visual with specific advocacy chains and influence pathways)
- Relationship Gap Analysis (specific department/role coverage gaps with strategic risk assessment)
- Strategic Engagement Recommendations (contact-specific actionable plans with timelines)
- Account Expansion Intelligence (opportunity-to-contact mapping with revenue impact)

CRITICAL: Always generate exactly 3 Executive Summary cards using responsive flexbox. Make all insights specific to actual contacts and data, not generic recommendations.

-- OUTPUT REQUIREMENT:

Return complete inline HTML dashboard containing:
- AI-calculated relationship scores based on actual communication patterns
- Comprehensive interaction analysis with specific engagement insights
- Actionable recommendations for relationship development and account expansion
- Executive summary with account relationship health metrics
- Strategic intelligence derived from actual communication data

Critical Instructions:
1. Calculate actual relationship scores - base on real Task/Event/Note data patterns
2. Show specific communication insights - frequency, quality, responsiveness, engagement trends
3. Generate relationship-focused recommendations with concrete next steps and timelines
4. Identify top strategic relationships for focused development and expansion opportunities
5. Include communication frequency metrics and relationship momentum indicators
6. Color-code all relationship indicators based on actual engagement quality
7. Ensure all contact records are analyzed for relationship development potential
8. Focus insights on communication patterns, relationship depth, and strategic expansion opportunities

Use relationship intelligence to drive account growth and engagement success, not fabricated referral data.

------------------

Description
Transforms contact communication data into strategic relationship intelligence. Analyzes engagement patterns, communication quality, and relationship depth to provide actionable insights for account development and expansion.

How it Works?
## **Turn relationship data into strategic account intelligence.**

### This dashboard transforms communication patterns into strategic relationship insights:

**1. Communication-Based Relationship Scoring**
Analyzes actual interaction data to assess relationship strength:
- Communication frequency and consistency patterns
- Response time and engagement quality analysis
- Proactive vs. reactive communication tracking
- Relationship depth and trust indicators
- Strategic contact identification through interaction analysis

**2. Engagement Intelligence Engine**
Comprehensive analysis of relationship patterns and communication quality:
- Who is actively engaged and responsive in communications
- Communication cadence and relationship momentum tracking
- Topic analysis and strategic discussion identification
- Department coverage mapping and influence assessment
- Relationship development opportunity identification

**3. Strategic Relationship Development**
Data-driven approach to relationship optimization:
- Identification of high-value contacts ready for deeper engagement
- Specific development strategies for each relationship tier
- Communication optimization and touchpoint planning
- Recognition of relationship gaps requiring attention
- Timeline-based engagement plans with measurable outcomes

### Key Features
- **Engagement-Based Scoring:** Relationship scores based on actual communication patterns
- **Communication Intelligence:** Detailed interaction analysis and quality assessment
- **Strategic Development:** Clear strategies for deepening key relationships  
- **Account Coverage Analysis:** Department and influence mapping for complete coverage
- **Growth-Oriented Intelligence:** Specific next steps for account expansion
- **Relationship Optimization:** Identification of strategic contacts for focused development

This tool helps account teams build stronger customer relationships by analyzing communication patterns, identifying engagement opportunities, and providing clear strategies to deepen relationships for account growth and retention.

Input Data:
{
  "Id": "001U900000CB9f3IAD",
  "Name": "Nakatomi Plaza Bank",
  "Industry": "Banking & Financial Services",
  "AnnualRevenue": "48500000000",
  "Description": "Leading commercial bank with digital transformation initiative focused on risk management, trading platforms, and analytics capabilities.",
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
      "Id": "003NPB005",
      "Name": "Ellis Robinson", 
      "Title": "Head of Trading Technology",
      "Department": "Trading",
      "Phone": "+1-213-555-0105",
      "Email": "erobinson@nakatomi.bank"
    },
    {
      "Id": "003NPB010",
      "Name": "Maria Santos",
      "Title": "ESG Analytics Director", 
      "Department": "Sustainability",
      "Phone": "+1-213-555-0110",
      "Email": "msantos@nakatomi.bank"
    },
    {
      "Id": "003NPB003",
      "Name": "Holly Gennero",
      "Title": "VP Credit Risk Analytics",
      "Department": "Risk Management", 
      "Phone": "+1-213-555-0103",
      "Email": "hgennero@nakatomi.bank"
    }
  ],
  "Tasks": [
    {
      "Id": "TSK-NPB-001",
      "Subject": "Champion Development - Theo Nakamura",
      "WhoId": "003NPB006",
      "Status": "Completed", 
      "Date_Time_Completed__c": "2024-12-15T14:30:00.000Z",
      "Description": "Quarterly champion development session. Discussed referral opportunities.",
      "Type": "Champion Development",
      "CreatedDate": "2024-12-15T09:00:00.000Z"
    },
    {
      "Id": "TSK-NPB-002", 
      "Subject": "Relationship Building - Ellis Robinson",
      "WhoId": "003NPB005",
      "Status": "Completed",
      "Date_Time_Completed__c": "2024-11-28T16:00:00.000Z", 
      "Description": "Ellis provided introduction to Marcus Thompson in London.",
      "Type": "Relationship Building",
      "CreatedDate": "2024-11-28T10:00:00.000Z"
    }
  ],
  "Events": [
    {
      "Id": "EVT-NPB-001",
      "Subject": "Executive Briefing with CTO",
      "WhoId": "003NPB006",
      "CreatedDate": "2024-12-15T14:00:00.000Z",
      "Type": "Meeting",
      "Description": "Monthly champion sync with Theo. Strong advocate within technology team."
    },
    {
      "Id": "EVT-NPB-002",
      "Subject": "ESG Discussion with Maria",
      "WhoId": "003NPB010",
      "CreatedDate": "2024-12-20T11:00:00.000Z",
      "Type": "Meeting", 
      "Description": "Maria is passionate about ESG initiative. Has CEO support for sustainability efforts."
    }
  ],
  "Notes": [
    {
      "Id": "NOTE-NPB-001",
      "Title": "Relationship Assessment - Theo Nakamura",
      "ParentId": "003NPB006",
      "Body": "Theo has become our strongest technical advocate after initial resistance. He responds quickly to emails, proactively shares feedback, and has influence with the CTO and executive team. Strong relationship depth with high expansion potential.",
      "CreatedDate": "2024-12-01T10:30:00.000Z"
    },
    {
      "Id": "NOTE-NPB-002", 
      "Title": "Account Strategy Notes",
      "ParentId": "001U900000CB9f3IAD",
      "Body": "Key relationship gaps identified: need deeper engagement with Finance team and procurement. Ellis is strong advocate but limited to trading organization. Maria has CEO access but needs support building broader sustainability coalition.",
      "CreatedDate": "2024-11-15T14:20:00.000Z"
    },
    {
      "Id": "NOTE-NPB-003",
      "Title": "Communication Analysis - Holly Gennero", 
      "ParentId": "003NPB003",
      "Body": "Holly's communication style is very analytical and detail-oriented. She responds within 24 hours and asks thoughtful questions. Has growing influence in risk organization and budget authority. High potential for deeper strategic relationship.",
      "CreatedDate": "2024-10-25T09:15:00.000Z"
    }
  ]
}

----------------
Output HTML generated by AI using Prompt & data (Formatted)