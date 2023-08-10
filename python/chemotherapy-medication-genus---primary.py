# Lai A., 2023.

import sys, csv, re

codes = [{"code":"32051","system":"prod"},{"code":"32772","system":"prod"},{"code":"34451","system":"prod"},{"code":"34473","system":"prod"},{"code":"34626","system":"prod"},{"code":"34630","system":"prod"},{"code":"34684","system":"prod"},{"code":"34693","system":"prod"},{"code":"34816","system":"prod"},{"code":"380","system":"prod"},{"code":"40170","system":"prod"},{"code":"40395","system":"prod"}];
REQUIRED_CODES = 1;
with open(sys.argv[1], 'r') as file_in, open('chemotherapy-medication-potential-cases.csv', 'w', newline='') as file_out:
    csv_reader = csv.DictReader(file_in)
    csv_writer = csv.DictWriter(file_out, csv_reader.fieldnames + ["chemotherapy-medication-genus---primary-identified"])
    csv_writer.writeheader();
    codes_identified = 0;
    for row in csv_reader:
        newRow = row.copy();
        for cell in row:
            # Iterate cell lists (e.g. codes)
            for item in re.findall(r'\(([^,]*)\,', row[cell]):
                if(item in list(map(lambda code: code['code'], codes))): codes_identified+=1;
                if(codes_identified>=REQUIRED_CODES):
                    newRow["chemotherapy-medication-genus---primary-identified"] = "CASE";
                    break;
            if(codes_identified>=REQUIRED_CODES): break;
        if(codes_identified<REQUIRED_CODES):
            newRow["chemotherapy-medication-genus---primary-identified"] = "UNK";
        codes_identified=0;
        csv_writer.writerow(newRow)
