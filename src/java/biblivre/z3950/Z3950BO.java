package biblivre.z3950;

import biblivre.core.AbstractBO;
import biblivre.core.AbstractDTO;
import biblivre.core.DTOCollection;
import java.util.List;
import java.util.ArrayList;

/**
 * Stub Z3950BO - funcionalidade Z3950 desabilitada
 */
public class Z3950BO extends AbstractBO {
	
	public static Z3950BO getInstance(String schema) {
		return new Z3950BO();
	}
	
	private Z3950BO() {
		// Stub
	}
	
	public List<Z3950AddressDTO> listAll() {
		return new ArrayList<Z3950AddressDTO>();
	}
	
	public DTOCollection<Z3950AddressDTO> search(String query, int limit, int offset) {
		return new DTOCollection<Z3950AddressDTO>();
	}
	
	public Z3950AddressDTO findById(Integer id) {
		return new Z3950AddressDTO();
	}
	
	public List<Z3950RecordDTO> search(List<Z3950AddressDTO> servers, String query) {
		return new ArrayList<Z3950RecordDTO>();
	}
	
	public boolean saveFromBiblivre3(List<? extends AbstractDTO> list) {
		return true;
	}
}
