
A takeaway program, that has list of dishes with prices, youa can place an order by giving the list of dishes.Their quantities and a number that should be the exact total. If the sum is not correct the method should raise an error, otherwise the customer is sent a text saying that the order was placed successfully and that it will be delivered 1 hour from now, e.g. "Thank you! Your order was placed and will be delivered before 18:52".
The text sending functionality is implemented using Twilio API.

>>Dish       
Responsibility      |   Collaborator 
Has a price   	    |   Menu
Has a name 		  	  |   Menu

>>Menu    
Responsibility     		 |   Collaborator 
Has a list of dishes   |   Menu

>>Order   
Responsibility     		               |   Collaborator 
Can have a list of selected dishes   |   Menu

>>Customer
Responsibility  |   Collaborator 
Can buy food   	|   Menu

>>Message
Responsibility  						|   Collaborator 
Send message to customer  	|   Menu



