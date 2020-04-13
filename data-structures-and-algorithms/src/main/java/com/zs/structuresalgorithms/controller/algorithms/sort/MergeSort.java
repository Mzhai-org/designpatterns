package com.zs.structuresalgorithms.controller.algorithms.sort;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class MergeSort {

    @GetMapping("/mergeSort")
    public int[] mergeSort(int[] array) {

        sort(array, 0 , array.length - 1);

        return array;
    }

    private void sort(int[] array, int left, int right) {
        if (left >= right)
            return;

        int center = (left + right) >> 1;

        sort(array, left, center);//递归调用数组拆分，直至数组只有一个元素

        sort(array, center + 1, right);//递归调用数组拆分，直至数组只有一个元素

        merge(array, left, center, right);
    }

    private void merge(int[] array, int left, int center, int right) {
        int[] tempArr = new int[array.length];

        int mid = center + 1;

        int third = left;

        int tmp = left;

        while (left <= center && mid <= right) {
            if (array[left] <= array[mid]) {
                tempArr[third++] = array[left++];
            } else {
                tempArr[third++] = array[mid++];
            }
        }

        while (mid <= right) {
            tempArr[third++] = array[mid++];
        }

        while (left <= center) {
            tempArr[third++] = array[left++];
        }

        while (tmp <= right) {
            array[tmp] = tempArr[tmp++];
        }
    }

}
