import java.util.Scanner;

class JavaLoops1 {
    public static void main(final String[] args) {
        String str = "2";
        final Scanner scanner = new Scanner(str);

        final int N = scanner.nextInt();
        scanner.skip("(\r\n|[\n\r\u2028\u2029\u0085])?");
        for (int i = 1; i <= 10; i++) {
            System.out.println(N + " x " + i + " = " + i * N);
        }
        scanner.close();
    }
}