package app.model;


// Generated 31 mars 2012 16:09:28 by Hibernate Tools 3.4.0.CR1

import java.util.HashSet;
import java.util.Set;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import static javax.persistence.GenerationType.IDENTITY;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.persistence.Table;

/**
 * Field generated by hbm2java
 */
@Entity
@Table(name = "field", catalog = "hibernate")
public class Field implements java.io.Serializable {

	private Integer idField;
	private AuthenticatedUser authenticatedUser;
	private String name;
	private Set<FieldOwnedRecords> fieldOwnedRecordses = new HashSet<FieldOwnedRecords>(
			0);

	public Field() {
	}

	public Field(AuthenticatedUser authenticatedUser, String name) {
		this.authenticatedUser = authenticatedUser;
		this.name = name;
	}

	public Field(AuthenticatedUser authenticatedUser, String name,
			Set<FieldOwnedRecords> fieldOwnedRecordses) {
		this.authenticatedUser = authenticatedUser;
		this.name = name;
		this.fieldOwnedRecordses = fieldOwnedRecordses;
	}

	@Id
	@GeneratedValue(strategy = IDENTITY)
	@Column(name = "id_field", unique = true, nullable = false)
	public Integer getIdField() {
		return this.idField;
	}

	public void setIdField(Integer idField) {
		this.idField = idField;
	}

	@ManyToOne(fetch = FetchType.LAZY)
	@JoinColumn(name = "id_user", nullable = false)
	public AuthenticatedUser getAuthenticatedUser() {
		return this.authenticatedUser;
	}

	public void setAuthenticatedUser(AuthenticatedUser authenticatedUser) {
		this.authenticatedUser = authenticatedUser;
	}

	@Column(name = "name", nullable = false, length = 20)
	public String getName() {
		return this.name;
	}

	public void setName(String name) {
		this.name = name;
	}

	@OneToMany(fetch = FetchType.LAZY, mappedBy = "field")
	public Set<FieldOwnedRecords> getFieldOwnedRecordses() {
		return this.fieldOwnedRecordses;
	}

	public void setFieldOwnedRecordses(
			Set<FieldOwnedRecords> fieldOwnedRecordses) {
		this.fieldOwnedRecordses = fieldOwnedRecordses;
	}

}
