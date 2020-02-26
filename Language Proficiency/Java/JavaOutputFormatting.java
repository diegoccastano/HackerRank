import java.util.Scanner;

class JavaOutputFormating {
    public static void main(final String[] args) {
        final String str = "java 100\ncpp 65\npython 50";
        final Scanner sc = new Scanner(str);
        System.out.println("================================");
        for (int i = 0; i < 3; i++) {
            final String s1 = sc.next();
            final int x = sc.nextInt();
            System.out.printf("%-15s%03d\n", s1, x);
        }
        System.out.println("================================");
        sc.close();
    }
}