# bayesian-classifier-testing-R
This Model was created to test NaiveBayes Classification and compare the diffrence between accurcy depending on what is the Feature selected as a Response.
### Features Selected to test the model
The Dataset is a nvtest.csv Dataset that has the data of the ***income*** based on the ***age/gender/education***, Based on that we choose 2 random features to combare ***income/gender***.
## Results
#### First Feature (Income)
This Model with Income as response after training it made A priori probabilities finding frequent itemsets in a dataset for the income is in the range of 10-50K with probability = 80%.
The model accuracy reached 79.5%.
#### Second Feature (Gender)
This Model with Gender as response after training it made A priori probabilities finding frequent itemsets in a dataset for the gender class for Male with probability = 56%.
The model accuracy reached 58% that is much lower than the first model, indicating that Gender is not a dependent class to be predicted in this model.
## Concuusion
This model tells us that Bayesian Classification works well with dependant data more then independent data features and that came clear when we tried to predict the gender and accuracy was very low not like when we used income
