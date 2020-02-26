import java.util.Scanner;

class JavaLoops2 {
    public static void main(final String[] args) {
        final String str = "2\n0 2 10\n5 3 5";
        final Scanner in = new Scanner(str);
        final int t = in.nextInt();
        for (int i = 0; i < t; i++) {
            final int a = in.nextInt();
            final int b = in.nextInt();
            final int n = in.nextInt();
            int res = a;
            for (int j = 0; j < n; j++) {
                res += (int) (Math.pow(2, j) * b);
                System.out.print(Integer.toString(res) + ' ');
            }
            System.out.println("\n");
        }
        in.close();
    }
}