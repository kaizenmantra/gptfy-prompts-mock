# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

## Project Overview

This is a prompt template repository for generating dynamic HTML visualizations from JSON data, specifically designed for MUFG Bank client visits and support cases analysis.

## Repository Structure

```
gptfy-prompts-mock/
├── sample-prompt/
│   ├── Contract-Analysis.md (empty)
│   ├── Pipeline-Analysis.md (empty)
│   └── Visits-Cases.md (detailed prompt template)
└── CLAUDE.md
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
- The main working template is in `sample-prompt/Visits-Cases.md`

## Template Usage

The Visits-Cases.md template processes banking data to create:
- Executive summaries with actionable insights
- Hyperlinked visit/case numbers
- Hover effects and responsive design
- Strict data validation and count accuracy

## Key Constraints

- Never add HTML backticks or markdown formatting to output
- All records must be displayed (no pagination or omission)
- Column widths must be precisely maintained
- Executive summaries must match actual table row counts

## Commit Guidelines

- Never add Claude attribution or "Generated with Claude Code" messages to commits
- Keep commit messages clean and professional without AI tool references