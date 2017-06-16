// Copyright 2017, University of Freiburg,
// Chair of Algorithms and Data Structures.
// Author: Hannah Bast <bast@cs.uni-freiburg.de>,
//         Axel Lehmann <lehmann@cs.uni-freiburg.de>.

/**
 * Class for a doubly-linked list.
 */
public class LinkedList {

  /**
   * Create an empty list.
   */
  public LinkedList() {
    firstItem = null;
    lastItem = null;
  }

  /**
   * Insert an element into the list, *before* the given item.
   */
  public void insertBefore(LinkedListItem newItem, LinkedListItem nextItem) {
    LinkedListItem previousItem;
    if (nextItem != null) {
      previousItem = nextItem.previousItem;
    } else {
      previousItem = lastItem;
    }

    if (nextItem != null) {
      nextItem.previousItem = newItem;
    } else {
      lastItem = newItem;
    }

    newItem.previousItem = previousItem;

    if (previousItem != null) {
      previousItem.nextItem = newItem;
    } else {
      firstItem = newItem;
    }

    newItem.nextItem = nextItem;
  }

  /**
   * The first item in the list.
   */
  protected LinkedListItem firstItem;

  /**
   * The last item in the list.
   */
  protected LinkedListItem lastItem;

  /**
   * This item as human-readable string.
   */
  @Override
  public String toString() {
    StringBuilder sb = new StringBuilder();
    sb.append("first = " + LinkedListItem.id(firstItem) + ", ");
    sb.append("last = " + LinkedListItem.id(lastItem) + "\n");
    LinkedListItem item = firstItem;
    while (item != null) {
      sb.append(item.toString());
      if (item.nextItem != null) {
        sb.append("\n");
      }
      item = item.nextItem;
    }
    return sb.toString();
  }
}
