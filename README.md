# Enterprise AI DevSecOps Ecosystem

**Project Genesis (2023 - Present):** This repository was established three years ago as a centralized automation sandbox for CI/CD pipeline development and container orchestration. As enterprise requirements evolved from basic system administration to zero-trust architecture, this platform evolved with it. 

Today, it serves as a comprehensive DevSecOps Control Plane, specifically engineered to tackle the unique security challenges introduced by Large Language Models (LLMs) and AI-assisted coding. It integrates advanced JFrog SaaS capabilities, Kubernetes policy enforcement, and multi-architecture Docker build strategies into a single unified ecosystem.

## Sub-Projects
1. **[Multi-Arch Build Engine](./multiarch-build-engine):** QEMU & Buildx architecture eliminating dedicated ARM64 runners.
2. **[AI SBOM Pipeline](./ai-sbom-pipeline):** Transitive dependency scanning for AI-hallucinated packages.
3. **[IaC Policy Guardian](./iac-policy-guardian):** Open Policy Agent (OPA) rules targeting AI-generated Terraform misconfigurations.
4. **[Supply Chain Attestor](./supply-chain-attestor):** SLSA compliance and keyless container signing.
