# Lai A., 2023.

import sys, csv, re

codes = [{"code":"11253","system":"prod"},{"code":"12789","system":"prod"},{"code":"12983","system":"prod"},{"code":"13177","system":"prod"},{"code":"13198","system":"prod"},{"code":"16062","system":"prod"},{"code":"19400","system":"prod"},{"code":"20400","system":"prod"},{"code":"20408","system":"prod"},{"code":"22334","system":"prod"},{"code":"22698","system":"prod"},{"code":"2702","system":"prod"},{"code":"30407","system":"prod"},{"code":"33813","system":"prod"},{"code":"33956","system":"prod"},{"code":"36334","system":"prod"},{"code":"37685","system":"prod"}];
REQUIRED_CODES = 1;
with open(sys.argv[1], 'r') as file_in, open('chemotherapy-medication-potential-cases.csv', 'w', newline='') as file_out:
    csv_reader = csv.DictReader(file_in)
    csv_writer = csv.DictWriter(file_out, csv_reader.fieldnames + ["chemotherapy-medication-100000---primary-identified"])
    csv_writer.writeheader();
    codes_identified = 0;
    for row in csv_reader:
        newRow = row.copy();
        for cell in row:
            # Iterate cell lists (e.g. codes)
            for item in re.findall(r'\(([^,]*)\,', row[cell]):
                if(item in list(map(lambda code: code['code'], codes))): codes_identified+=1;
                if(codes_identified>=REQUIRED_CODES):
                    newRow["chemotherapy-medication-100000---primary-identified"] = "CASE";
                    break;
            if(codes_identified>=REQUIRED_CODES): break;
        if(codes_identified<REQUIRED_CODES):
            newRow["chemotherapy-medication-100000---primary-identified"] = "UNK";
        codes_identified=0;
        csv_writer.writerow(newRow)
