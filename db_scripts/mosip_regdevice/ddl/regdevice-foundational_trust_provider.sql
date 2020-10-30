-- -------------------------------------------------------------------------------------------------
-- Database Name: mosip_regdevice
-- Table Name 	: regdevice.foundational_trust_provider
-- Purpose    	: Foundational Trust Provider : To refere all foundational trust provider, This provider will issue certificates to the chip/device manufacturer to certify devices.
--           
-- Create By   	: Sadanandegowda
-- Created Date	: Aug-2019
-- 
-- Modified Date        Modified By         Comments / Remarks
-- ------------------------------------------------------------------------------------------
-- 
-- ------------------------------------------------------------------------------------------

-- object: regdevice.foundational_trust_provider | type: TABLE --
-- DROP TABLE IF EXISTS regdevice.foundational_trust_provider CASCADE;
CREATE TABLE regdevice.foundational_trust_provider(
	id character varying(36) NOT NULL,
	partner_org_name character varying(128),
	is_active boolean NOT NULL,
	cr_by character varying(256) NOT NULL,
	cr_dtimes timestamp NOT NULL,
	upd_by character varying(256),
	upd_dtimes timestamp,
	is_deleted boolean,
	del_dtimes timestamp,
	CONSTRAINT pk_ftp_id PRIMARY KEY (id)

);
-- ddl-end --
COMMENT ON TABLE regdevice.foundational_trust_provider IS 'Foundational Trust Provider : To refere all foundational trust provider, This provider will issue certificates to the chip/device manufacturer to certify devices.';
-- ddl-end --
COMMENT ON COLUMN regdevice.foundational_trust_provider.id IS 'Foundational Trust Provider ID: Unique ID of chip and chip details.';
-- ddl-end --
COMMENT ON COLUMN regdevice.foundational_trust_provider.partner_org_name IS 'Partner Organisation Name';
-- ddl-end --
COMMENT ON COLUMN regdevice.foundational_trust_provider.is_active IS 'IS_Active : Flag to mark whether the record/device is Active or In-active';
-- ddl-end --
COMMENT ON COLUMN regdevice.foundational_trust_provider.cr_by IS 'Created By : ID or name of the user who create / insert record';
-- ddl-end --
COMMENT ON COLUMN regdevice.foundational_trust_provider.cr_dtimes IS 'Created DateTimestamp : Date and Timestamp when the record is created/inserted';
-- ddl-end --
COMMENT ON COLUMN regdevice.foundational_trust_provider.upd_by IS 'Updated By : ID or name of the user who update the record with new values';
-- ddl-end --
COMMENT ON COLUMN regdevice.foundational_trust_provider.upd_dtimes IS 'Updated DateTimestamp : Date and Timestamp when any of the fields in the record is updated with new values.';
-- ddl-end --
COMMENT ON COLUMN regdevice.foundational_trust_provider.is_deleted IS 'IS_Deleted : Flag to mark whether the record is Soft deleted.';
-- ddl-end --
COMMENT ON COLUMN regdevice.foundational_trust_provider.del_dtimes IS 'Deleted DateTimestamp : Date and Timestamp when the record is soft deleted with is_deleted=TRUE';
-- ddl-end --