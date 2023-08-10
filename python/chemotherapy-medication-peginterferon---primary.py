# Lai A., 2023.

import sys, csv, re

codes = [{"code":"11312","system":"prod"},{"code":"11313","system":"prod"},{"code":"12620","system":"prod"},{"code":"12902","system":"prod"},{"code":"14535","system":"prod"},{"code":"16721","system":"prod"},{"code":"16754","system":"prod"},{"code":"16761","system":"prod"},{"code":"17432","system":"prod"},{"code":"19408","system":"prod"},{"code":"19416","system":"prod"},{"code":"19418","system":"prod"},{"code":"20789","system":"prod"},{"code":"24899","system":"prod"},{"code":"27092","system":"prod"},{"code":"29208","system":"prod"},{"code":"30318","system":"prod"},{"code":"32489","system":"prod"},{"code":"32625","system":"prod"}];
REQUIRED_CODES = 1;
with open(sys.argv[1], 'r') as file_in, open('chemotherapy-medication-potential-cases.csv', 'w', newline='') as file_out:
    csv_reader = csv.DictReader(file_in)
    csv_writer = csv.DictWriter(file_out, csv_reader.fieldnames + ["chemotherapy-medication-peginterferon---primary-identified"])
    csv_writer.writeheader();
    codes_identified = 0;
    for row in csv_reader:
        newRow = row.copy();
        for cell in row:
            # Iterate cell lists (e.g. codes)
            for item in re.findall(r'\(([^,]*)\,', row[cell]):
                if(item in list(map(lambda code: code['code'], codes))): codes_identified+=1;
                if(codes_identified>=REQUIRED_CODES):
                    newRow["chemotherapy-medication-peginterferon---primary-identified"] = "CASE";
                    break;
            if(codes_identified>=REQUIRED_CODES): break;
        if(codes_identified<REQUIRED_CODES):
            newRow["chemotherapy-medication-peginterferon---primary-identified"] = "UNK";
        codes_identified=0;
        csv_writer.writerow(newRow)
