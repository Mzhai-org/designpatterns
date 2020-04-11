package com.zs.structuresalgorithms.controller.algorithms.sort;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class QuickSort {

    @GetMapping("/quickSort")
    public int[] quickSort(int[] array) {

        sort(array, 0, array.length - 1);

        return array;
    }

    private void  sort(int[] array, int low, int high) {

        int start = low;
        int end = high;
        int key = array[low];

        /*
        end和start不相等，说明还有元素没有判断到，继续判断。
        因为start指针从左往右依次判断，end指针从右往左边依次判断。
        如果end > start说明 end和start区间的元素还没有跟基准说做判断。
         */
        while (end > start) {
            while (end > start && array[end] >= key)//从后向前比较,寻找第一个比基准数小的数
                end--;

            if (array[end] <= key) {//进行交换
                int temp = array[end];
                array[end] = array[start];
                array[start] = temp;
            }

            while (end > start && array[start] <= key)//从前向后比较，寻找第一个比基准数大的数
                start++;

            if (array[start] >= key) {//进行交换
                int temp = array[start];
                array[start] = array[end];
                array[end] = temp;
            }
        }//第一趟结束后，能够确定基准数的左边都小于基准数，基准数的右边都大于基准数

        if (start > low) sort(array, low, start-1);//start>low 说明当前基准数位置的左边还未完成排序,递归调用，将基准数位置的左边快排直至有序

        if (end < high) sort(array, end+1, high);//end<high 说明当前基准数位置的右边还未完成排序,递归调用，将基准数位置的右边快排直至有序

    }

}
