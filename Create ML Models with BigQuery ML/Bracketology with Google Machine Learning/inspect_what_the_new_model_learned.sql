#Which features does the model weigh the most in win / loss outcome?
SELECT
  *
FROM
  ML.WEIGHTS(MODEL     `bracketology.ncaa_model_updated`)
ORDER BY ABS(weight) DESC;
