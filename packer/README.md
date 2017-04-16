## Packer AMI creation.

Good sources to read:
http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/AMIs.html
https://www.packer.io/
https://www.packer.io/intro/getting-started/build-image.html

------------------------------
## Usage.

1. Install Packer
2. Setup aws credentials via env path.
3. Inspect and validate builder file to make sure the output.
4. Build builder file.
5. Use the generated AMI for Docker containers or EC2 via terraform.

-----------------------------

**Remember to deregister AMI and remove the snapshot if not used**
