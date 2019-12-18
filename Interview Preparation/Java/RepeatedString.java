class FirstRepeatedString {
    public static void main(String[] args) {
        String string = "aba";
        int number = 10;
        System.out.println(repeatedString(string, number));
    }

    // Complete the repeatedString function below.
    static long firstRepeatedString(String s, long n) {
        long repeated = 0;
        int size = s.length();

        for (int i = 0, j = 0; i < n; i++, j++) {
            if (j == size)
                j = 0;
            if (s.charAt(j) == 'a')
                repeated++;
        }
        
        return repeated;
    }

    // Complete the repeatedString function below.
    static long repeatedString(String s, long n) {
        long repeated = 0;
        long size = s.length();
        
        for (int i = 0; i < size; i++) {
            if (s.charAt(i) == 'a')
                repeated++;
        }
        
        long times = n / size;
        long remaining = n - (times * size);

        repeated *= times;

        for (int i = 0; i < remaining; i++) {
            if (s.charAt(i) == 'a')
                repeated++;
        }

        return repeated;
    }
}