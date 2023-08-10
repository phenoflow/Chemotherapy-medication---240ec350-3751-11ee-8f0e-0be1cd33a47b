# Lai A., 2023.

import sys, csv, re

codes = [{"code":"13583","system":"prod"},{"code":"22463","system":"prod"},{"code":"24227","system":"prod"},{"code":"24868","system":"prod"},{"code":"26942","system":"prod"},{"code":"27089","system":"prod"},{"code":"27094","system":"prod"},{"code":"27618","system":"prod"},{"code":"33226","system":"prod"}];
REQUIRED_CODES = 1;
with open(sys.argv[1], 'r') as file_in, open('chemotherapy-medication-potential-cases.csv', 'w', newline='') as file_out:
    csv_reader = csv.DictReader(file_in)
    csv_writer = csv.DictWriter(file_out, csv_reader.fieldnames + ["chemotherapy-medication-roferon---primary-identified"])
    csv_writer.writeheader();
    codes_identified = 0;
    for row in csv_reader:
        newRow = row.copy();
        for cell in row:
            # Iterate cell lists (e.g. codes)
            for item in re.findall(r'\(([^,]*)\,', row[cell]):
                if(item in list(map(lambda code: code['code'], codes))): codes_identified+=1;
                if(codes_identified>=REQUIRED_CODES):
                    newRow["chemotherapy-medication-roferon---primary-identified"] = "CASE";
                    break;
            if(codes_identified>=REQUIRED_CODES): break;
        if(codes_identified<REQUIRED_CODES):
            newRow["chemotherapy-medication-roferon---primary-identified"] = "UNK";
        codes_identified=0;
        csv_writer.writerow(newRow)
