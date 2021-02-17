#Build an ML model to predicts time taken to resolve an issue.
#The model type is a simple linear regression, and the trained model will be named predict_eta_v0 in the helpdesk dataset.

CREATE OR REPLACE MODEL `helpdesk.predict_eta_v0`
OPTIONS(model_type='linear_reg') AS
SELECT
 category,
 resolutiontime as label
FROM
  `helpdesk.issues`;