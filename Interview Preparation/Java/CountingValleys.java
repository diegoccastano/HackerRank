class CountingValleys {
    public static void main(String[] args) {
        String valleys = "UDDDUDUU";
        System.out.println(countingValleys(valleys.length(), valleys));
    }

    // Complete the countingValleys function below.
    static int countingValleys(int n, String s) {
        int level = 0;
        int counter = 0;
        for(int i = 0; i < n; i++) {
            char c = s.charAt(i);
            if (c == 'U') {
                level++;
                if (level == 0) counter++;
            } else if (c == 'D') {
                level--;
            }
        }
        return counter;
    }
}