if exist lmp.in (
    lmp_serial.exe -in lmp.in
) else (
    lmp_serial.exe -in control.inp
)
