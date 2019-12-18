import java.util.Scanner;

class StdinStdout1 {
    public static void main(String[] args) {
        String str = "4\n100\n250";
        Scanner scan = new Scanner(str);

        int a = scan.nextInt();
        int b = scan.nextInt();
        int c = scan.nextInt();

        System.out.println(a);
        System.out.println(b);
        System.out.println(c);

        scan.close();
    }
}