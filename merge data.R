file_list <- list.files(path = "STAT", pattern = "*.csv", full.names = TRUE)

all_data <- lapply(file_list, read.csv)
merged_data <- do.call(rbind, all_data)

write.csv(merged_data, "merged_dataset.csv", row.names = FALSE)
