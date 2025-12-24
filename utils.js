// Utility functions for the application

function calculateSum(a, b) {
    // This function adds two numbers
    return a + b;
}

function divideNumbers(x, y) {
    // Potential bug: no zero division check
    return x / y;
}

function processUserData(userData) {
    // Security issue: directly using user input without validation
    const query = "SELECT * FROM users WHERE id = " + userData.id;
    return query;
}

async function fetchData(url) {
    // Missing error handling
    const response = await fetch(url);
    const data = await response.json();
    return data;
}

function isValidEmail(email) {
    // Weak email validation
    return email.includes('@');
}

// Unused function
function deprecatedFunction() {
    console.log('This function is no longer used');
}

module.exports = {
    calculateSum,
    divideNumbers,
    processUserData,
    fetchData,
    isValidEmail
};
