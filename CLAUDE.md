# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

## Project Overview

This is a prompt template repository for generating dynamic HTML visualizations from JSON data using GPTfy prompt system. Templates create comprehensive dashboards for sales intelligence, client analysis, and business insights.

## Repository Structure

```
gptfy-prompts-mock/
├── sample-prompt/
│   ├── Contract-Analysis.md (contract dashboard prompt)
│   ├── Pipeline-Analysis.md (sales pipeline prompt)  
│   └── Visits-Cases.md (client visits & cases prompt)
├── prompts-new/
│   └── Deal-Risk-Intelligence.md (sales risk dashboard prompt)
├── testbed/
│   └── *.html (generated HTML test outputs)
├── docs/
│   └── tasklist.md (development task tracking)
└── CLAUDE.md (this file)
```

## Core Architecture

This repository contains prompt engineering templates that generate inline HTML tables with the following characteristics:

### Data Processing Pattern
- Input: JSON data containing client visits (`Visits__r` array) and support cases (`Cases` array)
- Output: Clean, responsive HTML with embedded CSS (no external dependencies)
- Processing: Dynamic field extraction with truncation and formatting rules

### HTML Generation Requirements
- **No build tools required** - outputs pure HTML strings
- **Inline styling only** - all CSS must be inline, no external classes
- **Responsive card-based layout** with specific styling:
  - White cards with `#ffffff` background
  - Border radius: 12px
  - Box shadow: `0 4px 16px rgba(60,72,88,0.08)`
  - Font family: system-ui, Montserrat

### Data Visualization Rules
1. **Client Visits Table**: 7 columns with specific width percentages and data truncation
2. **Support Cases Table**: 8 columns with hyperlinked case numbers
3. **Executive Summaries**: Must be based strictly on visible table data, no assumptions
4. **Field Handling**: "N/A" for empty/null values, specific date formatting (MMM D, YYYY)

## Development Notes

- This is a **prompt template repository**, not a software project
- No package.json, build scripts, or dependencies
- Files are meant to be copied and used as AI prompts
- Each template contains complete instructions and HTML structure examples

## Common Development Tasks

Since this is a prompt template repository, development tasks focus on:

### Template Editing
- Edit .md files in `sample-prompt/` directory using any text editor
- No compilation or build process required
- Templates are self-contained with embedded HTML examples

### Testing Templates
- Copy template content to AI system for testing with sample JSON data
- Verify HTML output renders correctly in browser
- Check that all data fields are properly mapped and formatted

### Version Control
- Use git for tracking template changes
- No special build or deployment workflows needed

## Template Usage

### Visits-Cases.md Template
Processes banking client relationship data to create:
- Client Visits table (7 columns with specific width percentages)
- Support Cases table (8 columns with hyperlinked case numbers)
- Executive summaries with actionable insights
- Hover effects and responsive design
- Strict data validation and count accuracy

### Contract-Analysis.md Template
Generates contract dashboard with:
- 4 metric cards showing calculated account values
- Account-level summary box with agreement statistics  
- Detailed agreements table with product information as clickable links
- Color-coded agreement types (OF&L=red, PS=green)
- Filters to show only PS and OF&L agreement types

### Pipeline-Analysis.md Template
Creates sales pipeline visualization with:
- Opportunity table with 8 columns including ACV and close dates
- Currency formatting with proper comma separation
- Executive summary based on pipeline value and stage analysis
- Responsive card-based layout with hover effects

## GPTfy Field Mapping Rules

### Critical Field Reference Rules for GPTfy Prompt System

When creating prompts for GPTfy, field references using `{{{field.name}}}` syntax must follow these exact patterns:

#### Parent Object Fields (Account)
- **CORRECT**: `{{{Name}}}` - for Account Name
- **CORRECT**: `{{{Industry}}}` - for Account Industry  
- **CORRECT**: `{{{AnnualRevenue}}}` - for Account Annual Revenue
- **CORRECT**: `{{{Client_Segment__c}}}` - for Account custom fields
- **WRONG**: `{{{Account.Name}}}` - DO NOT prefix parent object fields

#### Child Object Fields (Opportunities, Cases, etc.)
- **CORRECT**: `{{{Opportunities.Name}}}` - for Opportunity Name
- **CORRECT**: `{{{Opportunities.Id}}}` - for Opportunity ID
- **CORRECT**: `{{{Opportunities.CloseDate}}}` - for Opportunity Close Date
- **CORRECT**: `{{{Opportunities.StageName}}}` - for Opportunity Stage
- **CORRECT**: `{{{Opportunities.Amount}}}` - for Opportunity Amount

#### Related Objects with Relationship Names
- **CORRECT**: `{{{ActivityHistories.ActivityDate}}}` - for Activity Date
- **CORRECT**: `{{{ActivityHistories.Subject}}}` - for Activity Subject
- **CORRECT**: `{{{ActivityHistories.SalesLoft1__Call_Sentiment__c}}}` - for custom fields
- **CORRECT**: `{{{AccountCreatedCases__r.Subject}}}` - for related Cases via relationship
- **CORRECT**: `{{{AccountCreatedCases__r.CreatedDate}}}` - for Case created date

#### Salesforce API Field Name Mapping
GPTfy validates field names against actual Salesforce API names. Always use:
- `CloseDate` (not `Close_Date`)
- `CreatedDate` (not `Created_Date`) 
- `StageName` (not `Stage`)
- `ActivityHistories` (not `Activities`)
- Custom fields with `__c` suffix: `Client_Segment__c`, `Impact__c`
- Relationship names with `__r` suffix: `AccountCreatedCases__r`

#### Field Validation Requirements
1. **Parent Object**: No object prefix required - use field API name directly
2. **Child Objects**: Always include object/relationship prefix
3. **Custom Fields**: Include `__c` suffix for custom fields
4. **Relationship Fields**: Use exact relationship API name (e.g., `AccountCreatedCases__r`)
5. **Case Sensitivity**: Match exact Salesforce API field names
6. **Multi-Select Fields**: Reference as single field (e.g., `Competitors__c`)

## Key Constraints

### Universal Requirements
- Never add HTML backticks or markdown formatting to output
- All records must be displayed (no pagination or omission)
- Column widths must be precisely maintained
- Executive summaries must match actual table row counts
- No build tools required - outputs pure HTML strings
- Inline styling only - all CSS must be inline, no external classes

### Data Processing Rules
- Use "N/A" for empty/null values
- Date formatting: MMM D, YYYY (e.g., "Jan 1, 2000")
- Currency formatting: $X,XXX,XXX.XX format with proper commas
- Text truncation limits per template specifications
- Hyperlinks must open in new tabs (target="_blank")

### Template-Specific Constraints
- **Contract Analysis**: Filter agreements to show only PS and OF&L types
- **Pipeline Analysis**: Show all opportunities without filtering
- **Visits-Cases**: Process both Visits__r and Cases arrays completely

## GPTfy Prompt Development Guidelines

### Creating New Prompts
1. **Start with GPTfy 4-Section Format**:
   - **Prompt Command**: The AI instructions and field mappings
   - **Description**: ≤255 characters describing what the prompt does
   - **How it Works**: Formatted explanation without colors
   - **Input Data**: Sample JSON with correct Salesforce field structure
   - **Expected Output**: Example HTML output

2. **Field Mapping Validation**:
   - Use exact Salesforce API field names from your org mapping
   - Parent object fields: no prefix (e.g., `{{{Name}}}`)
   - Child object fields: include prefix (e.g., `{{{Opportunities.Amount}}}`)
   - Test all field references before finalizing prompt

3. **HTML Output Requirements**:
   - No backticks, markdown, or code blocks in output
   - All CSS must be inline - no external classes
   - Professional styling with consistent color schemes
   - Responsive design for various screen sizes

### Testing Prompts
1. **Field Validation**: Ensure all `{{{field.name}}}` references are correct
2. **Sample Data**: Use realistic Salesforce JSON structure
3. **HTML Output**: Verify generated HTML renders properly
4. **Data Completeness**: Check that all records are displayed

### Common Pitfalls to Avoid
- Using `Account.FieldName` for parent object (use `FieldName` directly)
- Incorrect relationship names (use exact Salesforce API names)
- Missing `__c` suffix for custom fields
- Using generic field names instead of actual Salesforce API names
- Adding object prefixes where not needed

## Commit Guidelines

- Never add Claude attribution or "Generated with Claude Code" messages to commits
- Keep commit messages clean and professional without AI tool references
- Follow conventional commit format: `feat: add new prompt` or `fix: correct field mapping`