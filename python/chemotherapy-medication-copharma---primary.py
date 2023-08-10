# Lai A., 2023.

import sys, csv, re

codes = [{"code":"12193","system":"prod"},{"code":"12619","system":"prod"},{"code":"13311","system":"prod"},{"code":"14886","system":"prod"},{"code":"15405","system":"prod"},{"code":"15617","system":"prod"},{"code":"19257","system":"prod"},{"code":"20174","system":"prod"},{"code":"23289","system":"prod"},{"code":"23949","system":"prod"},{"code":"24014","system":"prod"},{"code":"26320","system":"prod"},{"code":"26800","system":"prod"},{"code":"28999","system":"prod"},{"code":"3226","system":"prod"},{"code":"32712","system":"prod"},{"code":"33227","system":"prod"},{"code":"33493","system":"prod"},{"code":"33728","system":"prod"},{"code":"33988","system":"prod"},{"code":"34455","system":"prod"},{"code":"34631","system":"prod"},{"code":"34878","system":"prod"},{"code":"35419","system":"prod"},{"code":"36556","system":"prod"},{"code":"40400","system":"prod"},{"code":"40453","system":"prod"},{"code":"41058","system":"prod"},{"code":"41104","system":"prod"},{"code":"41585","system":"prod"},{"code":"41670","system":"prod"}];
REQUIRED_CODES = 1;
with open(sys.argv[1], 'r') as file_in, open('chemotherapy-medication-potential-cases.csv', 'w', newline='') as file_out:
    csv_reader = csv.DictReader(file_in)
    csv_writer = csv.DictWriter(file_out, csv_reader.fieldnames + ["chemotherapy-medication-copharma---primary-identified"])
    csv_writer.writeheader();
    codes_identified = 0;
    for row in csv_reader:
        newRow = row.copy();
        for cell in row:
            # Iterate cell lists (e.g. codes)
            for item in re.findall(r'\(([^,]*)\,', row[cell]):
                if(item in list(map(lambda code: code['code'], codes))): codes_identified+=1;
                if(codes_identified>=REQUIRED_CODES):
                    newRow["chemotherapy-medication-copharma---primary-identified"] = "CASE";
                    break;
            if(codes_identified>=REQUIRED_CODES): break;
        if(codes_identified<REQUIRED_CODES):
            newRow["chemotherapy-medication-copharma---primary-identified"] = "UNK";
        codes_identified=0;
        csv_writer.writerow(newRow)
