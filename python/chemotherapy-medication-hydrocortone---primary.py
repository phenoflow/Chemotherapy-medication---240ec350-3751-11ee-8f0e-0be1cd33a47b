# Lai A., 2023.

import sys, csv, re

codes = [{"code":"13043","system":"prod"},{"code":"3418","system":"prod"},{"code":"35175","system":"prod"},{"code":"38054","system":"prod"},{"code":"4535","system":"prod"},{"code":"6098","system":"prod"},{"code":"6339","system":"prod"},{"code":"8108","system":"prod"},{"code":"9574","system":"prod"}];
REQUIRED_CODES = 1;
with open(sys.argv[1], 'r') as file_in, open('chemotherapy-medication-potential-cases.csv', 'w', newline='') as file_out:
    csv_reader = csv.DictReader(file_in)
    csv_writer = csv.DictWriter(file_out, csv_reader.fieldnames + ["chemotherapy-medication-hydrocortone---primary-identified"])
    csv_writer.writeheader();
    codes_identified = 0;
    for row in csv_reader:
        newRow = row.copy();
        for cell in row:
            # Iterate cell lists (e.g. codes)
            for item in re.findall(r'\(([^,]*)\,', row[cell]):
                if(item in list(map(lambda code: code['code'], codes))): codes_identified+=1;
                if(codes_identified>=REQUIRED_CODES):
                    newRow["chemotherapy-medication-hydrocortone---primary-identified"] = "CASE";
                    break;
            if(codes_identified>=REQUIRED_CODES): break;
        if(codes_identified<REQUIRED_CODES):
            newRow["chemotherapy-medication-hydrocortone---primary-identified"] = "UNK";
        codes_identified=0;
        csv_writer.writerow(newRow)
