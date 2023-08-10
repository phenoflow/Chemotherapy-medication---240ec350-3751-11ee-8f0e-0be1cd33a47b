# Lai A., 2023.

import sys, csv, re

codes = [{"code":"12128","system":"prod"},{"code":"12816","system":"prod"},{"code":"1370","system":"prod"},{"code":"1398","system":"prod"},{"code":"14172","system":"prod"},{"code":"14889","system":"prod"},{"code":"16822","system":"prod"},{"code":"18013","system":"prod"},{"code":"2062","system":"prod"},{"code":"2154","system":"prod"},{"code":"2155","system":"prod"},{"code":"23832","system":"prod"},{"code":"25740","system":"prod"},{"code":"26322","system":"prod"},{"code":"27113","system":"prod"},{"code":"29840","system":"prod"},{"code":"3021","system":"prod"},{"code":"31537","system":"prod"},{"code":"31678","system":"prod"},{"code":"32204","system":"prod"},{"code":"32906","system":"prod"},{"code":"340","system":"prod"},{"code":"34144","system":"prod"},{"code":"34488","system":"prod"},{"code":"34542","system":"prod"},{"code":"34592","system":"prod"},{"code":"34736","system":"prod"},{"code":"35455","system":"prod"},{"code":"36167","system":"prod"},{"code":"36318","system":"prod"},{"code":"3785","system":"prod"},{"code":"38145","system":"prod"},{"code":"3896","system":"prod"},{"code":"41086","system":"prod"},{"code":"41137","system":"prod"},{"code":"41544","system":"prod"},{"code":"5039","system":"prod"},{"code":"6504","system":"prod"},{"code":"6524","system":"prod"},{"code":"8774","system":"prod"}];
REQUIRED_CODES = 1;
with open(sys.argv[1], 'r') as file_in, open('chemotherapy-medication-potential-cases.csv', 'w', newline='') as file_out:
    csv_reader = csv.DictReader(file_in)
    csv_writer = csv.DictWriter(file_out, csv_reader.fieldnames + ["chemotherapy-medication-1000mg---primary-identified"])
    csv_writer.writeheader();
    codes_identified = 0;
    for row in csv_reader:
        newRow = row.copy();
        for cell in row:
            # Iterate cell lists (e.g. codes)
            for item in re.findall(r'\(([^,]*)\,', row[cell]):
                if(item in list(map(lambda code: code['code'], codes))): codes_identified+=1;
                if(codes_identified>=REQUIRED_CODES):
                    newRow["chemotherapy-medication-1000mg---primary-identified"] = "CASE";
                    break;
            if(codes_identified>=REQUIRED_CODES): break;
        if(codes_identified<REQUIRED_CODES):
            newRow["chemotherapy-medication-1000mg---primary-identified"] = "UNK";
        codes_identified=0;
        csv_writer.writerow(newRow)
