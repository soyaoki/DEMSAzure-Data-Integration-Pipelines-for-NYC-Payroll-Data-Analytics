# Project Overview
## Project Introduction
The City of New York would like to develop a Data Analytics platform on Azure Synapse Analytics to accomplish two primary objectives:

1. Analyze how the City's financial resources are allocated and how much of the City's budget is being devoted to overtime.
2. Make the data available to the interested public to show how the City’s budget is being spent on salary and overtime pay for all municipal employees.

You have been hired as a Data Engineer to create high-quality data pipelines that are dynamic, can be automated, and monitored for efficient operation. The project team also includes the city’s quality assurance experts who will test the pipelines to find any errors and improve overall data quality.

The source data resides in Azure Data Lake and needs to be processed in a NYC data warehouse. The source datasets consist of CSV files with Employee master data and monthly payroll data entered by various City agencies.

![NYC Payroll DB Schema](https://video.udacity-data.com/topher/2024/January/65b989ea_nyc-payroll-db-schema/nyc-payroll-db-schema.jpeg)

NYC Payroll DB Schema

In the following pages, we will go through the project instructions and by the end you will have built a Data Integration Pipelines on the NYC Payroll Data. We will be using Azure Data Factory to create Data views in Azure SQL DB from the source data files in DataLake Gen2. Then we built our dataflows and pipelines to create payroll aggregated data that will be exported to a target directory in DataLake Gen2 storage over which Synapse Analytics external table is built. At a high level your pipeline will look like below

![High level Pipeline Overview](https://video.udacity-data.com/topher/2024/January/65b98a0f_data-integration-pipelines-overview/data-integration-pipelines-overview.jpeg)

High level Pipeline Overview


# Environments
## Project Environment
For this project, you'll do your work in the Azure Portal, using several Azure resources including:

- Azure Data Lake Gen2 (Storage account with Hierarchical Namespaces checkbox checked when creating)
- Azure SQL DB
- Azure Data Factory
- Azure Synapse Analytics

Instructions for using a temporary Azure account to complete the project are on the next page.

You'll take screenshots as proof of work for this project, so remember to collect these screenshots throughout the project steps. A checklist is provided at the end of each step so you can double-check you've collected all of the deliverables.

You'll also need to create a Github repository for this project. At the end of the project, you will connect your Azure pipelines to Github and submit the URL or contents of the repository.

## Project Data
[Download these .csv files](https://video.udacity-data.com/topher/2022/May/6283aff5_data-nyc-payroll/data-nyc-payroll.zip) that provide the data for the project.

