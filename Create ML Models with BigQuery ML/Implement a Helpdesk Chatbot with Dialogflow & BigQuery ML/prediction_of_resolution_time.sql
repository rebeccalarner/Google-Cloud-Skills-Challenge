WITH pred_table AS (
SELECT
  5 as seniority,
  '3-Advanced' as experience,
  'Billing' as category,
  'Request' as type
)
SELECT
  *
FROM
  ML.PREDICT(MODEL `helpdesk.predict_eta`,
    TABLE pred_table);

#When seniority is 5, experience is 3-Advanced, category is Billing, and type is Request, our model is saying that the average response time is 3.74 days.