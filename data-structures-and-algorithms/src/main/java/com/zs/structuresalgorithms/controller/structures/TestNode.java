package com.zs.structuresalgorithms.controller.structures;

import com.zs.structuresalgorithms.bo.LinkedNode;

public class TestNode {

    public static void main(String[] args){
        LinkedNode n1 = new LinkedNode(1);
        LinkedNode n2 = new LinkedNode(2);
        LinkedNode n3 = new LinkedNode(3);
        LinkedNode n4 = new LinkedNode(4);

        n1.append(n2).append(n3).append(n4);
        n1.showAllData();
        n1.reverse().showAllData();
    }
}
