import java.util.HashSet;

class HackerRank {
    public static void main(String[] args) {
        int[] socks = {10, 20, 20, 10, 10, 30, 50, 10, 20};
        System.out.println(sockMerchant(socks.length, socks));
    }

    // Complete the sockMerchant function below.
    static int sockMerchant(int n, int[] ar) {
        HashSet<Integer> set = new HashSet<Integer>();
        int total = 0;
        for (int i = 0; i < n; i++) {
            int element = ar[i];
            if (set.contains(element)) {
                set.remove(element);
                total++;
            } else {
                set.add(element);
            }
        }
        return total;
    }
}