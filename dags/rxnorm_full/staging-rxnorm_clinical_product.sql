/* staging.rxnorm_clinical_product (SCD/GPCK) */
DROP TABLE IF EXISTS staging.rxnorm_clinical_product CASCADE;

CREATE TABLE staging.rxnorm_clinical_product (
	clinical_product_rxcui 	VARCHAR(8) NOT NULL,
	clinical_product_name 	TEXT,
	clinical_product_tty 	VARCHAR(20),
	active					BOOLEAN,
	prescribable			BOOLEAN,
	PRIMARY KEY(clinical_product_rxcui)
);

INSERT INTO staging.rxnorm_clinical_product
SELECT
	product.rxcui AS clinical_product_rxcui
	, product.str AS clinical_product_name
	, product.tty AS clinical_product_tty
	, CASE WHEN product.suppress = 'N' THEN TRUE ELSE FALSE END AS active
	, CASE WHEN product.cvf = '4096' THEN TRUE ELSE FALSE END AS prescribable
FROM datasource.rxnorm_rxnconso product
WHERE product.tty IN('SCD', 'GPCK')
	AND product.sab = 'RXNORM';
