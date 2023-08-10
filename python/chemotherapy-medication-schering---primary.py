# Lai A., 2023.

import sys, csv, re

codes = [{"code":"12596","system":"prod"},{"code":"13562","system":"prod"},{"code":"15061","system":"prod"},{"code":"22392","system":"prod"},{"code":"22838","system":"prod"},{"code":"24423","system":"prod"},{"code":"24997","system":"prod"},{"code":"25451","system":"prod"},{"code":"27333","system":"prod"},{"code":"27377","system":"prod"},{"code":"31229","system":"prod"},{"code":"31598","system":"prod"},{"code":"31629","system":"prod"},{"code":"37784","system":"prod"},{"code":"40250","system":"prod"},{"code":"7194","system":"prod"}];
REQUIRED_CODES = 1;
with open(sys.argv[1], 'r') as file_in, open('chemotherapy-medication-potential-cases.csv', 'w', newline='') as file_out:
    csv_reader = csv.DictReader(file_in)
    csv_writer = csv.DictWriter(file_out, csv_reader.fieldnames + ["chemotherapy-medication-schering---primary-identified"])
    csv_writer.writeheader();
    codes_identified = 0;
    for row in csv_reader:
        newRow = row.copy();
        for cell in row:
            # Iterate cell lists (e.g. codes)
            for item in re.findall(r'\(([^,]*)\,', row[cell]):
                if(item in list(map(lambda code: code['code'], codes))): codes_identified+=1;
                if(codes_identified>=REQUIRED_CODES):
                    newRow["chemotherapy-medication-schering---primary-identified"] = "CASE";
                    break;
            if(codes_identified>=REQUIRED_CODES): break;
        if(codes_identified<REQUIRED_CODES):
            newRow["chemotherapy-medication-schering---primary-identified"] = "UNK";
        codes_identified=0;
        csv_writer.writerow(newRow)
