// Sample application entry point
function main() {
    console.log('Hello from Cursor First Project!');
    console.log('CodeRabbit integration is ready.');
}

// Test function to demonstrate CodeRabbit review
function calculateSum(a, b) {
    return a + b;
}

// Test function with potential issues for CodeRabbit to catch
function getUserData(userId) {
    // Missing error handling
    const data = fetch('https://api.example.com/users/' + userId);
    return data;
}

main();

// Test the new functions
console.log('Sum of 5 + 3 =', calculateSum(5, 3));
getUserData(123);
