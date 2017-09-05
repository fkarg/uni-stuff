// Copyright 2017, University of Freiburg,
// Chair of Algorithms and Data Structures.
// Author: Hannah Bast <bast@cs.uni-freiburg.de>,
//         Axel Lehmann <lehmann@cs.uni-freiburg.de>.

import org.junit.Test;
import org.junit.Assert;

/**
 * Tests for our doubly-linked list.
 */
public class LinkedListTest {

  @Test
  public void insertBeforeTest() {
    LinkedListItem itemC = new LinkedListItem("C");  // #1
    LinkedListItem itemA = new LinkedListItem("A");  // #2
    LinkedListItem itemB = new LinkedListItem("B");  // #3
    LinkedListItem itemD = new LinkedListItem("D");  // #4
    LinkedList list = new LinkedList();

    list.insertBefore(itemC, null);
    System.out.println(list.toString());

    list.insertBefore(itemA, itemC);
    System.out.println();
    System.out.println(list.toString());

    list.insertBefore(itemB, itemC);
    System.out.println();
    System.out.println(list.toString());

    list.insertBefore(itemD, null); 
    System.out.println();
    System.out.println(list.toString());

    Assert.assertEquals(list.toString(), "first = #2, last = #4\n"
      + "[this = #2, prev = #0, next = #3, value = \"A\"]\n"
      + "[this = #3, prev = #2, next = #1, value = \"B\"]\n"
      + "[this = #1, prev = #3, next = #4, value = \"C\"]\n"
      + "[this = #4, prev = #1, next = #0, value = \"D\"]");
  }
}

