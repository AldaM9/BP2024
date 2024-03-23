library(Synth)

test_data_url <- "https://raw.githubusercontent.com/AldaM9/BP2024/test/dataset_test_3.csv"

test_dataset <- read.csv(test_data_url)

test_dataset$instore_cr <- as.numeric(test_dataset$instore_cr)

test_dataset


test_data_prep <- dataprep(
  foo = test_dataset,
  predictors = c(
    "instore_cr",
    "introre_area",
    "cc_transactions_count"
    ),
  special.predictors = list(
    list("ip_cr",44256:44498, "mean")
  ),
  dependent = "ip_cr",
  time.variable = "timestamp",
  unit.variable = "unit",
  unit.names.variable = "store_id",
  treatment.identifier = "P09A",
  controls.identifier = c("E16A",
                          "E17A",
                          "E01A",
                          "E02A",
                          "E03H",
                          "E04A",
                          "E05A",
                          "E06M",
                          "E07M",
                          "E08M",
                          "E09A",
                          "E10A",
                          "E11H",
                          "E12A",
                          "E13M",
                          "E14H",
                          "P01H",
                          "P05A",
                          "P08A"
  ),
  time.predictors.prior = 44256:44498,
  time.optimize.ssr = 44256:44498,
  time.plot = 44256:44712
)
