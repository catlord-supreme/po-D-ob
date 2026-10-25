# PowerShell De-Obfuscator

A lightweight PowerShell-based tool designed to detect and de-obfuscate common malicious PowerShell patterns.  
This project helps analysts, engineers, and learners understand how attackers hide commands using encoding, concatenation, escape characters, and other obfuscation techniques.

## Features (v0.1 Roadmap)
- Detect and decode `-EncodedCommand`
- Base64 → UTF-16LE decoding
- Remove backticks and escape characters
- Collapse concatenated strings
- Normalize whitespace
- Output a clean, readable version of the original command

## Future Enhancements
- Script block logging integration (Event ID 4104)
- Module logging integration (Event ID 4103)
- Real-time interception wrapper
- AST-based de-obfuscation
- C2 pattern detection

## Why I Built This
I’m learning PowerShell deeply and building offensive/defensive tooling for my cybersecurity portfolio.  
This project is part of my hands-on development path toward security engineering and offensive security.

## Usage
Coming soon in v0.1.
