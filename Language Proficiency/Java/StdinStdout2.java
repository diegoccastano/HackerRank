import java.util.Scanner;

class StdinStdout2 {
    public static void main(String[] args) {
        String str = "42\n3.1415\nWelcome to HackerRank's Java tutorials!";
        Scanner scanner = new Scanner(str);

        System.out.println("Int: "+scanner.nextInt());
        System.out.println("Double: "+scanner.nextDouble());
        scanner.nextLine();
        System.out.println("String: "+scanner.nextLine());
        scanner.close();
    }
}