# Production Incident Troubleshooting Lab

A hands-on application-support portfolio demonstrating incident investigation, log analysis, SQL-based troubleshooting, dependency failure analysis, and root-cause analysis (RCA).

**Environment:** Simulated incidents and sample data
**Focus:** Application Support · Production Support · L1/L2 Troubleshooting

## Overview

This project demonstrates a structured approach to investigating application incidents: establish the reported impact, collect evidence, trace the failure, distinguish confirmed findings from hypotheses, and document escalation and follow-up actions.

All incidents, logs, metrics, and service details in this repository are simulated for learning and portfolio demonstration. They are not production telemetry or evidence of professional production experience.

## Incident Case Studies

| Incident | Scenario | Investigation focus | Finding |
|---|---|---|---|
| [INC-2026-001](incidents/INC-2026-001/ticket.md) | Monthly reports fail to generate | Application logs and database connectivity | Repeated database connection timeouts; underlying cause not established |
| [INC-2026-002](incidents/INC-2026-002/investigation.md) | Payment succeeds but order remains pending | SQL joins and payment/order state comparison | Payment and order amounts match, but their recorded statuses differ; underlying cause not established |
| [INC-2026-006](incidents/INC-2026-006/incident.md) | Checkout failures across dependent services | Metrics, logs, TLS errors, dependency tracing and RCA | Expired TLS certificate confirmed as the technical failure; underlying renewal/deployment process cause not established |

## Skills Demonstrated

- Incident intake, symptom identification, impact assessment, and prioritization
- Evidence-based investigation using application logs and monitoring metrics
- SQL queries, joins, and relational data analysis
- Troubleshooting across application, database, and service dependencies
- HTTP error interpretation and downstream failure tracing
- Root-cause analysis, escalation, and recovery verification planning
- Separating confirmed findings from hypotheses and unknowns

## Repository Structure

```text
.
├── database/
│   ├── README.md
│   ├── schema.sql
│   ├── seed.sql
│   └── queries.sql
├── evidence/
│   └── INC-2026-001-application.log
├── incidents/
│   ├── INC-2026-001/
│   ├── INC-2026-002/
│   └── INC-2026-006/
├── rca/
│   └── INC-2026-006-rca.md
└── README.md
```

## How to Explore

1. Start with an incident ticket or scenario to understand the reported symptoms and impact.
2. Read the investigation report to follow the evidence and reasoning.
3. Inspect the sample application log for INC-2026-001.
4. Explore the SQL schema, seed data, and investigation queries in [database/](database/README.md).
5. Review the detailed RCA for INC-2026-006, including technical findings, uncertainty, mitigation recommendations, and preventive actions.

## Investigation Principles

- Start with observable symptoms and business impact.
- Use timestamps, logs, metrics, and database records to guide investigation.
- Trace failures across service boundaries rather than assuming the first visible error is the root cause.
- State what the evidence confirms and what still needs investigation.
- Verify end-to-end recovery before declaring an incident resolved.

## Limitations

These are simulated case studies, not live monitoring integrations or production incident records. The repository documents investigation and proposed recovery steps; it does not demonstrate that production recovery actions were executed.

## Author's Note

This portfolio was built to demonstrate practical troubleshooting and incident-analysis skills relevant to entry-level Application Support and Production Support roles.
