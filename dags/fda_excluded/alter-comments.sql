/* fda_excluded_product */
COMMENT ON COLUMN datasource.fda_excluded_product.productid IS 'ProductID is a concatenation of the NDCproduct code and SPL documentID. It is included to help prevent duplicate rows from appearing when joining the product and package files together. It has no regulatory value or significance.';
COMMENT ON COLUMN datasource.fda_excluded_product.productndc IS 'The labeler code and product code segments of the National Drug Code number, separated by a hyphen. Asterisks are no longer used or included within the product code segment to indicate certain configurations of the NDC.  www.fda.gov/edrls under Structured Product Labeling Resources.';
COMMENT ON COLUMN datasource.fda_excluded_product.producttypename IS 'Indicates the type of product, such as Human Prescription Drug or Human OTC Drug. This data element corresponds to the “Document Type” of the SPL submission for the listing. The complete list of codes and translations can be found at';
COMMENT ON COLUMN datasource.fda_excluded_product.proprietaryname IS 'Also known as the trade name. It is the name of the product chosen by the labeler.';
COMMENT ON COLUMN datasource.fda_excluded_product.proprietarynamesuffix IS 'A suffix to the proprietary name, a value here should be appended to the ProprietaryName field to obtain the complete name of the product. This suffix is often used to distinguish characteristics of a product such as extended release (“XR”) or sleep aid (“PM”). Although many companies follow certain naming conventions for suffices, there is no recognized standard.';
COMMENT ON COLUMN datasource.fda_excluded_product.nonproprietaryname IS 'Sometimes called the generic name, this is usually the active ingredient(s) of the product.';
COMMENT ON COLUMN datasource.fda_excluded_product.dosageformname IS 'The translation of the DosageForm Code submitted by the firm. The complete list of codes and translations can be found www.fda.gov/edrls under Structured Product Labeling Resources.';
COMMENT ON COLUMN datasource.fda_excluded_product.routename IS 'The translation of the Route Code submitted by the firm, indicating route of administration. The complete list of codes and translations can be found at www.fda.gov/edrls under Structured Product Labeling Resources.';
COMMENT ON COLUMN datasource.fda_excluded_product.startmarketingdate IS 'This is the date that the labeler indicates was the start of its marketing of the drug product.';
COMMENT ON COLUMN datasource.fda_excluded_product.endmarketingdate IS 'This is the date the product will no longer be available on the market. If a product is no longer being manufactured, in most cases, the FDA recommends firms use the expiration date of the last lot produced as the EndMarketingDate, to reflect the potential for drug product to remain available after manufacturing has ceased. Products that are the subject of ongoing manufacturing will not ordinarily have any EndMarketingDate. Products with a value in the EndMarketingDate will be removed from the NDC Directory when the EndMarketingDate is reached.';
COMMENT ON COLUMN datasource.fda_excluded_product.marketingcategoryname IS 'Product types are broken down into several potential Marketing Categories, such as NDA/ANDA/BLA, OTC Monograph, or Unapproved Drug. One and only one Marketing Category may be chosen for a product, not all marketing categories are available to all product types. Currently, only final marketed product categories are included. The complete list of codes and translations can be found at www.fda.gov/edrls under Structured Product Labeling Resources.';
COMMENT ON COLUMN datasource.fda_excluded_product.applicationnumber IS 'This corresponds to the NDA, ANDA, or BLA number reported by the labeler for products which have the corresponding Marketing Category designated. If the designated Marketing Category is OTC Monograph Final or OTC Monograph Not Final, then the Application number will be the CFR citation corresponding to the appropriate Monograph (e.g. “part 341”). For unapproved drugs, this field will be null.';
COMMENT ON COLUMN datasource.fda_excluded_product.labelername IS 'Name of Company corresponding to the labeler code segment of the ProductNDC.';
COMMENT ON COLUMN datasource.fda_excluded_product.substancename IS 'This is the active ingredient list. Each ingredient name is the preferred term of the UNII code submitted.';
COMMENT ON COLUMN datasource.fda_excluded_product.active_numerator_strength IS 'These are the strength values (to be used with units below) of each active ingredient, listed in the same order as the SubstanceName field above.';
COMMENT ON COLUMN datasource.fda_excluded_product.active_ingred_unit IS 'These are the units to be used with the strength values above, listed in the same order as the SubstanceName and SubstanceNumber (ActiveNumeratorStrength).';
COMMENT ON COLUMN datasource.fda_excluded_product.pharm_classes IS 'These are the reported pharmacological class categories corresponding to the SubstanceNames listed above.';
COMMENT ON COLUMN datasource.fda_excluded_product.deaschedule IS 'This is the assigned DEA Schedule number as reported by the labeler. Values are CI, CII, CIII, CIV, and CV.';
COMMENT ON COLUMN datasource.fda_excluded_product.ndc_exclude_flag IS 'Values = ‘Y’, ‘N’, ‘E’, or ‘I’. This indicates whether the product has been removed/excluded from the NDC Directory for failure to respond to FDA’s requests for correction to deficient or non-compliant submissions (‘Y’), or because the listing certification is expired (‘E’), or because the listing data was inactivated by FDA (‘I’). The PRODUCT.XLS and PRODUCT.TXT files only contain listing records where NDC_EXCLUDE_FLAG=’N’. The PRODUCTS_EXCLUDED.XLS and PRODUCTS_EXCLUDED.TXT file contains all listing records with an NDC_EXCLUDE_FLAG of ‘Y’, ‘E’, and ‘I’.';
COMMENT ON COLUMN datasource.fda_excluded_product.listing_record_certified_through IS 'This is the date when the listing record will expire if not updated or certified by the firm.';

/* fda_excluded_package */
COMMENT ON COLUMN datasource.fda_excluded_package.productid IS 'ProductID is a concatenation of the NDCproduct code and SPL documentID. It is included to help prevent duplicate rows from appearing when joining the product and package files together. It has no regulatory value or significance.';
COMMENT ON COLUMN datasource.fda_excluded_package.productndc IS 'The labeler code and product code segments of the National Drug Code number, separated by a hyphen. Asterisks are no longer used or included within the product code segment to indicate certain configurations of the NDC.';
COMMENT ON COLUMN datasource.fda_excluded_package.ndcpackagecode IS 'The labeler code, product code, and package code segments of the National Drug Code number, separated by hyphens. Asterisks are no longer used or included within the product and package code segments to indicate certain configurations of the NDC.';
COMMENT ON COLUMN datasource.fda_excluded_package.packagedescription IS 'A description of the size and type of packaging in sentence form. Multilevel packages will have the descriptions concatenated together. For example: 4 BOTTLES in 1 CARTON/100 TABLETS in 1 BOTTLE.';
COMMENT ON COLUMN datasource.fda_excluded_package.startmarketingdate IS 'This is the date that the labeler indicates was the start of its marketing of the drug product.';
COMMENT ON COLUMN datasource.fda_excluded_package.endmarketingdate IS 'This is the date the product will no longer be available on the market. If a product is no longer being manufactured, in most cases, the FDA recommends firms use the expiration date of the last lot produced as the EndMarketingDate, to reflect the potential for drug product to remain available after manufacturing has ceased. Products that are the subject of ongoing manufacturing will not ordinarily have any EndMarketingDate. Products with a value in the EndMarketingDate will be removed from the NDC Directory when the EndMarketingDate is reached.';
COMMENT ON COLUMN datasource.fda_excluded_package.ndc_exclude_flag IS 'Values = ‘Y’, ‘N’, ‘E’, or ‘I’. This indicates whether the PACKAGE has been removed/excluded from the NDC Directory for failure to respond to FDA’s requests for correction to deficient or non-compliant submissions (‘Y’), or because the listing certification is expired (‘E’), or because the listing data was inactivated by FDA (‘I’). The PACKAGE.XLS and PACKAGE.TXT files only contain listing records where NDC_EXCLUDE_FLAG=’N’. The PACKAGES_EXCLUDED.XLS and PACKAGES_EXCLUDED.TXT file contains all listing records with an NDC_EXCLUDE_FLAG of ‘Y’, ‘E’, and ‘I’.';
COMMENT ON COLUMN datasource.fda_excluded_package.sample_package IS 'This indicates if the package is to be distributed as a sample package. Values = ‘Y’ or ‘N’';
