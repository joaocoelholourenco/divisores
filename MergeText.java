import java.io.File;
import java.io.FileWriter;
import java.io.IOException;
import java.util.Scanner;

public class MergeText {
    public static void main(String[] args) throws IOException {
        try (
                FileWriter writer = new FileWriter("resultados-pareados.csv", true);
                Scanner sc1 = new Scanner((new File("resultados-c.csv")));
                Scanner sc2 = new Scanner((new File("resultados-java.csv")))) {

            while (sc1.hasNext() || sc2.hasNext()) {
                writer.append(sc1.next());
                writer.append(",");
                writer.append(sc2.next());
                writer.append("\n");
            }
            writer.flush();
            writer.close();
        }

    }
}