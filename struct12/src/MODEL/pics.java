package MODEL;

public class pics {
	private int id;
	private String url,path;
	public pics() {
		super();
		// TODO Auto-generated constructor stub
	}
	public pics(int id, String url, String path) {
		super();
		this.id = id;
		this.url = url;
		this.path = path;
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getUrl() {
		return url;
	}
	public void setUrl(String url) {
		this.url = url;
	}
	public String getPath() {
		return path;
	}
	public void setPath(String path) {
		this.path = path;
	}
	public pics(String url, String path) {
		super();
		this.url = url;
		this.path = path;
	}
	
}
