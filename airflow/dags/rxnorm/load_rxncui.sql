/* datasource.rxnorm_rxncui */
DROP TABLE IF EXISTS datasource.rxnorm_rxncui CASCADE;

 CREATE TABLE datasource.rxnorm_rxncui (
 cui1           varchar(8),
 ver_start      varchar(40),
 ver_end        varchar(40),
 cardinality    varchar(8),
 cui2           varchar(8),
 blank          TEXT
);

COPY datasource.rxnorm_rxncui
FROM '{{ ti.xcom_pull(task_ids='extract') }}/rrf/RXNCUI.RRF'CSV DELIMITER '|' ENCODING 'UTF8' ESCAPE E'\b' QUOTE E'\b';
--ESCAPE and QOUTE characters are dummy to remove default
