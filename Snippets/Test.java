public class Test {
    public static void main(String[] args) {
        int variable = 0;
        String string = "3 21 4 2 55 0 13";
        int start = 2;
        int end = 18;
        String[] keys = string.split(" ");
        for (int i = 0; i < keys.length; i++) {
            int key = Integer.parseInt(keys[i]);
            boolean check = (key >= start && key <= end);
            if (check) {
                variable += 1;
            }
        }
        System.out.print(variable);
    }
}
