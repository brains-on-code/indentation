public class Program {
    public static void main(String[] args) {
        String input = "1-3,10-11";
        int output = 0;
        for (String part : input.split(",")) {
            String[] numbers = part.split("-");
            int left = Integer.parseInt(numbers[0]);
            int right = Integer.parseInt(numbers[1]);
            int number = left;
            while (number <= right) {
                output += number;
                number++;
            }
        }
        System.out.println(output);
    }
}

