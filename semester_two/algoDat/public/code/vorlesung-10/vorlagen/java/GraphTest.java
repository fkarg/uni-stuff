import java.io.IOException;
import java.net.URL;

import org.junit.Assert;
import org.junit.Test;

/**
 * Test class for our graph.
 * 
 * @author Claudius Korzen.
 * @author Axel Lehmann
 */
public class GraphTest {
  /** Test the constructor. */
  @Test
  public void testConstructor() {
    Graph graph = new Graph();
    Assert.assertEquals(0, graph.numNodes);
    Assert.assertEquals(0, graph.numEdges);
    Assert.assertEquals(0, graph.adjacencyLists.size());
    Assert.assertEquals(0, graph.nodes.size());
  }

  /** Test the read method. */
  @Test
  public void testRead() throws IOException {
    Graph graph = new Graph();
    URL url = ClassLoader.getSystemResource("example.graph");
    if (url != null) {
      graph.read(url.getPath());
      Assert.assertEquals(5, graph.numEdges);
      Assert.assertEquals(4, graph.numNodes);
      Assert.assertEquals("[0->3|3, 1->0|1, 1->2|-2, 2->3|2, 3->2|5]", 
          graph.toString());
    }
  }
}
