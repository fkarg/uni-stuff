// Copyright 2017, University of Freiburg,
// Chair of Algorithms and Data Structures.
// Author: Hannah Bast <bast@cs.uni-freiburg.de>
//         Axel Lehmann <lehmann@cs.uni-freiburg.de>

import java.io.BufferedReader;
import java.io.FileReader;
import java.io.IOException;

/**
 * Print words programm.
 */
class WordsMain {

  /**
   * Read text from given file and output the individual words.
   */
  public static void main(String[] args) throws IOException {
    // Parse command line arguments.
    if (args.length != 2) {
      System.out.println("Usage: java -jar words.jar <file>");
      System.exit(1);
    }
   
    String fileName = args[1];


    FileReader fileReader = new FileReader(fileName);
    BufferedReader bufferedReader = new BufferedReader(fileReader);

    while (true) {
      String line = bufferedReader.readLine();
      if (line == null) {
        break;
      }

      String[] words = line.split("\\W+");
      for (String word : words) {
        if (word.isEmpty()) {
          continue;
        }
        word.toLowerCase();
        System.out.println(word);
      }
    }
  }
}
