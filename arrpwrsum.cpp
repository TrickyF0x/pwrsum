#include <iostream>

typedef long long lint;

extern "C" lint pwrsum(lint *array, lint size);

int main()
{
	lint size, sum, i = 0;

	std::cout << "Enter array size: ";
	std::cin >> size;

	lint *arr = new lint [size];

	std::cout << "\nEnter array elements: ";
	while (i < size) {
		std::cin >> arr[i];
		i++;
	}

	i = 0;
	std::cout << "Your array is: ";
	while (i < size) {
		std::cout << arr[i] << "; ";
		i++;
	}

	sum = pwrsum(arr, size);

	std::cout << "\nArray sum^2 is: " << sum << "\n";

	delete [] arr;
	return 0;
}