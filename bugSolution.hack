function foo(x: int): int {
  if (x == 0) {
    return 1;
  } else if (x < 0) {
    return -1; // Handle negative inputs
  } else if (x > 12) { // Add a check for large inputs to prevent stack overflow
    return -2; // Indicate an error
  } else {
    return x * foo(x - 1);
  }
}

function main(): void {
  echo foo(5);
  echo foo(-2);
  echo foo(15);
}

This version adds checks for negative inputs and extremely large inputs, returning error codes in those cases to avoid stack overflow. For large factorials, iterative approaches are preferred over recursive ones to avoid the stack overflow problem entirely.