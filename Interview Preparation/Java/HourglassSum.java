class HourglassSum {

    public static void main(String[] args) {
        int[][] arr = { { 1, 1, 1, 0, 0, 0 },
                        { 0, 1, 0, 0, 0, 0 }, 
                        { 1, 1, 1, 0, 0, 0 }, 
                        { 0, 0, 2, 4, 4, 9 },
                        { 0, 0, 0, 2, 9, 0 }, 
                        { 0, 0, 1, 2, 4, 9 } };

        System.out.println(hourglassSum(arr));
    }

    // Complete the hourglassSum function below.
    static int hourglassSum(int[][] arr) {
        int row = arr.length;
        int col = arr[0].length;
        int result = Integer.MIN_VALUE;
        int sum = Integer.MIN_VALUE;
        
        for (int i = 0; i + 2 < row; i++) {
            for (int j = 0; j + 2 < col; j++) {
                sum = arr[i][j] + arr[i][j+1] + arr[i][j+2] 
                      + arr[i+1][j+1]
                      + arr[i+2][j] + arr[i+2][j+1] + arr[i+2][j+2];
                if (sum > result) result = sum;
            }
        }
        return result;
    }

}