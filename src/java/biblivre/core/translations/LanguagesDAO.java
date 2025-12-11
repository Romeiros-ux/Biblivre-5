/*******************************************************************************
 * Este arquivo é parte do Biblivre5.
 * 
 * Biblivre5 é um software livre; você pode redistribuí-lo e/ou 
 * modificá-lo dentro dos termos da Licença Pública Geral GNU como 
 * publicada pela Fundação do Software Livre (FSF); na versão 3 da 
 * Licença, ou (caso queira) qualquer versão posterior.
 * 
 * Este programa é distribuído na esperança de que possa ser  útil, 
 * mas SEM NENHUMA GARANTIA; nem mesmo a garantia implícita de
 * MERCANTIBILIDADE OU ADEQUAÇÃO PARA UM FIM PARTICULAR. Veja a
 * Licença Pública Geral GNU para maiores detalhes.
 * 
 * Você deve ter recebido uma cópia da Licença Pública Geral GNU junto
 * com este programa, Se não, veja em <http://www.gnu.org/licenses/>.
 * 
 * @author Alberto Wagner <alberto@biblivre.org.br>
 * @author Danniel Willian <danniel@biblivre.org.br>
 ******************************************************************************/
package biblivre.core.translations;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.Set;
import java.util.TreeSet;

import biblivre.core.AbstractDAO;
import biblivre.core.exceptions.DAOException;

public class LanguagesDAO extends AbstractDAO {

	public static LanguagesDAO getInstance(String schema) {
		return (LanguagesDAO) AbstractDAO.getInstance(LanguagesDAO.class, schema);
	}
	
	public Set<LanguageDTO> list() {
		Set<LanguageDTO> set = new TreeSet<LanguageDTO>();

		Connection con = null;
		try {
			con = this.getConnection();
			
			// DEBUG: Ver qual schema está sendo usado
			Statement schemaCheck = con.createStatement();
			ResultSet schemaRs = schemaCheck.executeQuery("SELECT current_schema()");
			if (schemaRs.next()) {
				System.out.println("DEBUG LanguagesDAO current_schema: " + schemaRs.getString(1));
			}
			schemaCheck.close();
			
			StringBuilder sql = new StringBuilder(); 

			sql.append("SELECT language, text as name FROM translations WHERE key = 'language_name' ");			
			sql.append("ORDER BY name;");

			System.out.println("DEBUG LanguagesDAO.list() SQL: " + sql.toString());
			Statement st = con.createStatement();
			ResultSet rs = st.executeQuery(sql.toString());

			int count = 0;
			while (rs.next()) {
				try {
					LanguageDTO dto = this.populateDTO(rs);
					System.out.println("DEBUG LanguagesDAO found: " + dto.getLanguage() + " = " + dto.getName());
					set.add(dto);
					count++;
				} catch (Exception e) {
					this.logger.error(e.getMessage(), e);
				}
			}
			System.out.println("DEBUG LanguagesDAO.list() returned " + count + " languages");
		} catch (Exception e) {
			System.out.println("DEBUG LanguagesDAO.list() ERROR: " + e.getMessage());
			throw new DAOException(e);
		} finally {
			this.closeConnection(con);
		}

		return set;
	}
    
    private LanguageDTO populateDTO(ResultSet rs) throws SQLException {
    	LanguageDTO dto = new LanguageDTO();

        dto.setLanguage(rs.getString("language"));
        dto.setName(rs.getString("name"));

        return dto;
    }    
}
