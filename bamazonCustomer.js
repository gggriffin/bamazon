const mysql = require('mysql');
const inquirer = require('inquirer');

const connection = mysql.createConnection({
    host: 'localhost',
    port: 3306,
    user: 'root',
    password: '',
    database: 'bamazon'
});

connection.connect(function(err) {
    if (err) throw (err);
    console.log('connected as id ' + connection.threadId);
    queryAllProducts();
    customerRequest();

});

function queryAllProducts() {
    connection.query('SELECT * FROM products', function(err, res) {
        for (var i = 0; i < res.length; i++) {
            console.log(res[i].item_id + ' | ' + res[i].product_name + ' | '
             + res[i].department_name + ' | ' + res[i].price + ' | ' +
             res[i].stock_quantity)
        }
    });
}

function customerRequest() {
    inquirer
        .prompt([
            {
                name: 'itemRequest',
                type: 'input',
                message: 'Enter the Item ID of the product that you would like to purchase'
            },
            {
                name: 'itemQuantity',
                type: 'input',
                Message: 'How many of the selected item would you like to purchase?',
                validate: function(value) {
                    if(isNaN(value) === false) {
                        return true;
                    }
                    return false;
                }
            }
        ])
}