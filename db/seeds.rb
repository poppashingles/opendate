# --none-- option

no_printer = Printer.where(name: 'None').first_or_create(name: 'None')
no_psu = Psu.where(psu_type: 'None').first_or_create(psu_type: 'None')

# Thermal

t53s_printer = Printer.where(name: '53S').first_or_create(name: '53S')
t53m_printer = Printer.where(name: '53M').first_or_create(name: '53M')
t53l_printer = Printer.where(name: '53L').first_or_create(name: '53L')
t53e_printer = Printer.where(name: '53E').first_or_create(name: '53E')

t53cr_printer = Printer.where(name: '53CR').first_or_create(name: '53CR')
t53cl_printer = Printer.where(name: '53CL').first_or_create(name: '53CL')

t107s_printer = Printer.where(name: '107S').first_or_create(name: '107S')
t107m_printer = Printer.where(name: '107M').first_or_create(name: '107M')
t107l_printer = Printer.where(name: '107L').first_or_create(name: '107L')

t107cr_printer = Printer.where(name: '107CR').first_or_create(name: '107CR')
t107cl_printer = Printer.where(name: '107CL').first_or_create(name: '107CL')

iq_printer = Printer.where(name: 'iQ').first_or_create(name: 'iQ')

# Hot foil

ec150_printer = Printer.where(name: 'Eurocode 150').first_or_create(name: 'Eurocode 150')
ec180_printer = Printer.where(name: 'Eurocode 180').first_or_create(name: 'Eurocode 180')
ec300_printer = Printer.where(name: 'Eurocode 300').first_or_create(name: 'Eurocode 300')

pm_printer = Printer.where(name: 'Printmaster').first_or_create(name: 'Printmaster')
pmplus_printer = Printer.where(name: 'Printmaster Plus').first_or_create(name: 'Printmaster Plus')
pm1000_printer = Printer.where(name: 'Printmaster 1000').first_or_create(name: 'Printmaster 1000')

ecoder_printer = Printer.where(name: 'E-Coder').first_or_create(name: 'E-Coder')

sprintmajor_printer = Printer.where(name: 'Sprint Major').first_or_create(name: 'Sprint Major')
sprint_printer = Printer.where(name: 'Sprint').first_or_create(name: 'Sprint')

# Debosser

hotdebosser_printer = Printer.where(name: 'Hot Debosser').first_or_create(name: 'Hot Debosser')
colddebosser_printer = Printer.where(name: 'Cold Debosser').first_or_create(name: 'Cold Debosser')

# Carton feeder

mc810_printer = Printer.where(name: 'MC-810 Carton Feeder').first_or_create(name: 'MC-810 Carton Feeder')

# Regions

usa_region = Region.where(region: 'USA').first_or_create(region: 'USA')
france_region = Region.where(region: 'France').first_or_create(region: 'France')
germany_region = Region.where(region: 'Germany').first_or_create(region: 'Germany')
export_region = Region.where(region: 'Export').first_or_create(region: 'Export')
uk_region = Region.where(region: 'UK').first_or_create(region: 'UK')

# PSUs

tc2_psu = Psu.where(psu_type: 'HS4 TC2').first_or_create(psu_type: 'HS4 TC2')
tce_psu = Psu.where(psu_type: 'HS4 53E').first_or_create(psu_type: 'HS4 53E')
digi50_psu = Psu.where(psu_type: 'Digi 50 Controller').first_or_create(psu_type: 'Digi 50 Controller')