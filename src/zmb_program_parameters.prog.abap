*&---------------------------------------------------------------------*
*& Report ZMB_PROGRAM_PARAMETERS
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT ZMB_PROGRAM_PARAMETERS.


"8 characters is the lenght to declare value of the parameter holder .

"default parameters
PARAMETERS: p_num1 type i OBLIGATORY ,
            p_num2 type i DEFAULT 30 ,
            p_name(20) type c .

"radiobutton parameters

PARAMETERS:
            r1 RADIOBUTTON GROUP g1 ,
            r2 RADIOBUTTON GROUP g1 ,
            r3 RADIOBUTTON GROUP g1 .
PARAMETERS:
            t1 RADIOBUTTON GROUP g2 ,
            t2 RADIOBUTTON GROUP g2 .

"checkbox button .

PARAMETERS:
           c1 AS CHECKBOX , c2 as CHECKBOX , c3 AS CHECKBOX .

"listbox .

PARAMETERS: l1(10) AS LISTBOX VISIBLE LENGTH 20 DEFAULT 'SELECT' .

DATA: gv_result type i .

gv_result = p_num1 + p_num2 .


write: / 'The additon  of ' , p_num1 , 'and ' , p_num2 , ' is :' , gv_result  .



CASE 'X'.
  WHEN r1  .
    WRITE 'r1 choosed'.
  WHEN r2 .
    WRITE 'r2 choosed'.
  WHEN OTHERS.
     WRITE 'r3 choosed'.
ENDCASE.
