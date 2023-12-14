### Run this script in your cmd to create an aws instance:
aws ec2 run-instances --image-id ami-053b0d53c279acc90 --count 1 --instance-type t2.micro --key-name devops_key --security-group-ids sg-0807e541176cec6f3 --subnet-id subnet-0f597f2c6d470ed6a --user-data file://script.sh

### SSH connect to instance:
ssh -i "path_to_your_keys.pem" ubuntu@instance-ip