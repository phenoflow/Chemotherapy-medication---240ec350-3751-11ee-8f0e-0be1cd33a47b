# Lai A., 2023.

import sys, csv, re

codes = [{"code":"12690","system":"prod"},{"code":"12806","system":"prod"},{"code":"14832","system":"prod"},{"code":"15810","system":"prod"},{"code":"18521","system":"prod"},{"code":"21192","system":"prod"},{"code":"22355","system":"prod"},{"code":"26385","system":"prod"},{"code":"35364","system":"prod"},{"code":"35963","system":"prod"},{"code":"36127","system":"prod"},{"code":"36287","system":"prod"},{"code":"37273","system":"prod"},{"code":"9857","system":"prod"}];
REQUIRED_CODES = 1;
with open(sys.argv[1], 'r') as file_in, open('chemotherapy-medication-potential-cases.csv', 'w', newline='') as file_out:
    csv_reader = csv.DictReader(file_in)
    csv_writer = csv.DictWriter(file_out, csv_reader.fieldnames + ["chemotherapy-medication-alfan1---primary-identified"])
    csv_writer.writeheader();
    codes_identified = 0;
    for row in csv_reader:
        newRow = row.copy();
        for cell in row:
            # Iterate cell lists (e.g. codes)
            for item in re.findall(r'\(([^,]*)\,', row[cell]):
                if(item in list(map(lambda code: code['code'], codes))): codes_identified+=1;
                if(codes_identified>=REQUIRED_CODES):
                    newRow["chemotherapy-medication-alfan1---primary-identified"] = "CASE";
                    break;
            if(codes_identified>=REQUIRED_CODES): break;
        if(codes_identified<REQUIRED_CODES):
            newRow["chemotherapy-medication-alfan1---primary-identified"] = "UNK";
        codes_identified=0;
        csv_writer.writerow(newRow)
