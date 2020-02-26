class MinimumSwapsTwo {
    public static void main(String[] args) {
        int[] q = { 3, 1, 2, 4 };
        System.out.println(minimumSwaps(q));
    }

    static int minimumSwaps(int[] array) {
        int length = array.length - 1;
        int swaps = 0;
        for (int i = 0; i < length; i++) {
            int index = array[i] - 1;
            if (i < index) {
                swap(array, i, index);
                swaps++;
                i--;
            }
        }
        return swaps;
    }

    private static void swap(int[] array, int i, int j) {
        int aux = array[i];
        array[i] = array[j];
        array[j] = aux;
    }

    // // Complete the minimumSwaps function below.
    // static int minimumSwaps(int[] arr) {
    // int swaps = 0;
    // for(int i=0; i<arr.length; i++) {
    // if (arr[i]-(i+1) > 0) {
    // for (int j=i+1; j<arr.length; j++) {
    // if (arr[j]-(j+1) < 0) {
    // int aux = arr[i];
    // arr[i] = arr[j];
    // arr[j] = aux;
    // swaps++;
    // break;
    // }
    // }
    // }
    // if (arr[i]-(i+1) != 0) i--;
    // }
    // return swaps;
    // }

    static void printArray(int[] a) {
        System.out.print("[");
        for (int i = 0; i < a.length - 1; i++) {
            System.out.print(a[i] + ", ");
        }
        System.out.print(a[a.length - 1] + "]\n");
    }
}