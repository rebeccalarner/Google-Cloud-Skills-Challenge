#How many did our model get right for the 2018 NCAA tournament?
SELECT * FROM `bracketology.predictions`
WHERE predicted_label <> label;