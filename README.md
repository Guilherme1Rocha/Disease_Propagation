### TugaNet Disease Propagation Analysis

## Overview

This project analyzes the worst-case scenario of disease propagation in Portugal based on social interactions. Using data from the TugaNet social network, the program determines the maximum number of infection jumps possible in a directed graph representing interpersonal relationships.

## Problem Statement

The goal is to compute the longest path in a directed graph, where nodes represent individuals and edges represent direct acquaintance relationships. The worst-case infection spread is determined by the longest sequence of acquaintances, considering that all directly or indirectly connected individuals become infected instantly.

## Graph Theory Approach

The problem is modeled as a **directed graph (digraph)** where:
- Nodes represent individuals.
- Directed edges represent acquaintance relationships.

To analyze infection spread, the algorithm detects **Strongly Connected Components (SCCs)** in the graph. SCCs are subgraphs where every node is reachable from any other node within the component. Once SCCs are identified:
1. Each SCC is collapsed into a single node, forming a **Directed Acyclic Graph (DAG)**.
2. The longest path in the DAG determines the maximum infection jumps.

### **Kosaraju-Sharir Algorithm for SCCs**
To find SCCs, the program implements the **Kosaraju-Sharir Algorithm**, which consists of:
1. **Performing a DFS** on the original graph and recording the postorder of nodes.
2. **Reversing the graph** (flipping the direction of edges).
3. **Performing a second DFS** on the reversed graph, processing nodes in decreasing postorder.

This method efficiently finds SCCs in **O(n + m)** time complexity.

## Input Format

- The first line contains two integers:
  - `n` (number of individuals, where `n ≥ 2`)
  - `m` (number of acquaintance relationships, where `m ≥ 0`)
- The following `m` lines contain two integers, `x` and `y`, indicating that individual `x` knows individual `y`.

## Output Format

- A single integer `s` representing the maximum number of jumps the infection can make in the network.