
# copy report from file share
# parse out score column, print sum
# print line count
# error if file not found

# thanks randomuser.me: https://randomuser.me/api/?format=csv&results=15


$ErrorActionPreference = "Stop"

if (!(Test-Path "./data/report.csv")) {
  echo "data/report.csv not found"
  exit 1
}

Copy-Item -Path "./data/report.csv" -Destination "./report.csv"

$data = Import-Csv -Path "./report.csv"

$lines = $data.Count

$score = 0
$data | % { $score += $_.score }

echo "There are $lines lines in the report and the total score is $score."

Remove-Item -Path "./report.csv"
