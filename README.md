# staticpages
#### checklist
- [x] Set up Apache in the server. Create two web pages as follows and host them under the same URL soldier.io in your local server.

Page 1 which contains a soldier's profile at the path /username/index.html
Page 2 which displays the attendance records of the troops.
- [x] The chief has his own unique browser with a unique USER_AGENT string. We have to make sure that when the Chief tries to access soldier.io from his browser, he will be shown page 2.

- [kinda done]If anyone else tries to access the URL, they should be shown page 1 with the details of the user. This should be done by serving each user's page from a different directory.

#### keep in mind
Users have to add username/html to the url to get the page they need. But the server is configured to handle requests when someone who is not chief commander tries to access the records.
The server isnt set to automatically serve pages from home directory of the user requesting the page as i couldnt find a way to recieve/extract username from the request(i think its not possible).
**This is set up seperately from task 1, i will add it to task one along with new scripts soon**
