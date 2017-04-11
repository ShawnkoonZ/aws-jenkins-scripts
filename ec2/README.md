# This will run Jenkins on the current EC2 instance.

AWS DOC : https://d0.awsstatic.com/Projects/P5505030/aws-project_Jenkins-build-server.pdf
Good Link : http://sanketdangi.com/post/62715793234/install-configure-jenkins-on-amazon-linux

## jenkins_setup_hafl.sh
1. Yum updates.
2. Get Jenkins repo
3. Import a key file from Jenkins-CI.
4. Install Jenkins package.

- Steps to run after EC2 deployment.
	1. ssh into EC2 instance.
	2. run `sudo service jenkins start`. **If you want add `--httpPort=<port_number>`.**
	3. Open web browser & type `http://<your_server_public_DNS>:8080`. **Replace *8080* if you gave *custom_port_number*.**
	4. Enter password found in `/var/lib/jenkins/secrets/initialAdminPassword` file.
	5. The Jenkins installation script directs you to the Customize Jenkins page. Click Install suggested plugins.
	6. Once the installation is complete, enter Administrator Credentials, click Save Credentials, and then click Start Using Jenkins
	7. On the left-hand side, click Manage Jenkins, and then click Manage Plugins.
	8. Click on the Available tab, and then enter Amazon EC2 plugin at the top right.
	9. Select the checkbox next to Amazon EC2 plugin, and then click Install without restart.
	10. Once the installation is done, click Go back to the top page.
	11. Click on Manage Jenkins, and then Configure System.
	12. Scroll all the way down to the section that says Cloud.
	13. Click Add a new cloud, and select Amazon EC2. A collection of new fields appears.
	14. Fill out all the fields. (Note: You will have to Add Credentials of the kind AWS Credentials.)

## Make sure to delete EC2 if not used.