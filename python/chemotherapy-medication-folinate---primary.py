# Lai A., 2023.

import sys, csv, re

codes = [{"code":"2169","system":"prod"},{"code":"22811","system":"prod"},{"code":"26006","system":"prod"},{"code":"34599","system":"prod"},{"code":"38371","system":"prod"},{"code":"39201","system":"prod"},{"code":"39468","system":"prod"},{"code":"09010200/08010602","system":"bnf"},{"code":"8010602","system":"bnf"}];
REQUIRED_CODES = 1;
with open(sys.argv[1], 'r') as file_in, open('chemotherapy-medication-potential-cases.csv', 'w', newline='') as file_out:
    csv_reader = csv.DictReader(file_in)
    csv_writer = csv.DictWriter(file_out, csv_reader.fieldnames + ["chemotherapy-medication-folinate---primary-identified"])
    csv_writer.writeheader();
    codes_identified = 0;
    for row in csv_reader:
        newRow = row.copy();
        for cell in row:
            # Iterate cell lists (e.g. codes)
            for item in re.findall(r'\(([^,]*)\,', row[cell]):
                if(item in list(map(lambda code: code['code'], codes))): codes_identified+=1;
                if(codes_identified>=REQUIRED_CODES):
                    newRow["chemotherapy-medication-folinate---primary-identified"] = "CASE";
                    break;
            if(codes_identified>=REQUIRED_CODES): break;
        if(codes_identified<REQUIRED_CODES):
            newRow["chemotherapy-medication-folinate---primary-identified"] = "UNK";
        codes_identified=0;
        csv_writer.writerow(newRow)
