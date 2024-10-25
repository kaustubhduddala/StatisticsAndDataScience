# Basketball Player Analysis

## Overview
This repository contains an analysis of basketball player performance data focusing on three teams: the Indiana Fever, Dallas Wings, and Los Angeles Sparks. The analyses include visualizations of the distribution of three-pointers made by each player and the relationship between minutes played and total rebounds, with one randomly selected player highlighted in each visualization.

## Data Source
The data used in this analysis comes from a CSV file containing player statistics. The dataset includes the following columns:

- **Team**: The team the player belongs to.
- **Player**: The name of the player.
- **Age**: The age of the player.
- **G**: Games played.
- **GS**: Games started.
- **MP**: Minutes played.
- **FG**: Field goals made.
- **FGA**: Field goals attempted.
- **FG%**: Field goal percentage.
- **3P**: Three-pointers made.
- **3PA**: Three-pointers attempted.
- **3P%**: Three-point percentage.
- **2P**: Two-pointers made.
- **2PA**: Two-pointers attempted.
- **2P%**: Two-point percentage.
- **FT**: Free throws made.
- **FTA**: Free throws attempted.
- **FT%**: Free throw percentage.
- **ORB**: Offensive rebounds.
- **DRB**: Defensive rebounds.
- **TRB**: Total rebounds.
- **AST**: Assists.
- **STL**: Steals.
- **BLK**: Blocks.
- **TOV**: Turnovers.
- **PF**: Personal fouls.
- **PTS**: Points scored.

The data was manually curated and compiled from official league statistics.

## Analyses Performed
1. **Distribution of 3-Pointers Made**: 
   - Created a histogram to visualize the distribution of three-pointers made by players from the chosen teams.

2. **Relationship Between Minutes Played and Total Rebounds**:
   - Constructed a scatter plot to illustrate the correlation between the minutes played by each player and their total rebounds, highlighting a randomly selected player.

## Reproducing Results

### Requirements
To reproduce the analyses, ensure you have the following R packages installed:

- `ggplot2`
- `dplyr`

You can install them using the following commands in R:

```r
install.packages("ggplot2")
install.packages("dplyr")
