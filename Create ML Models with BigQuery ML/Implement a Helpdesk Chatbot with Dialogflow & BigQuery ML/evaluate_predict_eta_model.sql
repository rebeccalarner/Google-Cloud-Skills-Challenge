WITH eval_table AS (
SELECT
 seniority,
 experience,
 category,
 type,
 resolutiontime as label
FROM
  helpdesk.issues
)
SELECT
  *
FROM
  ML.EVALUATE(MODEL helpdesk.predict_eta,
    TABLE eval_table);

#After adding the additional fields during training, we can see that our model has improved. 
#When the metrics r2_score and explained_variance are close to 1, there is evidence to suggest that our model is capturing a strong linear relationship. 
#We can also see that our *_error metrics are lower than before, which means our model will likely perform better.