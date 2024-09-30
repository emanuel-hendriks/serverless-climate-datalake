# Building a Serverless Data Lake: Leveraging ERA5 for Climate Research

## Project Overview

This project aims to build a cloud-native, serverless data lake on AWS for storing, processing, and analyzing large-scale climate datasets, specifically the ERA5 reanalysis data. It focuses on creating a robust, scalable infrastructure that supports climate resilience and urban planning research, initially targeting the urban area of Zurich.

## Table of Contents

- [Project Overview](#project-overview)
- [Features](#features)
- [Getting Started](#getting-started)
  - [Prerequisites](#prerequisites)
  - [Installation](#installation)
  - [Usage](#usage)
- [Architecture](#architecture)
- [Data](#data)
- [Tools and Technologies](#tools-and-technologies)
- [Contributing](#contributing)
- [License](#license)
- [Contact](#contact)

## Features

- Automated ingestion of climate datasets (ERA5) via API calls.
- Converts raw GRIB or NetCDF data to Parquet format for efficient querying and storage.
- Catalogs metadata for searchability.
- Serverless and scalable infrastructure deployed on AWS.
- Integrates with analysis environments for advanced research (Amazon SageMaker, Athena).
- Adheres to FAIR principles to ensure data is Findable, Accessible, Interoperable, and Reusable.

## Getting Started

### Prerequisites

Before you begin, ensure you have the following:

- An AWS account.
- AWS CLI installed and configured.
- Python (for working with AWS SDK and other libraries).
- Access to the Climate Data Store (CDS) API.

### Installation

1. Clone the repository:

    ```bash
    git clone https://github.com/emanuel-hendriks/serverless-climate-datalake.git
    cd serverless-climate-datalake
    ```

2. Set up AWS resources using Terraform:

    ```bash
    terraform init
    terraform apply
    ```

3. Set up the Python environment and dependencies:

    ```bash
    python3 -m venv env
    source env/bin/activate
    pip install -r requirements.txt
    ```

4. Configure the CDS API:

    - Ensure you have the necessary API key from CDS: https://cds.climate.copernicus.eu/user-guide 

### Usage

1. **Run the ETL pipeline**:

    - The Lambda function is triggered by EventBridge for periodic ingestion.
    - Data is stored in Amazon S3, transformed into Parquet, and cataloged in Glue.

2. **Query the data**:

    - Use Athena to perform SQL queries on the ingested data.

3. **Perform Analysis**:

    - Jupyter notebooks can be launched in Amazon SageMaker for advanced analysis.

## Architecture

The project leverages AWS's cloud-native services:

- **S3**: Scalable storage.
- **Glue**: ETL and data cataloging.
- **Lambda**: Event-driven data ingestion.
- **EventBridge**: Scheduling periodic data retrieval.
- **Athena**: Querying data stored in Parquet format.
- **ECS/ECR** or **Batch** (optional): Advanced GRIB/NetCDF-to-Parquet conversion workflows.

## Data

We work with the **ERA5 reanalysis datasets** from the Climate Data Store (CDS), focusing on key variables like temperature, precipitation, snow depth, and surface pressure. Data is initially ingested in GRIB or NetCDF format and converted to Parquet to optimize storage and querying performance.

## Tools and Technologies

- **AWS**: S3, Glue, Lambda, Athena, EventBridge, IAM, ECS/ECR, and Terraform for infrastructure as code.
- **Python**: For data processing, API interaction, and deployment scripts.
- **GitHub**: Version control and collaboration.
- **Parquet**: Data format for efficient storage and querying.

## Contributing

Contributions are welcome! Here's how you can get involved:

1. Fork the repository.
2. Create a new feature branch:

    ```bash
    git checkout -b feature-branch
    ```

3. Commit your changes:

    ```bash
    git commit -m 'Add feature'
    ```

4. Push to the branch:

    ```bash
    git push origin feature-branch
    ```

5. Open a Pull Request.

## License

This project is licensed under the MIT License. See the [LICENSE](LICENSE) file for details.
