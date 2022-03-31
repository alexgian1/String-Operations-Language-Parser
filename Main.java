import java.io.*;

class Main {
    public static void main(String[] argv) throws Exception{
        System.out.println("Input:");
        Parser p = new Parser(new Scanner(new InputStreamReader(System.in)));
        p.parse();
    }
}
