public class Do {
    public static void main(String[] args) {
        int[] array = { 5, 6, 11, 0, 2 };
        int integer = 0;
        int number1 = 0;
        int numberA = 0;
        while (integer < array.length) {
            if (array[integer] % 2 == 0) {
                number1 += array[integer];
            } else {
                numberA += array[integer];
            }
            integer++;
        }
        System.out.print(numberA - number1);
    }
}

