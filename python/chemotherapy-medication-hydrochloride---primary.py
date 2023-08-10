# Lai A., 2023.

import sys, csv, re

codes = [{"code":"04100300/08020400/23000000","system":"bnf"},{"code":"05050200/05050400/08020400/23010000","system":"bnf"},{"code":"4020100","system":"bnf"},{"code":"5010703","system":"bnf"},{"code":"8010512","system":"bnf"},{"code":"8010514","system":"bnf"},{"code":"8010521","system":"bnf"},{"code":"8010527","system":"bnf"},{"code":"9010400","system":"bnf"}];
REQUIRED_CODES = 1;
with open(sys.argv[1], 'r') as file_in, open('chemotherapy-medication-potential-cases.csv', 'w', newline='') as file_out:
    csv_reader = csv.DictReader(file_in)
    csv_writer = csv.DictWriter(file_out, csv_reader.fieldnames + ["chemotherapy-medication-hydrochloride---primary-identified"])
    csv_writer.writeheader();
    codes_identified = 0;
    for row in csv_reader:
        newRow = row.copy();
        for cell in row:
            # Iterate cell lists (e.g. codes)
            for item in re.findall(r'\(([^,]*)\,', row[cell]):
                if(item in list(map(lambda code: code['code'], codes))): codes_identified+=1;
                if(codes_identified>=REQUIRED_CODES):
                    newRow["chemotherapy-medication-hydrochloride---primary-identified"] = "CASE";
                    break;
            if(codes_identified>=REQUIRED_CODES): break;
        if(codes_identified<REQUIRED_CODES):
            newRow["chemotherapy-medication-hydrochloride---primary-identified"] = "UNK";
        codes_identified=0;
        csv_writer.writerow(newRow)
