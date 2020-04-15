# Calculating Univariate Statistics at Scale
## Objective
The requirements are outlined in [PROBLEM_STATEMENT.md](PROBLEM_STATEMENT.md).

## Solution
The data has been created using:
- 500 Column Data: [notebooks/Create_500_Column_Dataframe.ipynb](notebooks/Create_500_Column_Dataframe.ipynb)
- 3000 Column Data: [notebooks/Create_3000_Column_Dataframe.ipynb](notebooks/Create_3000_Column_Dataframe.ipynb)

- The first approach used the `summary()` function exposed by pyspark. However, this does not align with the expectation of the execution time scaling linearly w.r.t. number of Columns. This can be found at:
[notebooks/Generate_Statistics_Inbuilt_method.ipynb](notebooks/Generate_Statistics_Inbuilt_method.ipynb)
- The other approach converted the dataframe from a wide dataframe to a long dataframe and implemented custom stats functions over groups to arrive at the solution. This approach performs according to expectations. This can be found at:
[notebooks/Generate_Statistics_Custom_method.ipynb](notebooks/Generate_Statistics_Custom_method.ipynb)

