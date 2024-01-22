#!/bin/bash
bucket="name-of-your-bucket"
new_folder="january-2024/"
month="2024-01"  # Specify the desired month in YYYY-MM format

# Use AWS CLI to list objects and filter by the specified month
file_list=$(aws s3api list-objects --bucket "$bucket" --query "Contents[?contains(LastModified, \`$month\`)].Key" --output json)

# Parse the JSON output to extract the file names
files=($(echo "$file_list" | jq -r '.[]'))

for file in "${files[@]}"
do
  aws s3 cp "s3://$bucket/$file" "s3://$bucket/$new_folder$file"
done
