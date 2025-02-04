/* datasource.cms_senior_savings_model */
DROP TABLE IF EXISTS datasource.cms_senior_savings_model CASCADE;

CREATE TABLE datasource.cms_senior_savings_model (
contract_id           TEXT NOT NULL,
plan_id         TEXT NOT NULL,
segment_id      TEXT,
rxcui  TEXT,
copay  TEXT
);

COPY datasource.cms_senior_savings_model
FROM '{{ ti.xcom_pull(task_ids='extract') }}/senior savings model file PPUF_{{params.year}}Q{{params.quarter}}.txt' DELIMITER '|' CSV HEADER;;