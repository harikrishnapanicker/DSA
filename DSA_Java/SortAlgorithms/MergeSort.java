public class MergeSort {

    public static void main(String[] args) {

        int arr[] = { 12, 11, 13, 5, 6, 7 };

        System.out.println("Given Array");
        printArray(arr);

        MergeSort ob = new MergeSort();
        ob.sort(arr, 0, arr.length - 1);

        System.out.println("\nSorted array");
        printArray(arr);

    }

    void merge(int arr[], int firstIndex, int middleIndex, int lastIndex) {

        // Find sizes of two subarrays to be merged
        int array_1_length = middleIndex - firstIndex + 1;
        int array_2_length = lastIndex - middleIndex;

        /* Create temp arrays */
        int array_1[] = new int[array_1_length];
        int array_2[] = new int[array_2_length];

        /* Copy data to temp arrays */
        for (int i = 0; i < array_1_length; ++i)
            array_1[i] = arr[firstIndex + i];
        for (int j = 0; j < array_2_length; ++j)
            array_2[j] = arr[middleIndex + 1 + j];

        /* Merge the temp arrays */

        // Initial indexes of first and second subarrays
        int i = 0, j = 0;

        // Initial index of merged subarray array
        int k = firstIndex;
        while (i < array_1_length && j < array_2_length) {
            if (array_1[i] <= array_2[j]) {
                arr[k] = array_1[i];
                i++;
            } else {
                arr[k] = array_2[j];
                j++;
            }
            k++;
        }

        /* Copy remaining elements of L[] if any */
        while (i < array_1_length) {
            arr[k] = array_1[i];
            i++;
            k++;
        }

        /* Copy remaining elements of R[] if any */
        while (j < array_2_length) {
            arr[k] = array_2[j];
            j++;
            k++;
        }
    }

    void sort(int arr[], int firstIndex, int lastIndex) {
        if (firstIndex < lastIndex) {
            // Find the middle point
            int middleIndex = firstIndex + (lastIndex - firstIndex) / 2;

            // Sort first and second halves
            sort(arr, firstIndex, middleIndex);
            sort(arr, middleIndex + 1, lastIndex);

            // Merge the sorted halves
            merge(arr, firstIndex, middleIndex, lastIndex);
        }
    }

    /* A utility function to print array of size n */
    static void printArray(int arr[]) {
        int n = arr.length;
        for (int i = 0; i < n; ++i)
            System.out.print(arr[i] + " ");

        System.out.println();
    }

}
