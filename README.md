# S3 File Copy Script

This script is designed to copy files from an Amazon S3 bucket to a specified folder within the same bucket based on the last modified date of the files. It uses the AWS CLI and the jq tool for JSON parsing.

## Prerequisites

Before using this script, you should have the following prerequisites in place:

- [AWS CLI](https://aws.amazon.com/cli/): Ensure that you have the AWS Command Line Interface installed and configured with the necessary credentials.

- [jq](https://stedolan.github.io/jq/): Install jq, a lightweight and flexible command-line JSON processor:
     ```bash
   apt install jq
    ```

## Usage

1. Clone or download this repository to your local machine.

2. Open a terminal or command prompt and navigate to the directory containing the script.

3. Make the script executable if it's not already:

   ```bash
   chmod +x s3-copy-to-folder.sh
    ```

4. Run the script:

   ```bash
   ./s3-copy-to-folder.sh
    ```

Suppose you want to copy files from January 2024 to a folder named "january-2024" within your S3 bucket. Modify the script as follows:

   ```bash
bucket="your-s3-bucket-name"
new_folder="january-2024/"
month="2024-01"
```



🔶 PS: 

🔸To list the files filtered by a specific date:
   ```bash
   aws s3api list-objects --bucket gantekcostreportbuckett --query 'Contents[?contains(LastModified, `2023-10`)]'
 ```

🔸To list files inside a bucket:
   ```bash
   aws s3 ls s3://your-bucket-name/
 ```


