package biblivre.z3950;

import biblivre.core.AbstractDTO;

/**
 * Stub Z3950Address - funcionalidade Z3950 desabilitada
 */
public class Z3950AddressDTO extends AbstractDTO {
	@java.io.Serial
	private static final long serialVersionUID = 1L;
	
	private Integer id;
	private String name;
	private String url;
	private Integer port;
	private String collection;
	
	public Integer getId() { return id; }
	public void setId(Integer id) { this.id = id; }
	
	public String getName() { return name; }
	public void setName(String name) { this.name = name; }
	
	public String getUrl() { return url; }
	public void setUrl(String url) { this.url = url; }
	
	public Integer getPort() { return port; }
	public void setPort(Integer port) { this.port = port; }
	
	public String getCollection() { return collection; }
	public void setCollection(String collection) { this.collection = collection; }
}
