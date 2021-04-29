package proj.com.util;

public class PagingVO {

	private int nowPage; // 현재페이지
	private int startPage; // 페이징 시작페이지
	private int endPage; // 페이징 끝페이지
	private int totalRecord; // 총 건수
	private int cntPerPage; // 한 페이지당 건수
	private int lastPage; // 마지막 페이지
	private int rowStart;
	private int rowEnd;
	private int pageRange = 10;
	
	public PagingVO() {
	}

	public PagingVO(int nowPage, int totalRecord, int cntPerPage) {
		this.nowPage = nowPage;
		this.totalRecord = totalRecord;
		this.cntPerPage = cntPerPage;
//		setNowPage(nowPage);
//		setCntPerPage(cntPerPage);
//		setTotalRecord(totalRecord);
		calcLastPage(getTotalRecord(), getCntPerPage());
		calcStartEndPage(getNowPage(), pageRange);
		calcRowStartEnd(getNowPage(), getCntPerPage());
	}

	// 마지막 페이지 계산
	public void calcLastPage(int total, int cntPerPage) {
		setLastPage((int) Math.ceil((double) total / (double) cntPerPage));
	}

	// 페이징 시작페이지, 끝페이지 계산
	public void calcStartEndPage(int nowPage, int pageRange) {
		setEndPage((int) (Math.ceil((double) nowPage / (double) pageRange)));
		if (getLastPage() < getEndPage()) {
			setEndPage(getLastPage());
		}
		setStartPage(getEndPage() - pageRange + 1);

		if (getStartPage() < 1) {
			setStartPage(1);
		}
	}

	// rowStart, rowEnd 계산
	public void calcRowStartEnd(int nowPage, int cntPerPage) {
		setRowEnd(nowPage * cntPerPage);
		setRowStart(getRowEnd() - cntPerPage + 1);
	}

	public int getNowPage() {
		return nowPage;
	}

	public void setNowPage(int nowPage) {
		this.nowPage = nowPage;
	}

	public int getStartPage() {
		return startPage;
	}

	public void setStartPage(int startPage) {
		this.startPage = startPage;
	}

	public int getEndPage() {
		return endPage;
	}

	public void setEndPage(int endPage) {
		this.endPage = endPage;
	}

	public int getTotalRecord() {
		return totalRecord;
	}

	public void setTotalRecord(int totalRecord) {
		this.totalRecord = totalRecord;
	}

	public int getCntPerPage() {
		return cntPerPage;
	}

	public void setCntPerPage(int cntPerPage) {
		this.cntPerPage = cntPerPage;
	}

	public int getRowStart() {
		return rowStart;
	}

	public void setRowStart(int rowStart) {
		this.rowStart = rowStart;
	}

	public int getRowEnd() {
		return rowEnd;
	}

	public void setRowEnd(int rowEnd) {
		this.rowEnd = rowEnd;
	}

	public int getLastPage() {
		return lastPage;
	}

	public void setLastPage(int lastPage) {
		this.lastPage = lastPage;
	}

}
