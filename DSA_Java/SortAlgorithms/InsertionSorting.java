public class InsertionSorting {

    public static void main(String[] args) {

        int arr[] = { 12, 11, 13, 5, 6 };

        System.out.println("Before  :");
        printArray(arr);

        InsertionSorting ob = new InsertionSorting();
        ob.sortMe(arr);

        System.out.println("After  :");
        printArray(arr);

    }

    /* A utility function to print array of size n */
    static void printArray(int arr[]) {
        int n = arr.length;
        for (int i = 0; i < n; ++i)
            System.out.print(arr[i] + " ");

        System.out.println();
    }

    // Function that handles the DSA
    void sortMe(int arr[]) {
        int n = arr.length;
        System.out.println("n  :" + n);

        for (int i = 1; i < n; i++) {
            System.out.println("--------------------");
            int key = arr[i];
            System.out.println("key  :" + key);

            int j = i - 1;
            System.out.println("i  :" + i);

            while (j >= 0 && arr[j] > key) {
                arr[j + 1] = arr[j];
                System.out.println("j  :" + j);
                printArray(arr);
                j = j - 1;
            }
            arr[j + 1] = key;
            System.out.println("EOL :");
            printArray(arr);
            System.out.println("--------------------");
        }
    }

}