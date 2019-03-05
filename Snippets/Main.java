public class Main {
    public static void main(String[] args) {
        int[] values = { 3, 0, 1, 0, 2 };
        StringBuilder result = new StringBuilder();
        int variable = 3;
        for (int value : values) {
            if (value == variable) {
                result.append("x");
            } else if (value < variable) {
                result.append("m");
            }
            result.append("o");
            variable--;
        }
        System.out.print(result);
    }
}

