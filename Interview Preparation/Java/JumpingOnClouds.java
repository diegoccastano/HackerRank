class JumpingOnClouds {
    public static void main(String[] args) {
        int[] clouds = { 0, 0, 1, 0, 0, 1, 0 };
        System.out.println(jumpingOnClouds(clouds));
    }

    // Complete the jumpingOnClouds function below.
    static int jumpingOnClouds(int[] c) {
        int length = c.length;
        int jumps = 0;
        for (int i = 0; i < length; i++, jumps++) {
            if (i + 2 < length && c[i + 2] == 0) {
                i++;
            }
        }
        return jumps - 1;
    }
}