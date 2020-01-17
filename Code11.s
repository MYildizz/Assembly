

;for changing B0 
if1 ADD R8, R0, R1
a cmp R3, R6
 BLE if2
 ADD R8, R8, R6
else BAL cont1

if2 ADD R8, R8, R3
 BAL else


;for changing B1
if3 ADD R8, R1, R0
b cmp R4,R7
 BLE if4
 ADD R8, R8,R7
else1  BAL cont2

if4 ADD R8, R8 ,R4
 BAL else1

;for changing  B2  
if5 ADD R8, R2,R0
 BAL cont3

;for changing B3
if6 ADD R8, R3, R4
c cmp R0,R6
 BLE if7
 ADD R8, R8,R6
else2 BAL cont4

if7 ADD R8, R8,R0
 BAL else2

;for changing B4
if8 ADD R8, R4, R3
d cmp R1,R7
 BLE if9
 ADD R8, R8, R7
else3 BAL cont5

if9 ADD R8, R4, R1
 BAL else3

;for changing B5
if10 ADD R8, R5, R3
  BAL cont6

;for changing B6
if11 ADD R8, R6, R0
  BAL cont7

;for changing B7
if12 ADD R8, R7, R1
  BAL cont8

 
 AREA rom, DATA, READONLY
ary  DCD 3,4,4,2,1,3,4,2
 AREA ram, DATA, READWRITE
yaz 
 SPACE 28
 END