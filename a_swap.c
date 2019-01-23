int main()
{
	int a[3] = {1,2,3}, b[3] = {11,22,33};

	for(int i = 0 ; i < 3 ; ++i)
	{
		int temp = a[i];
		a[i] =  b[i];
		b[i] = temp;
	}

	return 0;
}