#see where your model made an incorrect prediction using the new testing dataset
SELECT * FROM `bracketology.ncaa_2018_predictions`
WHERE predicted_label <> label;
