# AI-Code SBOM & DevSecOps Pipeline

A CI/CD pipeline designed to secure the software supply chain in the era of AI-assisted development. As teams rely more on tools like Copilot and Cursor, the risk of introducing hallucinated or vulnerable transitive dependencies increases.

## Architecture Flow

```mermaid
graph TD
    A[Developer PR with AI-Assisted Code] --> B[Checkout & Setup JFrog CLI]
    B --> C[Syft: Generate CycloneDX SBOM]
    C --> D{JFrog Audit against SBOM}
    D -->|Clean| E[Attach SBOM to Build Info]
    D -->|Hallucinated/Vulnerable| F[Fail PR & Alert Security]
    E --> G[Publish Build Info to Artifactory]
```
# The Engineering Challenge
AI coding assistants frequently suggest libraries that are outdated, deprecated, or entirely fabricated (hallucinated packages). Traditional security scans often miss these nuanced supply chain risks until they reach production. This pipeline utilizes Syft and JFrog Advanced Security to generate and audit a full dependency tree on every commit.
