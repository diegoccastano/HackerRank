class NewYearChaos {
    public static void main(String[] args) {
        int[] q = { 1, 2, 5, 3, 7, 8, 6, 4 };
        minimumBribes(q);
    }

    // Complete the minimumBribes function below.
    static void minimumBribes(int[] q) {
        int bribes = 0;
        for (int i = 0; i < q.length; i++) {
            if (q[i] - (i + 1) > 2) {
                bribes = 0;
                break;
            } else {
                int initial = q[i] - 2 > 0 ? q[i] - 2 : 0;
                for (int j = initial; j < i; j++) {
                    if (q[j] > q[i])
                        bribes++;
                }
            }
        }
        if (bribes != 0)
            System.out.println(bribes);
        else
            System.out.println("Too chaotic");
    }
}