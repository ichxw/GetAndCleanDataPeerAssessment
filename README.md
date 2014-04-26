HEAD README.md 
---------------

### The repository includes the following three files: 

-   **README.md**:This file is to explain how all the files within the
    repository work and how they are connected.

-   **CodeBook.md**: describes the variables, the data, and the transformations
    performed on the data.

-   **run_analysis.R**: the script which is used to get, clean, and transform
    the original data.

### The run_analysis.R script contains the following parts: 

-   **mergeData()**: This function reads the data of the train and the test sets
    respectively to create two data frames: train_data and test_data. Then row
    join to merge the two data frames to form a raw data.

-   **extractData()**: This function uses grep to match the column names of the
    raw data frame to find the mean and standard deviation variables, then
    extracts part of the data frame wanted.

-   **mapActivityName()**: This function changes the activity numbers into
    activity  labels according the activity_labels file.

-   **changeNames()**: This function renames the labels in the data set to make
    them more readable.

-   **reshapeData()**: This function calculate the mean of each variables which
    are grouped by the combination of subject and activity.

-   **example part**: On the bottom of the file, there is a piece of code which
    shows how the above functions are used to produce the output: a tidy data
    set and a reshaped data set.

### To run to script:

1.  Start up RStudio

2.  Download the project data, and unzip it in the working directory

3.  Open the run_analysis.R in RStudio, select all the lines to run. Or just
    type in source("run_analysis.R") in the console.

4.  The output files are tidyData.text and reshapedData.text



