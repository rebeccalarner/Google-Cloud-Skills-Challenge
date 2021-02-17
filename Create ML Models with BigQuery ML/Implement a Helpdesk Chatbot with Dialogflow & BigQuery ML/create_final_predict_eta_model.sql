#use a few more fields during training and see if there is an improvement: seniority, experience and type.
#The final trained model will be named predict_eta.

CREATE OR REPLACE MODEL `helpdesk.predict_eta`
OPTIONS(model_type='linear_reg') AS
SELECT
 seniority,
 experience,
 category,
 type,
 resolutiontime as label
FROM
  `helpdesk.issues`;