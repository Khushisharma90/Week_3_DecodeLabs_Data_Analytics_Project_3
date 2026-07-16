# Week_3_DecodeLabs_Data_Analytics_Project_3

## 📌 Project Overview
This project, titled **"Querying for Truth"**, marks the structural transition from front-end spreadsheet manipulation to programmatic database architecture using relational query engines. When processing large-scale operational records (1,200 transaction logs), utilizing client-side applications often triggers memory leaks or data type mismatch anomalies. This project eliminates structural boundaries by executing an optimized, relational query script directly inside the database system to extract core continuous statistical tendencies, filter precise operational constraints, and generate corporate intelligence.

## 🛠️ Core Relational Logic & SQL Methods Implemented
To satisfy the exact performance matrices and data auditing constraints specified by the internship curriculum, the database analytics framework implements the following structural pipelines:

*   **Deterministic Projection & Ingestion Auditing:** Leveraged foundational `SELECT *` definitions and column-specific selections to evaluate structural schema alignment post-ingestion.
*   **Row-Level Constraints (`WHERE` Filter Integration):** Engineered targeted logical filtering conditions using exact character bounds (`Product = 'Laptop'`) and multi-level sequential logic using `AND` operators (`OrderStatus` and `PaymentMethod` validations).
*   **Dimensional Segmentation & Grouping (`GROUP BY`):** Processed continuous data items by mapping non-aggregated descriptors into distinct transactional buckets.
*   **Multi-Metric Mathematical Aggregations:** Developed corporate KPIs utilizing standard relational operational algorithms:
    *   `SUM()` to track overall cross-sectional sales revenue.
    *   `COUNT()` to audit absolute transaction operational volumes.
    *   `AVG()` to determine Average Transaction Value (ATV) / basket metric variations.
*   **Ordered Presentation Layer (`ORDER BY`):** Structured output matrices from highest-to-lowest sequence (`DESC`) to instantly identify top drivers and isolate VIP outliers.

## 📊 Business Metrics & Analytical Logic
The execution script successfully processed the full batch dataset of 1,200 transactional records, outputting key analytical findings across ten sequential milestones:
1.  **Data Quality Audit:** Evaluated initial record structure; confirmed complete data absorption.
2.  **Structural Slicing:** Reduced pipeline latency by isolating critical fields.
3.  **Inventory Performance Focus:** Filtered specific operational trends across individual technical assets (e.g., Laptops).
4.  **Transaction Profiling:** Isolated payment behaviors among high-priority, card-verified customer bases.
5.  **Financial Scale Valuation:** Aggregated overall cumulative business sales performance to arrive at **1,264,761.96** baseline value.
6.  **Basket Size Distribution:** Cross-examined absolute system metrics to isolate the standard transaction footprint.
7.  **Product Line Matrix:** Segmented volume distribution vs. revenue drivers to distinguish top-performing SKUs from slower assets.
8.  **Supply Chain Diagnostics:** Monitored logistical health metrics by classifying 'Delivered', 'Pending', 'Cancelled', and 'Returned' orders.
9.  **Lead Stream Attributions:** Traced order volumes back to source digital networks (Instagram, Facebook, Google) for marketing budget alignment.
10. **VIP Bulk-Purchase Isolation:** Extracted high-value operational logs breaching the **1,000 baseline threshold** to optimize customer retention workflows.

## 📁 Repository Deliverables
The computational artifacts inside this milestone directory are structured as follows:
*   `raw_dataset.csv` - The original, uncleaned source dataset containing 1,200 analytical sales transactions.
*   `khushi_sharma_queries.sql` - The complete, production-ready SQL analytical script embedded with comprehensive developer logs and query constraints.
*   `Khushi_Sharma_Project3_SQL_Report.pdf` - A formal executive report detailing the analytical setup, schema variables, code documentation, and live execution snapshots from the database engine.

**Submitted By:** Khushi Sharma  
**Academic Specialization:** B.Tech Computer Science and Engineering  
**Training Platform:** DecodeLabs Data Analytics Virtual Internship Portfolio  

---

## 🚀 How to Run & Replicate the Project
Follow these exact steps to set up the database environment and execute the analytical queries on your local machine using MySQL Workbench:

### Prerequisites
*   MySQL Server and **MySQL Workbench** installed on your system.
*   The `raw_dataset.csv` file downloaded from this repository.

### Step 1: Create the Database Schema
Open MySQL Workbench, launch your Local Instance, and execute the following command to establish a clean database workspace:
```sql
CREATE SCHEMA decodelabs_db;
```
*Note: Double-click on `decodelabs_db` in the left-hand Schemas tab to ensure it becomes bold and active.*

### Step 2: Ingest the Raw Dataset
1. Right-click on the **Tables** option under `decodelabs_db` and select **Table Data Import Wizard**.
2. Browse your local files and select the downloaded `raw_dataset.csv`. Click **Next**.
3. Under Destination Settings, choose *Create new table* and rename the target table to simply **`orders`**.
4. Click **Next** through the column configuration screen, click **Next** to run the execution, and hit **Finish** once all 1,200 records are successfully imported.

### Step 3: Run the Analytical Pipeline
1. Go to **File** -> **Open SQL Script...** in the top menu bar.
2. Select and open the `khushi_sharma_queries.sql` file from this repository.
3. Place your cursor on any target task query (e.g., Task 5) and click the **Execute Current Statement (⚡I)** icon.
4. The output analysis will be rendered immediately within the lower Result Grid panel.
5.
