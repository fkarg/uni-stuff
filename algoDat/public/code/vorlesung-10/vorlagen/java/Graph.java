import java.io.BufferedReader;
import java.io.FileReader;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

/**
 * A simple Graph with nodes and edges.
 * 
 * @author Claudius Korzen
 * @author Axel Lehmann
 */
public class Graph {
  /** The number of nodes. */
  protected int numNodes;
  /** The number of edges. */
  protected int numEdges;
  /** The adjacency lists. */
  protected List<List<Edge>> adjacencyLists;
  /** The list of nodes. */
  protected List<Node> nodes;

  /** Creates an empty Graph. */
  public Graph() {
    this.numNodes = 0;
    this.numEdges = 0;
    this.adjacencyLists = new ArrayList<List<Edge>>();
    this.nodes = new ArrayList<Node>();
  }

  /**
   * Reads the graph from file.
   */
  public void read(String fileName) throws IOException {
    BufferedReader br = new BufferedReader(new FileReader(fileName));

    // Read first 2 lines to fetch the number of nodes and arcs.
    this.numNodes = Integer.parseInt(br.readLine());
    this.numEdges = Integer.parseInt(br.readLine());

    // Initialize adjacency lists.
    for (int i = 0; i < numNodes; i++) {
      this.adjacencyLists.add(new ArrayList<Edge>());
    }

    // Parse node section.
    int nodeId = 0;
    for (int i = 0; i < numNodes; i++) {
      String[] fields = br.readLine().split("\t");

      // Parse the nodes.
      float latitude = Float.parseFloat(fields[0]);
      float longitude = Float.parseFloat(fields[1]);

      this.nodes.add(new Node(nodeId++, latitude, longitude));
    }

    // Parse edges section.
    for (int i = 0; i < numEdges; i++) {
      String[] fields = br.readLine().split("\t");

      int tail = Integer.parseInt(fields[0]);
      int head = Integer.parseInt(fields[1]);
      int cost = Integer.parseInt(fields[2]);

      this.adjacencyLists.get(tail).add(new Edge(tail, head, cost));
    }
    br.close();
  }

  @Override
  public String toString() {
    StringBuilder sb = new StringBuilder();
    sb.append("[");
    for (int i = 0; i < this.numNodes; i++) {
      List<Edge> adjacencyList = adjacencyLists.get(i); 
      for (int j = 0; j < adjacencyList.size(); j++) {
        sb.append(adjacencyList.get(j).toString());
        if (j < adjacencyList.size() - 1) {
          sb.append(", ");
        }
      }
      if (i < this.numNodes - 1) {
        sb.append(", ");
      }
    }
    sb.append("]");
    return sb.toString();
  }
}

/**
 * A node with its id, its latitude and its longitude.
 */
class Node {
  /** The id. */
  public int id;
  /** The latitude. */
  public float latitude;
  /** The longitude. */
  public float longitude;

  /** The constructor. */
  Node(int id, float latitude, float longitude) {
    this.id = id;
    this.latitude = latitude;
    this.longitude = longitude;
  }
  
  @Override
  public String toString() {
    return String.format("%d", id);
  }
}

/**
 * An edge with its tail node id, head node id, and the costs.
 */
class Edge {
  /** The id of the tail node. */
  int tailNodeId;
  /** The id of the head node. */
  int headNodeId;
  /** The cost. */
  int cost;

  /** The constructor. */
  Edge(int from, int to, int cost) {
    this.tailNodeId = from;
    this.headNodeId = to;
    this.cost = cost;
  }
  
  @Override
  public String toString() {
    return String.format("%d->%d|%d", tailNodeId, headNodeId, cost);
  }
}
