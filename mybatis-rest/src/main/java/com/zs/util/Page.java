
package com.zs.util;

import java.io.Serializable;

/**
 * <pre>
 *    描述信息
 * </pre>
 *
 * @author zhaishuo
 * @version $Id: Page.java, v1.0 2019/11/14 15:02 zhaishuo Exp $
 */
public class Page implements Serializable {

    /**
     * the serialVersionUID
     */
    private static final long serialVersionUID = 5660401805050238140L;
    
    private int totalNumber;//总条数

    private int pageNum;//当前第几页

    private int totalPage;//总页数

    private int pageSize = 5;//每页显示条数

    private int dbIndex;//数据库中limit的参数，从第几条开始取

    private int dbNumber;//数据库中limit的参数，一共取多少条

    /**
      * 根据当前对象中属性值计算并设置相关属性值
      */
    public void count() {
        // 计算总页数
        int totalPageTemp = this.totalNumber / this.pageSize;
        int plus = (this.totalNumber % this.pageSize) == 0 ? 0 : 1;
        totalPageTemp = totalPageTemp + plus;
        if (totalPageTemp <= 0) {
            totalPageTemp = 1;
        }
        this.totalPage = totalPageTemp;

        // 设置当前页数
        // 总页数小于当前页数，应将当前页数设置为总页数
        if (this.totalPage < this.pageNum) {
            this.pageNum = this.totalPage;
        }

        // 当前页数小于1设置为1
        if (this.pageNum < 1) {
            this.pageNum = 1;
        }


        // 设置limit的参数
        this.dbIndex = (this.pageNum - 1) * this.pageSize;
        this.dbNumber = this.pageSize;
    }

    //设置totalNumber时候需要计算count
    public void setTotalNumber(int totalNumber) {
        this.totalNumber = totalNumber;
        this.count();
    }
    
    //设置pageNumber时候需要计算count
    public void setPageSize(int pageSize) { 
        this.pageSize = pageSize;
//        this.count();
    }

    /**
     * Getter method for property <tt>totalNumber</tt>.
     *
     * @return totalNumber  int
     */
    public int getTotalNumber() {
        return totalNumber;
    }

    /**
     * Getter method for property <tt>pageNum</tt>.
     *
     * @return pageNum  int
     */
    public int getPageNum() {
        return pageNum;
    }

    /**
     * Setter method for property <tt>pageNum</tt>.
     *
     * @param pageNum int value to be assigned to property pageNum.
     */
    public void setPageNum(int pageNum) {
        this.pageNum = pageNum;
    }

    /**
     * Getter method for property <tt>totalPage</tt>.
     *
     * @return totalPage  int
     */
    public int getTotalPage() {
        return totalPage;
    }

    /**
     * Setter method for property <tt>totalPage</tt>.
     *
     * @param totalPage int value to be assigned to property totalPage.
     */
    public void setTotalPage(int totalPage) {
        this.totalPage = totalPage;
    }

    /**
     * Getter method for property <tt>pageSize</tt>.
     *
     * @return pageSize  int
     */
    public int getPageSize() {
        return pageSize;
    }

    /**
     * Getter method for property <tt>dbIndex</tt>.
     *
     * @return dbIndex  int
     */
    public int getDbIndex() {
        return dbIndex;
    }

    /**
     * Setter method for property <tt>dbIndex</tt>.
     *
     * @param dbIndex int value to be assigned to property dbIndex.
     */
    public void setDbIndex(int dbIndex) {
        this.dbIndex = dbIndex;
    }

    /**
     * Getter method for property <tt>dbNumber</tt>.
     *
     * @return dbNumber  int
     */
    public int getDbNumber() {
        return dbNumber;
    }

    /**
     * Setter method for property <tt>dbNumber</tt>.
     *
     * @param dbNumber int value to be assigned to property dbNumber.
     */
    public void setDbNumber(int dbNumber) {
        this.dbNumber = dbNumber;
    }
}
