package com.zs.structuresalgorithms.controller.practice;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.HashMap;

@RestController
public class FindArrayElement {

    @GetMapping("/findArrayElement")
    public int FindArrayElement(int[] array) {

        int i = array.length;
        if (array == null || i == 0) {
            return 0;
        }
        if (i == 1) {
            return array[0];
        }
        //使用hashmap来标记数组中出现的数字和这个数字出现的次数
        //当这些数字出现了次数超过了i/2就输出标记的数字
        HashMap<Integer, Integer> map = new HashMap<Integer, Integer>();
        for (int j = 0; j < i; j++) {
            //当hashmap中没有出现第j个元素就直接将这个元素作为Key放入到hashmap中并将value置为1
            if (!map.containsKey(array[j])) {
                map.put(array[j], 1);
            } else {
                //使用count来标记第j个元素在hashmap中出现的次数
                int count = map.get(array[j]);
                //当hashmap中存在第j个元素就将这个元素出现的次数+1
                map.put(array[j], ++count);
                //判断元素出现次数超过总数的一半就直接返回
                if (count * 2 > i) {
                    return array[j];
                }
            }

        }

        return 0;

    }

}
