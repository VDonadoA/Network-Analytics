# Network-Analytics

Welcome to the Network Analytics repository! This project applies network analysis techniques to improve R&D efficiency at Silicon, a global semiconductor company. The analysis focuses on how knowledge-sharing networks impact project success and provides data-driven recommendations for optimizing team performance.

## 📌 Project Overview

Silicon's R&D structure relies on project-based teams that work on microprocessor innovations. However, management seeks to reduce project failures and enhance the economic efficiency of successful projects.

To support this goal, we analyze knowledge exchange networks among R&D employees and assess their relationship with project outcomes.

## 📊 Datasets Used

The project leverages three key datasets:

- Team-Employee Affiliations (team_employee_affiliations.csv)
  - Maps employees to R&D project teams.
  - Helps determine how knowledge flows within teams.

- Project Outcomes (project_outcomes.csv)
  - Contains project success indicators, duration, and novelty scores.
  - Used to assess performance metrics across different teams.

- Knowledge Exchange Network (knowledge_exchange_network.csv)
  - Represents relationships where employees shared technical knowledge.
  - Analyzed as an undirected, unweighted network.

## 🔍 Methodology

1. Network Construction
  - Built a graph representation of knowledge-sharing ties using NetworkX.
  - Verified the network's structure (undirected and unweighted).

2. Network Metrics Computation
  - Measured key network indicators, including degree centrality, density, and bridging ties.
  - Summarized metrics at the team level.

3. Merging & Statistical Analysis
  - Combined network features with project outcome data.
  - Examined relationships between network structure and project success.

4. Business Insights & Recommendations
  - Derived actionable strategies to optimize R&D team structures.
  - Explored ways to enhance knowledge sharing for better project outcomes.

## 📈 Key Findings

- Network density and bridging ties significantly impact project success.

- Teams with higher connectivity and efficient knowledge sharing tend to perform better.

- Insights can guide team formation strategies to enhance innovation and reduce failures.
