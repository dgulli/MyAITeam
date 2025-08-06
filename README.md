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

### Full-Stack GCP Application
```bash
# 1. Design the architecture
/agent gcp-cloud-architect
"Design a microservices platform with auto-scaling, monitoring, and data analytics"

# 2. Implement infrastructure
/agent gcp-terraform-engineer
"Create Terraform modules for the microservices platform using Fabric modules"

# 3. Build backend services
/agent gcp-python-sdk-engineer
"Create Python microservices using Cloud Run, Pub/Sub, and BigQuery"

# 4. Build frontend services
/agent gcp-nodejs-sdk-engineer
"Create Node.js API gateway with authentication and real-time features"

# 5. Add AI capabilities
/agent adk-python-engineer
"Build ADK agents for automated monitoring and customer support"
```

### Data Analytics Pipeline
```bash
# 1. Design data architecture
/agent gcp-cloud-architect
"Design a real-time data analytics pipeline for IoT data"

# 2. Provision data infrastructure
/agent gcp-terraform-engineer
"Create BigQuery datasets, Pub/Sub topics, and Dataflow jobs"

# 3. Build data processing
/agent gcp-python-sdk-engineer
"Create Python data processing pipelines with streaming and batch operations"

# 4. Build analytics dashboard
/agent gcp-nodejs-sdk-engineer
"Create real-time dashboard with WebSocket connections to BigQuery"
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
