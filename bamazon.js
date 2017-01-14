var mysql = require("mysql");
var inquirer = require("inquirer");


var connection = mysql.createConnection({
	host: "localhost",
	port: 3306,

	user: "root",

	// Your password
	password: "Machinegunmcgurn36",
	database: "bamazon",
});

// Display all the items that are for sale
connection.connect(function(err) {
	if (err) throw err;
	console.log("connected as id" + connection.threadId);
	connection.query("SELECT * FROM products", function(err,res) {
		console.log(res);
		buyFurniture();
	});
 });


// Prompts the user with two messages
var buyFurniture = function() {
	inquirer.prompt([{
		name: "id",
		type: "input",
		message: "Please enter the ID of the product you would like to purchase."
    }, {
    	name: "unit",
    	type: "input",
    	message: "How many units would you like to purchase?"
	}]).then(function(answer) {
		connection.query("SELECT * FROM products where ?", [{item_id:answer.id}], function(err,res) {
			var product = res[0];
			processOrder(product, answer);

		});
		
	});
};
// Function to process the order
function processOrder(product, answer){
	if (answer.unit > product.stock_quantity) {
				console.log("Insufficient quantity!");
			
			} else {
				console.log("We have enough!");
				
				// Give user the total price
				var newQuantity = product.stock_quantity - answer.unit;
				var price = answer.unit * product.price;
				

				//SQL database to reflect the remaining quantity
				connection.query("UPDATE products SET ? WHERE ?", [{stock_quantity:newQuantity}, {item_id:answer.id}], function(err,res) {
					console.log("This is your total!" + price);
				});

			}
}