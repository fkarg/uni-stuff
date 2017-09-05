// Copyright 2017, University of Freiburg,
// Chair of Algorithms and Data Structures.
// Author: Hannah Bast <bast@cs.uni-freiburg.de>,
//         Axel Lehmann <lehmann@cs.uni-freiburg.de>.

/**
 * Class for a single linked list item.
 */
public class LinkedListItem {

  /**
   * Create new item with given value.
   */
  public LinkedListItem(String value) {
    numObjects += 1;
    this.value = value;
    this.previousItem = null;
    this.nextItem = null;
    this.id = numObjects;
  }

  /**
   * The value of this item (any string), can be the same for different items.
   */
  protected String value;

  /**
   * An internal id, for debugging purposes only.
   */
  protected int id;

  /**
   * An internal id, for debugging purposes only.
   */
  static int numObjects = 0;

  /**
   * The id as human-readable string.
   */
  static String id(LinkedListItem item) {
    return item != null ? ("#" + item.id) : "#0";
  }

  /**
   * The item previous to this one, null if first item.
   */
  protected LinkedListItem previousItem;

  /**
   * The item next to this one, null if last item.
   */
  protected LinkedListItem nextItem;

  /**
   * This item as human-readable string.
   */
  @Override
  public String toString() {
    return "[this = " + id(this) + ", prev = " + id(previousItem)
      + ", next = " + id(nextItem) + ", value = \"" + value + "\"]";
  }
}
