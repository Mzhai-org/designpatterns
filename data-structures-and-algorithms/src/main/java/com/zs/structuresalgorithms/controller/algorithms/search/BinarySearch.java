package com.zs.structuresalgorithms.controller.algorithms.search;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class BinarySearch {

    @GetMapping("/binarySearch")
    public int binarySearch(int[] array, int i) {
        //传入数组必须是有序且是按照从小到大顺序排列的

        int low = 0;
        int high = array.length - 1;
        int mid;
        while (low <= high) {
            mid = ((high - low) >> 1) + low;//中间位置
            if (array[mid] == i) {
                return mid;
            } else if (i > array[mid]) { //向右查找
                //如果目标元素比数组中间位置元素大，则在右半部分继续折半查找
                low = mid + 1;
            } else { //向左查找
                //如果目标元素比数组中间位置元素小，则在左半部分继续折半查找
                high = mid - 1;
            }
        }
        return -1;
    }

}
