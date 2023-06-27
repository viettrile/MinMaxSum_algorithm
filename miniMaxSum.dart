import 'dart:math';

// Function to calculate the minimum and maximum sums
void miniMaxSum(List<int> arr) {
  int minV = arr[0]; // Initialize the minimum value with the first element
  int maxV = arr[0]; // Initialize the maximum value with the first element
  int total = 0; // Initialize the total sum to 0

  // Iterate through each element in the array
  for (int num in arr) {
    minV =
        min(minV, num); // Update the minimum value if a smaller value is found
    maxV =
        max(maxV, num); // Update the maximum value if a larger value is found
    total += num; // Calculate the total sum by adding each element
  }

  // Calculate the minimum and maximum sums
  int minTotal = total - maxV;
  int maxTotal = total - minV;

  // Print the minimum and maximum sums
  print('$minTotal $maxTotal');
}

void main() {
  List<int> arr = [1, 3, 7, 9, 5]; // Sample input array
  miniMaxSum(arr); // Call the function with the input array
}
