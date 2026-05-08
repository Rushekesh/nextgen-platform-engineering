# Container Supply Chain Attestor

SLSA Level 3 compliance utilizing Cosign for keyless signing of container images and attaching vulnerability scan results as image attestations.

## Architecture Flow
```mermaid
graph TD
    A[Build Container Image] --> B[Generate SBOM & Vulnerability Scan]
    B --> C[Sign Image via Cosign Keyless OIDC]
    C --> D[Attach SBOM & Scan as Attestations]
    D --> E[Push to Production Registry]
    E --> F[Kyverno Admission Control verifies signature]
