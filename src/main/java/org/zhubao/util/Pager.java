/**
 * 
 */
package org.zhubao.util;

import java.util.List;

/**
 * @author Jason.Zhu
 * 
 */
public class Pager<T> {

	private int currentPage;
	private int pageSize;
	private int totalRecored;
	private int pageNum;
	private List<T> resultList;

	
	/**
	 * 
	 */
	public Pager() {
		super();
		// TODO Auto-generated constructor stub
	}


	public Pager(int pageSize, int currentPage, int recoredNum, List<T> list) {
		this.setPageSize(pageSize);
		this.setCurrentPage(currentPage);
		this.setResultList(list);
		this.setTotalRecored(recoredNum);
	}
	

	/**
	 * @param currentPage
	 * @param pageSize
	 * @param totalRecored
	 */
	public Pager(int currentPage, int pageSize, int totalRecored) {
		super();
		this.currentPage = currentPage;
		this.pageSize = pageSize;
		this.totalRecored = totalRecored;
	}



	public int getCurrentPage() {
		return currentPage;
	}

	public void setCurrentPage(int currentPage) {
		this.currentPage = currentPage;
	}

	public int getPageSize() {
		return pageSize;
	}

	public void setPageSize(int pageSize) {
		this.pageSize = pageSize;
	}

	public int getTotalRecored() {
		return totalRecored;
	}

	public void setTotalRecored(int totalRecored) {
		pageNum = totalRecored % pageSize == 0 ? totalRecored / pageSize
				: (totalRecored / pageSize + 1);
		this.setPageNum(pageNum);
		this.totalRecored = totalRecored;
	}

	public int getPageNum() {
		return pageNum;
	}

	public void setPageNum(int pageNum) {
		this.pageNum = pageNum;
	}

	public List<?> getResultList() {
		return resultList;
	}

	public void setResultList(List<T> resultList) {
		this.resultList = resultList;
	}

	public boolean isFirstPage() {
		return currentPage == 1;
	}
}