# Building a Serverless Data Lake: Leveraging ERA5 for Climate Research

## Project Overview

The project aims to build a cloud-native data lake and analysis platform optimized for storing, processing, and analyzing large-scale climate datasets from the Climate Data Store (CDS), specifically ECMWF Reanalysis v5 (ERA5) data. Targeting the urban area of Zurich, this platform will analyze climate data over a selected period (e.g., 2023 to 2024), while demonstrating the potential to scale both the dataset and infrastructure to cover additional regions and extended timespans. The proof of concept will showcase the system’s ability to ingest and catalog climate datasets on a scheduled basis, using daily API calls and ETL jobs for dataset expansion. Ingested data will be converted to Parquet format to improve storage efficiency and querying performance. This infrastructure will support advanced analytics and real-time querying, enabling researchers to derive actionable insights for climate resilience strategies.

We plan to build a scalable serverless data lake on AWS that ingests and processes climate data from the CDS. The infrastructure will periodically fetch ERA5 datasets from the CDS, automatically convert NetCDF or GRIB-formatted data to Parquet, catalog metadata for discoverability, provide searchable interfaces, support integration with analysis environments for advanced research, and provision resources for Infrastructure as Code (IaC).

We will primarily utilize the ERA5 data from the Climate Data Store (CDS), focusing on the urban area of Zurich. The initial PoC will target climate data from 2023 to 2024, with the potential to expand the analysis to cover a broader timespan and incorporate other urban areas for comparative insights. The datasets will be ingested in GRIB or NetCDF format and converted to Parquet to optimize storage and improve querying performance. Key variables of interest include temperature, precipitation, snow depth, and surface pressure. Metadata will be cataloged to ensure that datasets are easily searchable and accessible. This infrastructure will support advanced analytics and real-time querying, enabling researchers to derive actionable insights that inform climate resilience strategies and urban planning efforts.

Required tools: 

-   AWS Account: access to cloud resources.
-   AWS Lambda: event-driven execution for data retrieval from the CDS API.
-   Amazon S3: stores raw GRIB or NetCDF files and converted Parquet files; ensures high availability via replication, versioning, and storage tiering.
-   AWS Glue: ETL processing, GRIB or NetCDF to Parquet conversion, data catalog, schema detection.
-   Amazon Athena: executes SQL queries on data in S3.
-   Amazon SageMaker: offers Jupyter Notebooks for machine learning.
-   Amazon CloudWatch/CloudTrail: observability and system performance.
-   Amazon EventBridge: scheduled data ingestion and ETL tasks.
-   IAM: fine-grained access control based on the least privilege principle for secure service communication.
-   Terraform: Infrastructure as Code (IaC) for resource provisioning.
-   GitHub: version control for project code and documentation.

