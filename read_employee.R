# read_employee.R
zipfile <- "Employee Profile.zip"
outdir <- "Employee_Profile_unzip"
if (!file.exists(zipfile)) stop(paste("Zip file not found:", zipfile))
unzip(zipfile, exdir = outdir)
files <- list.files(outdir, full.names = TRUE)
print(files)
if (length(files) >= 1) {
  df <- read.csv(files[1], stringsAsFactors = FALSE)
  print(head(df))
} else {
  print("No files found after unzip.")
}