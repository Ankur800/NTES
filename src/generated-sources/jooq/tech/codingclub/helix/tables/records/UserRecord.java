/**
 * This class is generated by jOOQ
 */
package tech.codingclub.helix.tables.records;

/**
 * This class is generated by jOOQ.
 */
@javax.annotation.Generated(value    = { "http://www.jooq.org", "3.3.2" },
                            comments = "This class is generated by jOOQ")
@java.lang.SuppressWarnings({ "all", "unchecked", "rawtypes" })
public class UserRecord extends org.jooq.impl.UpdatableRecordImpl<tech.codingclub.helix.tables.records.UserRecord> implements org.jooq.Record9<java.lang.Long, java.lang.String, java.lang.String, java.lang.String, java.lang.String, java.lang.String, java.lang.String, java.lang.String, java.lang.String> {

	private static final long serialVersionUID = 1950172029;

	/**
	 * Setter for <code>public.user.id</code>.
	 */
	public void setId(java.lang.Long value) {
		setValue(0, value);
	}

	/**
	 * Getter for <code>public.user.id</code>.
	 */
	public java.lang.Long getId() {
		return (java.lang.Long) getValue(0);
	}

	/**
	 * Setter for <code>public.user.name</code>.
	 */
	public void setName(java.lang.String value) {
		setValue(1, value);
	}

	/**
	 * Getter for <code>public.user.name</code>.
	 */
	public java.lang.String getName() {
		return (java.lang.String) getValue(1);
	}

	/**
	 * Setter for <code>public.user.email</code>.
	 */
	public void setEmail(java.lang.String value) {
		setValue(2, value);
	}

	/**
	 * Getter for <code>public.user.email</code>.
	 */
	public java.lang.String getEmail() {
		return (java.lang.String) getValue(2);
	}

	/**
	 * Setter for <code>public.user.password</code>.
	 */
	public void setPassword(java.lang.String value) {
		setValue(3, value);
	}

	/**
	 * Getter for <code>public.user.password</code>.
	 */
	public java.lang.String getPassword() {
		return (java.lang.String) getValue(3);
	}

	/**
	 * Setter for <code>public.user.token</code>.
	 */
	public void setToken(java.lang.String value) {
		setValue(4, value);
	}

	/**
	 * Getter for <code>public.user.token</code>.
	 */
	public java.lang.String getToken() {
		return (java.lang.String) getValue(4);
	}

	/**
	 * Setter for <code>public.user.from</code>.
	 */
	public void setFrom(java.lang.String value) {
		setValue(5, value);
	}

	/**
	 * Getter for <code>public.user.from</code>.
	 */
	public java.lang.String getFrom() {
		return (java.lang.String) getValue(5);
	}

	/**
	 * Setter for <code>public.user.to</code>.
	 */
	public void setTo(java.lang.String value) {
		setValue(6, value);
	}

	/**
	 * Getter for <code>public.user.to</code>.
	 */
	public java.lang.String getTo() {
		return (java.lang.String) getValue(6);
	}

	/**
	 * Setter for <code>public.user.live_station</code>.
	 */
	public void setLiveStation(java.lang.String value) {
		setValue(7, value);
	}

	/**
	 * Getter for <code>public.user.live_station</code>.
	 */
	public java.lang.String getLiveStation() {
		return (java.lang.String) getValue(7);
	}

	/**
	 * Setter for <code>public.user.live_goingTo</code>.
	 */
	public void setLiveGoingto(java.lang.String value) {
		setValue(8, value);
	}

	/**
	 * Getter for <code>public.user.live_goingTo</code>.
	 */
	public java.lang.String getLiveGoingto() {
		return (java.lang.String) getValue(8);
	}

	// -------------------------------------------------------------------------
	// Primary key information
	// -------------------------------------------------------------------------

	/**
	 * {@inheritDoc}
	 */
	@Override
	public org.jooq.Record1<java.lang.Long> key() {
		return (org.jooq.Record1) super.key();
	}

	// -------------------------------------------------------------------------
	// Record9 type implementation
	// -------------------------------------------------------------------------

	/**
	 * {@inheritDoc}
	 */
	@Override
	public org.jooq.Row9<java.lang.Long, java.lang.String, java.lang.String, java.lang.String, java.lang.String, java.lang.String, java.lang.String, java.lang.String, java.lang.String> fieldsRow() {
		return (org.jooq.Row9) super.fieldsRow();
	}

	/**
	 * {@inheritDoc}
	 */
	@Override
	public org.jooq.Row9<java.lang.Long, java.lang.String, java.lang.String, java.lang.String, java.lang.String, java.lang.String, java.lang.String, java.lang.String, java.lang.String> valuesRow() {
		return (org.jooq.Row9) super.valuesRow();
	}

	/**
	 * {@inheritDoc}
	 */
	@Override
	public org.jooq.Field<java.lang.Long> field1() {
		return tech.codingclub.helix.tables.User.USER.ID;
	}

	/**
	 * {@inheritDoc}
	 */
	@Override
	public org.jooq.Field<java.lang.String> field2() {
		return tech.codingclub.helix.tables.User.USER.NAME;
	}

	/**
	 * {@inheritDoc}
	 */
	@Override
	public org.jooq.Field<java.lang.String> field3() {
		return tech.codingclub.helix.tables.User.USER.EMAIL;
	}

	/**
	 * {@inheritDoc}
	 */
	@Override
	public org.jooq.Field<java.lang.String> field4() {
		return tech.codingclub.helix.tables.User.USER.PASSWORD;
	}

	/**
	 * {@inheritDoc}
	 */
	@Override
	public org.jooq.Field<java.lang.String> field5() {
		return tech.codingclub.helix.tables.User.USER.TOKEN;
	}

	/**
	 * {@inheritDoc}
	 */
	@Override
	public org.jooq.Field<java.lang.String> field6() {
		return tech.codingclub.helix.tables.User.USER.FROM;
	}

	/**
	 * {@inheritDoc}
	 */
	@Override
	public org.jooq.Field<java.lang.String> field7() {
		return tech.codingclub.helix.tables.User.USER.TO;
	}

	/**
	 * {@inheritDoc}
	 */
	@Override
	public org.jooq.Field<java.lang.String> field8() {
		return tech.codingclub.helix.tables.User.USER.LIVE_STATION;
	}

	/**
	 * {@inheritDoc}
	 */
	@Override
	public org.jooq.Field<java.lang.String> field9() {
		return tech.codingclub.helix.tables.User.USER.LIVE_GOINGTO;
	}

	/**
	 * {@inheritDoc}
	 */
	@Override
	public java.lang.Long value1() {
		return getId();
	}

	/**
	 * {@inheritDoc}
	 */
	@Override
	public java.lang.String value2() {
		return getName();
	}

	/**
	 * {@inheritDoc}
	 */
	@Override
	public java.lang.String value3() {
		return getEmail();
	}

	/**
	 * {@inheritDoc}
	 */
	@Override
	public java.lang.String value4() {
		return getPassword();
	}

	/**
	 * {@inheritDoc}
	 */
	@Override
	public java.lang.String value5() {
		return getToken();
	}

	/**
	 * {@inheritDoc}
	 */
	@Override
	public java.lang.String value6() {
		return getFrom();
	}

	/**
	 * {@inheritDoc}
	 */
	@Override
	public java.lang.String value7() {
		return getTo();
	}

	/**
	 * {@inheritDoc}
	 */
	@Override
	public java.lang.String value8() {
		return getLiveStation();
	}

	/**
	 * {@inheritDoc}
	 */
	@Override
	public java.lang.String value9() {
		return getLiveGoingto();
	}

	/**
	 * {@inheritDoc}
	 */
	@Override
	public UserRecord value1(java.lang.Long value) {
		setId(value);
		return this;
	}

	/**
	 * {@inheritDoc}
	 */
	@Override
	public UserRecord value2(java.lang.String value) {
		setName(value);
		return this;
	}

	/**
	 * {@inheritDoc}
	 */
	@Override
	public UserRecord value3(java.lang.String value) {
		setEmail(value);
		return this;
	}

	/**
	 * {@inheritDoc}
	 */
	@Override
	public UserRecord value4(java.lang.String value) {
		setPassword(value);
		return this;
	}

	/**
	 * {@inheritDoc}
	 */
	@Override
	public UserRecord value5(java.lang.String value) {
		setToken(value);
		return this;
	}

	/**
	 * {@inheritDoc}
	 */
	@Override
	public UserRecord value6(java.lang.String value) {
		setFrom(value);
		return this;
	}

	/**
	 * {@inheritDoc}
	 */
	@Override
	public UserRecord value7(java.lang.String value) {
		setTo(value);
		return this;
	}

	/**
	 * {@inheritDoc}
	 */
	@Override
	public UserRecord value8(java.lang.String value) {
		setLiveStation(value);
		return this;
	}

	/**
	 * {@inheritDoc}
	 */
	@Override
	public UserRecord value9(java.lang.String value) {
		setLiveGoingto(value);
		return this;
	}

	/**
	 * {@inheritDoc}
	 */
	@Override
	public UserRecord values(java.lang.Long value1, java.lang.String value2, java.lang.String value3, java.lang.String value4, java.lang.String value5, java.lang.String value6, java.lang.String value7, java.lang.String value8, java.lang.String value9) {
		return this;
	}

	// -------------------------------------------------------------------------
	// Constructors
	// -------------------------------------------------------------------------

	/**
	 * Create a detached UserRecord
	 */
	public UserRecord() {
		super(tech.codingclub.helix.tables.User.USER);
	}

	/**
	 * Create a detached, initialised UserRecord
	 */
	public UserRecord(java.lang.Long id, java.lang.String name, java.lang.String email, java.lang.String password, java.lang.String token, java.lang.String from, java.lang.String to, java.lang.String liveStation, java.lang.String liveGoingto) {
		super(tech.codingclub.helix.tables.User.USER);

		setValue(0, id);
		setValue(1, name);
		setValue(2, email);
		setValue(3, password);
		setValue(4, token);
		setValue(5, from);
		setValue(6, to);
		setValue(7, liveStation);
		setValue(8, liveGoingto);
	}
}
