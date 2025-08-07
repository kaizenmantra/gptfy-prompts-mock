Salesforce Data Import Guide - Nakatomi Plaza Bank
Overview
This dataset contains comprehensive B2B sales data for Nakatomi Plaza Bank, designed for training sales teams on complex enterprise account management. The data includes realistic scenarios with champions, detractors, competitive situations, and typical enterprise sales challenges.
Import Order (IMPORTANT - Follow this sequence)
Account.csv - Import first (foundation record)
Contacts.csv - Import second (linked to Account)
Opportunities.csv - Import third (linked to Account and Contacts)
Products.csv - Import fourth (product catalog)
Contracts.csv - Import fifth (linked to Account)
Activities.csv - Import sixth (linked to Opportunities/Contacts)
Cases.csv - Import seventh (support history)
Referrals.csv - Import eighth (linked to Contacts)
OpportunityContactRoles.csv - Import ninth (links Contacts to Opportunities)
CampaignMembers.csv - Import tenth (marketing engagement)
Notes.csv - Import last (intelligence and history)
File Descriptions
Account.csv
Single strategic account record for Nakatomi Plaza Bank
$48.5B revenue, 85,000 employees
Contains all company information and hierarchy
Contacts.csv (12 records)
Key stakeholders from C-suite to end users
Includes champions, detractors, and influencers
Each contact has detailed role and influence information
Opportunities.csv (6 records)
$10.7M total pipeline
Various stages from Qualification to Closed Won
Mix of new business, renewals, and upsells
Realistic win rates and challenges
Activities.csv (20 records)
Detailed sales activities and customer interactions
Shows progression of deals through sales cycle
Includes objections, responses, and outcomes
Cases.csv (10 records)
Technical support and feature requests
Shows customer service relationship
Mix of resolved and open issues
Products.csv (20 records)
Complete S&P Global product catalog
Realistic enterprise pricing
Various product families
Contracts.csv (10 records)
Active subscriptions and agreements
Shows contract history and terms
Includes pilots and implementations
Referrals.csv (8 records)
Internal referrals to other divisions
Shows account expansion opportunities
Various stages of qualification
OpportunityContactRoles.csv (15 records)
Maps stakeholders to specific opportunities
Shows influence and decision-making roles
Critical for understanding political dynamics
CampaignMembers.csv (12 records)
Marketing engagement history
Event attendance and webinar participation
Shows contact engagement levels
Notes.csv (12 records)
Critical account intelligence
Competitive information
Relationship dynamics and strategy
Data Relationships
Account (1)
    ├── Contacts (12)
    │   ├── Activities
    │   ├── OpportunityContactRoles
    │   ├── Referrals
    │   └── CampaignMembers
    ├── Opportunities (6)
    │   ├── Activities
    │   └── OpportunityContactRoles
    ├── Cases (10)
    ├── Contracts (10)
    └── Notes (12)

Import Instructions
Using Salesforce Data Import Wizard:
Navigate to Setup → Data → Data Import Wizard
Select Standard Objects → Accounts and Contacts
Choose "Add new records" for initial import
Map Fields Carefully:
Use "Account ID" field to maintain relationships
Map "Contact ID" for contact relationships
Map "Opportunity ID" for opportunity relationships
Using Data Loader (Recommended for larger datasets):
Install Salesforce Data Loader
Login with your credentials
Select Insert operation
Choose your CSV file
Create Field Mapping:
Auto-match where possible
Manually map custom fields
Save mapping for reuse
Field Mapping Tips:
Account ID (ACC-NPB-001) → External ID field
Contact ID (CON-NPB-XXX) → External ID field
Opportunity ID (OPP-NPB-XXX) → External ID field
Use these IDs to maintain relationships between objects
Key Features of This Dataset
Realistic Sales Dynamics:
Champions: Holly McClane (Credit Risk), Ellis Robinson (Trading)
Executive Sponsors: Hans Gruber (CRO) with budget authority
Detractors: Karl Vreski (Security), London Trading Head
Neutral Players: CFO, requiring ROI justification
Competitive Situations:
Bloomberg defending 60% wallet share
Moody's being displaced
Success-based pricing strategies
Common Challenges:
Budget constraints due to missed earnings
Security and compliance requirements
Change resistance in London office
Integration complexity concerns
Political Dynamics:
Hans Gruber has CEO's ear
London operates independently
Procurement aggressive on pricing
Bottom-up adoption strategies
Training Scenarios Enabled
Navigating Complex Stakeholders


Identifying and developing champions
Converting skeptics (Theo's journey)
Managing detractors (Karl's security concerns)
Competitive Displacement


Bloomberg retention tactics
Moody's displacement strategy
Differentiation messaging
Enterprise Sales Process


Building business cases with ROI
Managing security reviews
Handling procurement negotiations
Account Expansion


Cross-selling into new divisions
Leveraging success stories
Internal referral development
Risk Management


Budget freeze scenarios
Competitive threats
Adoption challenges
Success Metrics in Dataset
Adoption: 95% US, 45% EMEA
ROI Documented: $8.5M value delivered
Productivity Gains: 22% improvement
NPS Score: 72 (Promoter status)
Contract Value: $12.5M annual
Best Practices for Use
Role-Playing Exercises


Practice stakeholder conversations
Handle objections from the dataset
Navigate political dynamics
Deal Strategy Sessions


Analyze opportunity progression
Identify risks and mitigation
Develop competitive strategies
Account Planning


Map relationships and influence
Identify expansion opportunities
Build champion network
AI Training


Feed into ML models for pattern recognition
Train on objection handling
Develop ideal customer profiles
Notes on Data Quality
All data is anonymized and fictional
Email addresses use @nakatomibank.com domain
Phone numbers use (310) 555-XXXX format
Dates span 2024-2025 for recency
Dollar amounts reflect enterprise software pricing
Support
For questions about this dataset:
Review the Notes.csv file for context
Check relationship mappings in OpportunityContactRoles
Reference Activities.csv for deal progression
This dataset provides a complete view of managing a strategic enterprise account through multiple complex sales cycles, making it ideal for comprehensive sales training and AI model development.

