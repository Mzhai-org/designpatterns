package com.zs.structuresalgorithms.controller.algorithms.sort;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class ShellSort {

    @GetMapping("/shellSort")
    public int[] shellSort(int[] array) {
        int dk = array.length/3 +1; //按照一定步距分组
        while (dk != 1) {//步距逐渐缩短，缩短至1时表里已经合并为一个完整数组
            shellInsertSort(array, dk);//各组进行插入排序
            dk = dk/3 + 1;
        }
        if (dk == 1) {
            shellInsertSort(array, dk);
        }

        return array;
    }

    private  void shellInsertSort(int[] array, int dk) {
        for (int i = dk; i < array.length; i++) {
            if (array[i] < array[i-dk]) {
                int j;
                int insertVal = array[i];
                array[i] = array[i - dk];
                for (j = i - dk; j >= 0 && insertVal < array[j]; j = j - dk) {
                    array[j+dk] = array[j];
                }
                array[j+dk] = insertVal;
            }
        }
    }

}
