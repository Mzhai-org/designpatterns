package com.zs.structuresalgorithms.controller.algorithms.sort;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

@RestController
public class BucketSort {

    @GetMapping("/bucketSort")
    public int[] bucketSort(int[] array) {
        int max = Integer.MIN_VALUE;
        int min = Integer.MAX_VALUE;

        for (int i = 0; i < array.length; i++) {
            max = Math.max(max, array[i]);
            min = Math.min(min, array[i]);
        }

        int bucketNum = (max - min) / array.length + 1;
        ArrayList<ArrayList<Integer>> bucketArr = new ArrayList<>(bucketNum);

        for (int i = 0; i < bucketNum; i++) {
            bucketArr.add(new ArrayList<Integer>());
        }

        for (int i = 0; i < array.length; i++) {
            int num = (array[i] - min) / (array.length);
            bucketArr.get(num).add(array[i]);
        }

        List<Integer> result = new ArrayList<>();
        for (int i = 0;i < bucketArr.size(); i++) {
            Collections.sort(bucketArr.get(i));
            result.addAll(bucketArr.get(i));
        }

        for (int i = 0; i < result.size(); i++) {
            array[i] = result.get(i);
        }

        return array;
    }

}
