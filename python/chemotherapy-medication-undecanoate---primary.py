# Lai A., 2023.

import sys, csv, re

codes = [{"code":"10514","system":"prod"},{"code":"10565","system":"prod"},{"code":"12224","system":"prod"},{"code":"12386","system":"prod"},{"code":"14839","system":"prod"},{"code":"14966","system":"prod"},{"code":"15814","system":"prod"},{"code":"1733","system":"prod"},{"code":"18155","system":"prod"},{"code":"18175","system":"prod"},{"code":"2094","system":"prod"},{"code":"2276","system":"prod"},{"code":"28355","system":"prod"},{"code":"35065","system":"prod"},{"code":"35176","system":"prod"},{"code":"35391","system":"prod"},{"code":"35530","system":"prod"},{"code":"35723","system":"prod"},{"code":"3775","system":"prod"},{"code":"4584","system":"prod"},{"code":"7407","system":"prod"},{"code":"8712","system":"prod"},{"code":"9022","system":"prod"}];
REQUIRED_CODES = 1;
with open(sys.argv[1], 'r') as file_in, open('chemotherapy-medication-potential-cases.csv', 'w', newline='') as file_out:
    csv_reader = csv.DictReader(file_in)
    csv_writer = csv.DictWriter(file_out, csv_reader.fieldnames + ["chemotherapy-medication-undecanoate---primary-identified"])
    csv_writer.writeheader();
    codes_identified = 0;
    for row in csv_reader:
        newRow = row.copy();
        for cell in row:
            # Iterate cell lists (e.g. codes)
            for item in re.findall(r'\(([^,]*)\,', row[cell]):
                if(item in list(map(lambda code: code['code'], codes))): codes_identified+=1;
                if(codes_identified>=REQUIRED_CODES):
                    newRow["chemotherapy-medication-undecanoate---primary-identified"] = "CASE";
                    break;
            if(codes_identified>=REQUIRED_CODES): break;
        if(codes_identified<REQUIRED_CODES):
            newRow["chemotherapy-medication-undecanoate---primary-identified"] = "UNK";
        codes_identified=0;
        csv_writer.writerow(newRow)
