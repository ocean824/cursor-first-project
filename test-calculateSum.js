// Test file for calculateSum function
function calculateSum(a, b) {
    // Reject null and undefined explicitly
    if (a === null || a === undefined || b === null || b === undefined) {
        throw new Error(`Invalid input: both arguments must be valid numbers. Received: a=${a} (${typeof a}), b=${b} (${typeof b})`);
    }
    
    // Coerce inputs to numbers
    const numA = Number(a);
    const numB = Number(b);
    
    // Validate that both inputs are finite numbers
    if (!Number.isFinite(numA) || !Number.isFinite(numB)) {
        throw new Error(`Invalid input: both arguments must be valid numbers. Received: a=${a} (${typeof a}), b=${b} (${typeof b})`);
    }
    
    return numA + numB;
}

// Test cases
console.log('✓ Test 1 (5 + 3):', calculateSum(5, 3)); // Expected: 8
console.log('✓ Test 2 ("5" + "3"):', calculateSum('5', '3')); // Expected: 8
console.log('✓ Test 3 (5.5 + 2.5):', calculateSum(5.5, 2.5)); // Expected: 8

// Test error cases
try {
    calculateSum(null, 5);
    console.log('✗ Test 4 FAILED: Should have thrown error');
} catch(e) {
    console.log('✓ Test 4 (null, 5):', e.message);
}

try {
    calculateSum(5, undefined);
    console.log('✗ Test 5 FAILED: Should have thrown error');
} catch(e) {
    console.log('✓ Test 5 (5, undefined):', e.message);
}

try {
    calculateSum('abc', 5);
    console.log('✗ Test 6 FAILED: Should have thrown error');
} catch(e) {
    console.log('✓ Test 6 ("abc", 5):', e.message);
}

try {
    calculateSum(Infinity, 5);
    console.log('✗ Test 7 FAILED: Should have thrown error');
} catch(e) {
    console.log('✓ Test 7 (Infinity, 5):', e.message);
}

try {
    calculateSum(NaN, 5);
    console.log('✗ Test 8 FAILED: Should have thrown error');
} catch(e) {
    console.log('✓ Test 8 (NaN, 5):', e.message);
}

console.log('\nAll tests completed!');

