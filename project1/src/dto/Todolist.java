package dto;

public class Todolist {
	
	private static final long serialVersionUID = -4274700572038677000L;
	
	private int tno;
	private String content;
	private String tdate;
	private boolean checked;
	
	
	public Todolist(int tno, String content, String tdate, boolean checked) {
		super();
		this.tno = tno;
		this.content = content;
		this.tdate = tdate;
		this.checked = checked;
	}
	
	public int getTno() {
		return tno;
	}
	public void setTno(int tno) {
		this.tno = tno;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public String getTdate() {
		return tdate;
	}
	public void setTdate(String tdate) {
		this.tdate = tdate;
	}
	public boolean isChecked() {
		return checked;
	}
	public void setChecked(boolean checked) {
		this.checked = checked;
	}


}
