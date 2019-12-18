import java.util.Scanner;

class IfElse {
    public static void main(String[] args) {
        String str = "42";
        Scanner scanner = new Scanner(str);
        int N = scanner.nextInt();
    
        if (N % 2 == 0 && (N < 6 || N > 20))
            System.out.println("Not Weird");
        else
            System.out.println("Weird");
        
        scanner.close();
    }
}