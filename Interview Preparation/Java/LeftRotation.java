class LeftRotation {
    public static void main(String[] args) {
        int[] a = {1, 2, 3, 4, 5};
        int d = 4;
        printArray(rotLeft(a, d));
    }

    // Complete the rotLeft function below.
    static int[] rotLeft(int[] a, int d) {
        int[] b = new int[a.length];
        for(int i=0; i<a.length; i++) {
            if (i < d) {
                b[i+(a.length-d)] = a[i];
            } else {
                b[i-d] = a[i];
            }
        }
        return b;
    }

    static void printArray(int[] a) {
        System.out.print("[");
        for(int i=0; i<a.length-1; i++) {
            System.out.print(a[i]+", ");
        }
        System.out.print(a[a.length-1]+"]\n");
    }
}