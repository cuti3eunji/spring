package kr.or.ddit.common.model;

public class Page {
	private int page;
	private int pageSize;

	public Page(int page, int pageSize) {
		this.page = page;
		this.pageSize = pageSize;
	}
	
	//기본 생성자 
	public Page() {	}

	
	@Override
	public String toString() {
		return "Page [page=" + page + ", pageSize=" + pageSize + "]";
	}
	
	public int getPage() {
		return page == 0 ? 1 : page;
	}
	public void setPage(int page) {
		this.page = page;
	}
	public int getPageSize() {
		return pageSize == 0 ? 10 : pageSize;
	}
	public void setPageSize(int pageSize) {
		this.pageSize = pageSize;
	}
	
}
