package biblivre.z3950;

import biblivre.core.AbstractDTO;
import biblivre.marc.MaterialType;
import org.marc4j.marc.Record;

/**
 * Stub Z3950Record - funcionalidade Z3950 desabilitada
 */
public class Z3950RecordDTO extends AbstractDTO {
	@java.io.Serial
	private static final long serialVersionUID = 1L;
	
	private String marc;
	private Record record;
	private MaterialType materialType;
	
	public String getMarc() { return marc; }
	public void setMarc(String marc) { this.marc = marc; }
	
	public Record getRecord() { return record; }
	public void setRecord(Record record) { this.record = record; }
	
	public MaterialType getMaterialType() { return materialType; }
	public void setMaterialType(MaterialType materialType) { this.materialType = materialType; }
}
