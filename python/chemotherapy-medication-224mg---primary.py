# Lai A., 2023.

import sys, csv, re

codes = [{"code":"10657","system":"prod"},{"code":"11334","system":"prod"},{"code":"12666","system":"prod"},{"code":"13952","system":"prod"},{"code":"14906","system":"prod"},{"code":"15047","system":"prod"},{"code":"15555","system":"prod"},{"code":"15717","system":"prod"},{"code":"2130","system":"prod"},{"code":"2157","system":"prod"},{"code":"22577","system":"prod"},{"code":"23111","system":"prod"},{"code":"25966","system":"prod"},{"code":"26299","system":"prod"},{"code":"26454","system":"prod"},{"code":"2787","system":"prod"},{"code":"31948","system":"prod"},{"code":"33519","system":"prod"},{"code":"35453","system":"prod"},{"code":"35589","system":"prod"},{"code":"35953","system":"prod"},{"code":"4233","system":"prod"},{"code":"5821","system":"prod"},{"code":"7919","system":"prod"},{"code":"9475","system":"prod"}];
REQUIRED_CODES = 1;
with open(sys.argv[1], 'r') as file_in, open('chemotherapy-medication-potential-cases.csv', 'w', newline='') as file_out:
    csv_reader = csv.DictReader(file_in)
    csv_writer = csv.DictWriter(file_out, csv_reader.fieldnames + ["chemotherapy-medication-224mg---primary-identified"])
    csv_writer.writeheader();
    codes_identified = 0;
    for row in csv_reader:
        newRow = row.copy();
        for cell in row:
            # Iterate cell lists (e.g. codes)
            for item in re.findall(r'\(([^,]*)\,', row[cell]):
                if(item in list(map(lambda code: code['code'], codes))): codes_identified+=1;
                if(codes_identified>=REQUIRED_CODES):
                    newRow["chemotherapy-medication-224mg---primary-identified"] = "CASE";
                    break;
            if(codes_identified>=REQUIRED_CODES): break;
        if(codes_identified<REQUIRED_CODES):
            newRow["chemotherapy-medication-224mg---primary-identified"] = "UNK";
        codes_identified=0;
        csv_writer.writerow(newRow)
