package com.zs.structuresalgorithms.controller.algorithms.sort;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class BubbleSort {

    //升序，把目标数组按照从小到大排序
    @GetMapping("/bubbleSort/asc")
    public int[] bubbleSortASC(int[] array) {
        for (int i = 0; i < array.length - 1; i++) {//外层循环控制冒泡排序的执行趟数，冒泡排序需要的趟数是目标数组长度-1
            for (int j = 0; j < array.length - 1 - i; j++) {//内层循环控制每一趟需要比较的次数。第一趟就会找出一个最大值，所以内层循环的次数是array.length - 1 - i
                if (array[j] > array[j + 1]) {//判断，如果当前位置元素比后一位大就交换位置，这样每一趟就会找出当前序列的最大值。
                    int temp = array[j];
                    array[j] = array[j + 1];
                    array[j + 1] = temp;
                }
            }
        }
        return array;
    }

    //降序，把目标数组按照从大到小排序
    @GetMapping("/bubbleSort/desc")
    public int[] bubbleSortDESC(int[] array) {
        for (int i = 0; i < array.length - 1; i++) {//外层循环控制冒泡排序的执行趟数，冒泡排序需要的趟数是目标数组长度-1
            for (int j = array.length - 1; j > i; j--) {//因为降序排列，需要从大到小排列，所以要从后向前遍历数组，找到最大值放在第一位。还是每一趟排序都会找到当前序列的最大值，所以循环次数是j > i。
                if (array[j] > array[j - 1]) {
                    int temp = array[j];
                    array[j] = array[j - 1];
                    array[j - 1] = temp;
                }
            }
        }
        return array;
    }

}
