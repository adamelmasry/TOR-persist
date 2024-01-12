# TOR-persist README

## Overview

`TOR-persist` is a script created for red team exercises, focusing on the simulation of persistence using Tor (The Onion Router) for anonymity. 

## Why Tor?

Tor is a vital tool for threat actors seeking anonymity. Its features make it attractive for:

- **Anonymity**: Hides user identity and network activities.
- **Evasion**: Helps bypass network monitoring and IP-based defenses.
- **Persistence**: When coupled with system persistence techniques, it offers a stealthy method for maintaining access.

## Objective

The goal is to enhance blue team detection capabilities against:
- Use of anonymising networks by adversaries.
- Persistent threats utilising registry keys for auto-execution.
- Sophisticated cyber threats challenging conventional detection methods.

## Instructions

### Setup

1. **Download the script**: Clone or download `TOR-persist` from the repository.
2. **Review the Scripts**: Familiarize yourself with the PowerShell scripts and their functionalities.

### Execution

1. **Run the Main Script**: Execute the provided PowerShell script. It will:
   - Download Tor Browser.
   - Set up a registry key for persistence.
   - Launch the Tor Browser, simulating an APT's persistent access.
2. **Monitor and Analyze**: Use your blue team tools to monitor, detect, and analyze the behavior induced by the script.

### Cleanup

- **Remove Persistence**: Delete the created registry key to remove persistence.
- **Uninstall Tor**: Manually delete the Tor Browser and any related files.
