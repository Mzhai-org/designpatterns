package com.zs.structuresalgorithms.controller.algorithms.sort;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class InsertSort {
    /*
    插入排序的思路，是将一个数插入到已经有序排列的数组中使之仍然有序。
    插入排序的工作流程：首先把初始数组分为两个子数组，L数组只有首位元素，R数组是其余元素
    接着从R数组中顺序取出元素，跟L数组的元素从右至左做比较
    将L数组中所有比自己大的元素后移，直到找到一个不比自己大的元素或者已经比较到第一位，将自己插入合适的位置，这样就完成了插入排序。
     */

    @GetMapping("/insertSort")
    public int[] insertSort(int[] array) {
        for (int i = 1; i < array.length; i++) {
            //插入的数
            int insertVal = array[i];
            //插入的位置（准备和前一个数比较确定插入位置）
            int index = i - 1;

            while (index >= 0 && insertVal < array[index]) {
                //则将array[index]向后移动一位
                array[index + 1] = array[index];

                //将index向前移动 继续比较前一位元素
                index--;
            }

            array[index + 1] = insertVal;
        }

        return array;
    }

}
