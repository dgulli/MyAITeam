# MyAITeam

A collection of specialized Claude Code subagents for Google Cloud Platform development and infrastructure automation.

## Overview

This repository contains custom Claude Code subagents designed to accelerate GCP development workflows. These agents provide expert guidance and automation for cloud architecture, infrastructure as code, and AI agent development.

## Available Agents

### 🏗️ GCP Cloud Architect (`gcp-cloud-architect`)
Expert GCP cloud architect specializing in the Google Cloud Well-Architected Framework. Provides comprehensive guidance on cloud architecture design, implementation, and optimization across all framework pillars.

**Key Features:**
- Complete coverage of all Well-Architected Framework pillars (Operational Excellence, Security, Reliability, Cost Optimization, Performance)
- Multi-pillar optimization strategies for existing GCP deployments
- Migration planning from on-premises or other clouds to GCP
- Security architecture and compliance alignment
- SRE practices and operational excellence guidance
- AI/ML workload architecture on GCP

**Usage:**
```bash
/agent gcp-cloud-architect
```

### 🔧 GCP Terraform Engineer (`gcp-terraform-engineer`)
Specialized GCP Terraform engineer with deep expertise in the Google and Google-beta providers, Cloud Foundation Fabric modules, and enterprise-scale infrastructure automation.

**Key Features:**
- Deep integration with Cloud Foundation Fabric modules
- Complete coverage of all Fabric module categories (foundational, networking, compute, data, security)
- GCP-specific Terraform patterns (project factory, shared VPC, multi-region deployments)
- State management with GCS backend
- CI/CD integration with Cloud Build
- Cost optimization strategies specific to GCP
- Migration strategies for importing existing infrastructure

**Usage:**
```bash
/agent gcp-terraform-engineer
```

### 🚨 GCP SRE Engineer (`gcp-sre-engineer`)
Expert Google Cloud Platform Site Reliability Engineer specializing in SRE principles, practices, and methodologies using Google's SRE handbook guidance and validated gcloud commands.

**Key Features:**
- Complete implementation of Google's SRE handbook methodologies
- Service Level Objectives (SLO) and Service Level Indicators (SLI) design
- Error budget management and reliability engineering
- Incident response and blameless postmortem processes
- Monitoring, alerting, and observability with Cloud Operations Suite
- Capacity planning and performance optimization
- Automation and toil reduction strategies with validated gcloud commands
- Production readiness reviews and disaster recovery planning

**Usage:**
```bash
/agent gcp-sre-engineer
```

### 🐍 ADK Python Engineer (`adk-python-engineer`)
Expert in Google's Agent Development Kit (ADK) for Python, specializing in building production-ready AI agents with best practices, modular architecture, and enterprise-grade patterns.

**Key Features:**
- Comprehensive ADK framework implementation
- Proper project structure with separated agents, tools, and prompts
- Multi-agent orchestration (sequential, parallel, complex workflows)
- Custom tool development with error handling and rate limiting
- Enhanced memory service with persistence and search
- Complete testing infrastructure with pytest
- Cloud Run deployment configuration
- Full type safety and Python best practices

**Usage:**
```bash
/agent adk-python-engineer
```

### 🐍 GCP Python SDK Engineer (`gcp-python-sdk-engineer`)
Expert in Google Cloud Platform Python Client Libraries, specializing in service integration, authentication patterns, and enterprise-scale Python applications on GCP.

**Key Features:**
- Comprehensive coverage of 14 major GCP Python client libraries
- Service Coverage: Cloud Storage, BigQuery, Pub/Sub, Firestore, Cloud Run Functions, Compute Engine, Cloud Spanner, Cloud Run, Google Kubernetes Engine (GKE), Database Migration Service (DMS), Google Managed Kafka, Cloud SQL with PostgreSQL, AlloyDB, Security Token Service (STS)
- Advanced authentication and credential management patterns
- Asynchronous operations and parallel processing
- Streaming, batch operations, and pagination patterns
- Production-ready error handling and retry strategies
- Performance optimization and monitoring
- Complete testing strategies with mocks and integration tests
- Containerized deployment configurations

**Usage:**
```bash
/agent gcp-python-sdk-engineer
```

### 🟨 GCP Node.js SDK Engineer (`gcp-nodejs-sdk-engineer`)
Expert in Google Cloud Platform Node.js Client Libraries, specializing in service integration, async/await patterns, and enterprise-scale Node.js applications on GCP.

**Key Features:**
- Deep expertise in 14 major GCP Node.js client libraries
- Service Coverage: Cloud Storage, BigQuery, Pub/Sub, Firestore, Cloud Run Functions, Compute Engine, Cloud Spanner, Cloud Run, Google Kubernetes Engine (GKE), Database Migration Service (DMS), Google Managed Kafka, Cloud SQL with PostgreSQL, AlloyDB, Security Token Service (STS)
- Modern async/await and Promise-based patterns
- Authentication and credential management in Node.js
- Stream processing and real-time data handling
- Advanced error handling with circuit breaker patterns
- TypeScript support with strict typing
- Comprehensive testing with Jest and mocking
- Production deployment and monitoring

**Usage:**
```bash
/agent gcp-nodejs-sdk-engineer
```

## Quality Assurance Agents

### 🔍 GCP Jenny (`gcp-jenny`)
Senior GCP Engineering Auditor specializing in implementation verification. Examines actual GCP deployments against specifications to identify gaps, inconsistencies, and missing functionality.

**Key Features:**
- Independent verification using gcloud, kubectl, terraform, and other GCP tools
- Resource deployment validation against architectural specifications
- Security and compliance auditing with evidence-based reporting
- Infrastructure drift detection and remediation guidance
- Cross-service integration validation
- Detailed gap analysis with specific remediation commands

**Usage:**
```bash
/agent gcp-jenny
```

### 🔥 GCP Karen (`gcp-karen`)
No-nonsense GCP Project Reality Manager who cuts through incomplete cloud implementations. Determines what actually works versus what has been claimed in GCP projects.

**Key Features:**
- Reality assessment of claimed GCP completions with extreme skepticism
- Detection of "infrastructure theater" and configuration cargo cult practices
- Validation that cloud services work under realistic production conditions
- Pragmatic planning focused on making infrastructure actually functional
- Load testing and failure scenario validation
- Honest assessment of actual vs claimed functionality

**Usage:**
```bash
/agent gcp-karen
```

### ✅ GCP Task Validator (`gcp-task-validator`)
Senior GCP architect specializing in detecting incomplete, superficial, or fraudulent GCP task completions. Validates that claimed cloud implementations actually work end-to-end.

**Key Features:**
- Rigorous validation of claimed GCP task completions using actual testing
- Detection of stub implementations, hardcoded values, and development shortcuts
- End-to-end functional testing of cloud services and integrations
- Production readiness assessment including load testing and error scenarios
- Security validation to ensure proper authentication and authorization
- APPROVED/REJECTED status with detailed remediation guidance

**Usage:**
```bash
/agent gcp-task-validator
```

### 🎯 GCP Code Quality (`gcp-code-quality`)
Pragmatic GCP code quality reviewer specializing in identifying over-engineered, overly complex cloud solutions. Ensures GCP implementations remain simple and aligned with actual project needs.

**Key Features:**
- Detection of GCP over-engineering and unnecessary complexity
- Cost-complexity analysis for cloud resource optimization  
- Identification of enterprise patterns in MVP projects
- Simplification recommendations for Terraform, Kubernetes, and GCP services
- Developer experience impact assessment
- Concrete before/after examples for reducing cloud complexity

**Usage:**
```bash
/agent gcp-code-quality
```

## Installation

### Quick Install

Run the installation script to copy all agents to your Claude Code agents directory:

```bash
./install-agents.sh
```

### Manual Installation

Copy individual agent files to your Claude Code agents directory:

```bash
cp gcp-cloud-architect.md ~/.claude/agents/
cp gcp-terraform-engineer.md ~/.claude/agents/
cp adk-python-engineer.md ~/.claude/agents/
cp gcp-python-sdk-engineer.md ~/.claude/agents/
cp gcp-nodejs-sdk-engineer.md ~/.claude/agents/
```

## Prerequisites

- Claude Code CLI installed and configured
- Access to Google Cloud Platform (for GCP-specific agents)
- Python 3.8+ (for Python-based agents)
- Node.js 16+ (for Node.js SDK agent)
- Terraform 1.5+ (for Terraform agent)

## How Agents Work Together

These agents are designed to complement each other in complex GCP projects:

1. **Architecture Design**: Start with the GCP Cloud Architect to design your solution following Well-Architected Framework principles
2. **Infrastructure Implementation**: Use the GCP Terraform Engineer to implement the architecture with Infrastructure as Code
3. **Application Development**: Use the GCP Python or Node.js SDK Engineers to build applications that interact with your GCP services
4. **AI Agent Development**: Leverage the ADK Python Engineer to build AI agents that enhance your platform

## Example Workflows

### Full-Stack GCP Application with Quality Assurance
```bash
# 1. Design the architecture
/agent gcp-cloud-architect
"Design a microservices platform with auto-scaling, monitoring, and data analytics"

# 2. Implement infrastructure
/agent gcp-terraform-engineer
"Create Terraform modules for the microservices platform using Fabric modules"

# 3. Verify infrastructure implementation
/agent gcp-jenny
"Verify that the deployed infrastructure matches the architectural specifications"

# 4. Build backend services
/agent gcp-python-sdk-engineer
"Create Python microservices using Cloud Run, Pub/Sub, and BigQuery"

# 5. Validate service implementations
/agent gcp-task-validator
"Validate that the microservices actually work end-to-end with real data"

# 6. Build frontend services
/agent gcp-nodejs-sdk-engineer
"Create Node.js API gateway with authentication and real-time features"

# 7. Reality check the complete system
/agent gcp-karen
"Assess the actual functionality vs claimed completion of the full platform"

# 8. Review for over-engineering
/agent gcp-code-quality
"Review the entire implementation for unnecessary complexity and cost optimization"

# 9. Add AI capabilities
/agent adk-python-engineer
"Build ADK agents for automated monitoring and customer support"
```

### Data Analytics Pipeline with Quality Assurance
```bash
# 1. Design data architecture
/agent gcp-cloud-architect
"Design a real-time data analytics pipeline for IoT data"

# 2. Provision data infrastructure
/agent gcp-terraform-engineer
"Create BigQuery datasets, Pub/Sub topics, and Dataflow jobs"

# 3. Verify infrastructure deployment
/agent gcp-jenny
"Verify BigQuery datasets, Pub/Sub topics are properly configured and accessible"

# 4. Build data processing
/agent gcp-python-sdk-engineer
"Create Python data processing pipelines with streaming and batch operations"

# 5. Validate data pipeline functionality
/agent gcp-task-validator
"Test that data flows end-to-end from ingestion to BigQuery with real IoT data"

# 6. Check for over-engineered data processing
/agent gcp-code-quality
"Review data pipeline complexity - ensure we're not over-engineering ETL processes"

# 7. Build analytics dashboard
/agent gcp-nodejs-sdk-engineer
"Create real-time dashboard with WebSocket connections to BigQuery"

# 8. Reality check the complete pipeline
/agent gcp-karen
"Validate that the data pipeline actually handles production data volumes and provides business value"
```

## Contributing

Feel free to submit issues or pull requests to improve these agents. When contributing:
1. Follow the existing agent structure and format
2. Include comprehensive examples and best practices
3. Ensure agents are well-documented
4. Test agents thoroughly before submitting

## License

MIT License - See LICENSE file for details

## Acknowledgments

- Based on patterns from [awesome-claude-code-subagents](https://github.com/VoltAgent/awesome-claude-code-subagents)
- Built with Google Cloud Platform best practices
- Leverages Google's Agent Development Kit (ADK)
