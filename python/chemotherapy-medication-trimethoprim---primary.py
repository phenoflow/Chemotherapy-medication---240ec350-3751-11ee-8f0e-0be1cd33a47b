# Lai A., 2023.

import sys, csv, re

codes = [{"code":"31227","system":"prod"},{"code":"32908","system":"prod"},{"code":"33997","system":"prod"},{"code":"34379","system":"prod"},{"code":"37","system":"prod"},{"code":"39933","system":"prod"},{"code":"05010800/05040800","system":"bnf"},{"code":"5010800","system":"bnf"}];
REQUIRED_CODES = 1;
with open(sys.argv[1], 'r') as file_in, open('chemotherapy-medication-potential-cases.csv', 'w', newline='') as file_out:
    csv_reader = csv.DictReader(file_in)
    csv_writer = csv.DictWriter(file_out, csv_reader.fieldnames + ["chemotherapy-medication-trimethoprim---primary-identified"])
    csv_writer.writeheader();
    codes_identified = 0;
    for row in csv_reader:
        newRow = row.copy();
        for cell in row:
            # Iterate cell lists (e.g. codes)
            for item in re.findall(r'\(([^,]*)\,', row[cell]):
                if(item in list(map(lambda code: code['code'], codes))): codes_identified+=1;
                if(codes_identified>=REQUIRED_CODES):
                    newRow["chemotherapy-medication-trimethoprim---primary-identified"] = "CASE";
                    break;
            if(codes_identified>=REQUIRED_CODES): break;
        if(codes_identified<REQUIRED_CODES):
            newRow["chemotherapy-medication-trimethoprim---primary-identified"] = "UNK";
        codes_identified=0;
        csv_writer.writerow(newRow)
