/**
 * Copyright 2017, University of Freiburg,
 * Chair of Algorithms and Data Structures.
 * Author: Axel Lehmann <lehmann@cs.uni-freiburg.de>.
 */
import java.nio.file.Files;
import java.nio.file.Paths;
import java.io.IOException;

/**
 * Main function.
 */
public class StringSearchMain {

  /**
   * @param args
   */
  public static void main(String[] args) {
    if (args.length != 2) {
      System.out.println("Usage: java -jar stringsearch.jar <file> <pattern>");
      System.exit(1);
    }
    String fileName = args[0];
    String pattern = args[1];
    StringSearch ss = new StringSearch();
    try {
      for (String line : Files.readAllLines(Paths.get(fileName))) {
        for (int i : ss.findMatchesKmp(line, pattern)) {
          System.out.println(line.substring(i, i + pattern.length()));
        }
      }
    } catch (IOException e) {
      e.printStackTrace();
    }
  }
}
