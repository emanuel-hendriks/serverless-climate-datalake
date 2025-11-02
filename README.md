# Building a Serverless Data Lake: Leveraging ERA5 for Climate Research

## Project Overview

The project aims to build a cloud-native data lake and analysis platform optimized for storing, processing, and analyzing large-scale climate datasets from the Climate Data Store (CDS), specifically ECMWF Reanalysis v5 (ERA5) data. Targeting the urban area of Zurich, this platform will analyze climate data over a selected period (e.g., 2023 to 2024), while demonstrating the potential to scale both the dataset and infrastructure to cover additional regions and extended timespans. The proof of concept will showcase the system's ability to ingest and catalog climate datasets on a scheduled basis, using daily API calls and ETL jobs for dataset expansion. Ingested data will be converted to Parquet format to improve storage efficiency and querying performance. This infrastructure will support advanced analytics and real-time querying, enabling researchers to derive actionable insights for climate resilience strategies.

We plan to build a scalable serverless data lake on AWS that ingests and processes climate data from the CDS. The infrastructure will periodically fetch ERA5 datasets from the CDS, automatically convert NetCDF or GRIB-formatted data to Parquet, catalog metadata for discoverability, provide searchable interfaces, support integration with analysis environments for advanced research, and provision resources for Infrastructure as Code (IaC).

We will primarily utilize the ERA5 data from the Climate Data Store (CDS), focusing on the urban area of Zurich. The initial PoC will target climate data from 2023 to 2024, with the potential to expand the analysis to cover a broader timespan and incorporate other urban areas for comparative insights. The datasets will be ingested in GRIB or NetCDF format and converted to Parquet to optimize storage and improve querying performance. Key variables of interest include temperature, precipitation, snow depth, and surface pressure. Metadata will be cataloged to ensure that datasets are easily searchable and accessible. This infrastructure will support advanced analytics and real-time querying, enabling researchers to derive actionable insights that inform climate resilience strategies and urban planning efforts.

## RDI-Focused Data Lake and Analysis Hub

### Concept Overview

This project develops a cloud-native data lake and analysis hub on AWS, optimized for research and development infrastructure (RDI) use cases. The platform stores, manages, and analyzes research datasets with a focus on climate data by integrating with the Climate Data Store (CDS). The data lake adheres to FAIR principles, ensuring that data is Findable, Accessible, Interoperable, and Reusable, while providing access to climate datasets for analysis.

### Key Features

**Integration with Climate Data Store (CDS):**
- Use the CDS API to automate the ingestion of climate datasets, including historical data, climate projections, reanalysis data, and indicators
- Provide seamless access to datasets such as ERA5 reanalysis, seasonal forecasts, and climate indicators
- Enable real-time access to CDS data, allowing researchers to use current climate data and models for analysis and decision support

**Data Lake Architecture on AWS:**
- Implement a scalable data lake using AWS services like S3 for storage, AWS Glue for ETL processes, and Amazon Athena for querying
- Support multiple data formats (NetCDF, GRIB, CSV, Parquet) to accommodate diverse research datasets
- Ensure data is organized with proper metadata and cataloging for easy discovery and access

**FAIR Data Principles:**
- **Findable**: Implement comprehensive metadata standards and search capabilities
- **Accessible**: Provide secure, role-based access to datasets with proper authentication and authorization
- **Interoperable**: Support standard data formats and APIs for seamless integration with research tools
- **Reusable**: Ensure datasets are well-documented with clear licensing and usage guidelines

**Advanced Analytics and Visualization:**
- Integrate with Jupyter notebooks and other analysis environments for interactive data exploration
- Provide pre-built analytics workflows for common climate research tasks
- Demonstrate climate data workflows like trend analysis, forecasting, and anomaly detection using ERA5 or seasonal forecast datasets

**Automation and Data Reusability:**
- Automate data ingestion and processing using AWS Lambda, with tasks like automated format conversion (e.g., converting CSV to Parquet) and validation
- Use Terraform for infrastructure-as-code templates, allowing easy replication of the data lake environment by other research teams

**Versioning and Governance:**
- Implement data versioning and lineage tracking to maintain data integrity and reproducibility
- Establish governance policies for data quality, retention, and compliance with research standards

**Cost Optimization:**
- Implement intelligent data tiering and lifecycle policies to optimize storage costs
- Use serverless computing where appropriate to minimize operational overhead

## Technical Implementation

### Required Tools & AWS Services

- **AWS Account**: Access to cloud resources
- **AWS Lambda**: Event-driven execution for data retrieval from the CDS API
- **Amazon S3**: Stores raw GRIB or NetCDF files and converted Parquet files; ensures high availability via replication, versioning, and storage tiering
- **AWS Glue**: ETL processing, GRIB or NetCDF to Parquet conversion, data catalog, schema detection
- **Amazon Athena**: Executes SQL queries on data in S3
- **Amazon SageMaker**: Offers Jupyter Notebooks for machine learning
- **Amazon CloudWatch/CloudTrail**: Observability and system performance
- **Amazon EventBridge**: Scheduled data ingestion and ETL tasks
- **IAM**: Fine-grained access control based on the least privilege principle for secure service communication
- **Terraform**: Infrastructure as Code (IaC) for resource provisioning
- **GitHub**: Version control for project code and documentation

### Data Formats & APIs

- **Data Formats**: NetCDF, GRIB, CSV, Parquet, JSON
- **APIs**: CDS API, RESTful APIs for data access
- **Infrastructure**: Terraform for IaC, Docker for containerization
- **Analytics**: Jupyter notebooks, Python/R libraries, visualization tools

## Expected Outcomes

- A fully functional, scalable data lake that can ingest and manage climate datasets from CDS
- Demonstrated workflows for climate research using real datasets
- Reusable infrastructure templates that other research institutions can adopt
- Documentation and best practices for implementing FAIR data principles in cloud environments
- Cost-effective solution that can scale with research needs

This project serves as a reference implementation for research institutions looking to modernize their data infrastructure and leverage cloud technologies for climate research and beyond.
