# Lai A., 2023.

import sys, csv, re

codes = [{"code":"41281","system":"prod"},{"code":"10010202/06030200","system":"bnf"},{"code":"4080100","system":"bnf"},{"code":"5030101","system":"bnf"},{"code":"8010506","system":"bnf"},{"code":"8010508","system":"bnf"},{"code":"8010517","system":"bnf"},{"code":"8010522","system":"bnf"},{"code":"8010523","system":"bnf"},{"code":"8020100","system":"bnf"},{"code":"8020404","system":"bnf"},{"code":"9010300","system":"bnf"}];
REQUIRED_CODES = 1;
with open(sys.argv[1], 'r') as file_in, open('chemotherapy-medication-potential-cases.csv', 'w', newline='') as file_out:
    csv_reader = csv.DictReader(file_in)
    csv_writer = csv.DictWriter(file_out, csv_reader.fieldnames + ["chemotherapy-medication---primary-identified"])
    csv_writer.writeheader();
    codes_identified = 0;
    for row in csv_reader:
        newRow = row.copy();
        for cell in row:
            # Iterate cell lists (e.g. codes)
            for item in re.findall(r'\(([^,]*)\,', row[cell]):
                if(item in list(map(lambda code: code['code'], codes))): codes_identified+=1;
                if(codes_identified>=REQUIRED_CODES):
                    newRow["chemotherapy-medication---primary-identified"] = "CASE";
                    break;
            if(codes_identified>=REQUIRED_CODES): break;
        if(codes_identified<REQUIRED_CODES):
            newRow["chemotherapy-medication---primary-identified"] = "UNK";
        codes_identified=0;
        csv_writer.writerow(newRow)
