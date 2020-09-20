# staticpages
#### Tl;dr
1.This is not set up to work within docker. **Run the following as root**.

2. Run setup with the name of the chief commander's unique useragent string as an argument
> setup.sh <commander's useragent>

3. Make a directory named public_html and chown it to you, make index.html and put desired document in it
> mkdir public_html
> chown -R <username> public_html
> touch index.html
4. Add something to display here and done, open your browser and type www.soldier.io/username/html

#### Subtask 1 checklist
- [x] Set up Apache in the server. Create two web pages as follows and host them under the same URL soldier.io in your local server.

Page 1 which contains a soldier's profile at the path /username/index.html
Page 2 which displays the attendance records of the troops.
- [x] The chief has his own unique browser with a unique USER_AGENT string. We have to make sure that when the Chief tries to access soldier.io from his browser, he will be shown page 2.

- [kinda done]If anyone else tries to access the URL, they should be shown page 1 with the details of the user. This should be done by serving each user's page from a different directory.
#### Subtask 2 checklist
 - [x] Create a Dockerfile to handle all the scripts

- [x]  Using Ubuntu as the base image, copy all the scripts to the appropriate locations and run them accordingly

 - [x] Execute the alias.sh script inside the container

 - [x] The result of this should be that of the first task, and the only difference would be that everything, including the aliases and crontasks, are inside the container.
#### keep in mind
Users have to add username/html to the url to get the page they need. But the server is configured to handle requests when someone who is not chief commander tries to access the records.
The server isnt set to automatically serve pages from home directory of the user requesting the page as i couldnt find a way to recieve/extract username from the request(i think its not possible).
**This is set up seperately from task 1, i will add it to task one along with new scripts soon**
