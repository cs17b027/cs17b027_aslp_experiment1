int main()
{
	int a[10] = {1,2,3,4,5,6,7,8,9,0};

	int min = 100;
	int max = -11;

	for (int i = 0; i < 10; ++i)
	{
		if(a[i] < min)
			min = a[i];

		if(a[i] > max)
			max = a[i];
	}

	return 0;
}
