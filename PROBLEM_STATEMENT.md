1. Create a dataset with 500 columns and 200,000 rows with all numerical columns(combination of integer columns and double columns).

2. Compute the below attributes for every column.
 - count, mean, stddev, min, max
 - percentile: 1%, 5%, 25%, 50%, 75%, 95%, 99%

3. Return a json which should be array of objects of following structure.

``` json
{
    "name": "Column_Name",
    "count": <value>,
    "mean": <value>,
    "stddev": <value>,
    "min": <value>,
    "max": <value>,
    "p1": <value>,
    "p5": <value>,
    "p25": <value>,
    "p50": <value>,
    "p75": <value>,
    "p95": <value>,
    "p99": <value>,
}
```

4. Create another dataset with 3000 columns with 200,000 rows by repeating the above dataset 6 times.
5. Compute the same set of attributes for all columns. - Don’t reuse the values from 1st run.

6. Take the dataset with 3000 columns and select the first 500 columns(which is exact same 500 columns from the first run) and compute the same set of attributes.

**Expectations**

- For the above 3 runs, capture bytes read and execution time.
- The solution should scale linearly w.r.t exectution time.
- Explain the choices you make w.r.t the file format and algorithm used for the computation.
