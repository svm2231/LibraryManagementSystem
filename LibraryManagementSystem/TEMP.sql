 SELECT bookid,title,authorid,count(*) as total_borrow
FROM borrow
JOIN shiv2_books b
USING (bookid)
GROUP BY bookid,title,authorid;

Rename borrow to shiv2_borrow;

CREATE OR REPLACE TRIGGER after_insert_borrow
AFTER INSERT 
ON shiv2_borrow
FOR EACH ROW
BEGIN 
    UPDATE shiv2_books
    set copiesavailable=copiesavailable-1
    WHERE bookid= :new.bookid;
end;
/

INSERT INTO shiv2_Borrow (BorrowID, BookID, MemberID, BorrowDate, DueDate, ReturnDate)
VALUES (101, 50, 101, TO_DATE('2024-11-10', 'YYYY-MM-DD'), TO_DATE('2024-12-10', 'YYYY-MM-DD'), NULL);

/*
SELECT COUNT(*) FROM(

SELECT DISTINCT VOUCHER_NO FROM MESL2.FIN_VOUCHER
WHERE VOUCHER_TYPE='J' AND VOUCHER_NO>1720 ORDER BY VOUCHER_NO);


WITH all_ids AS (
    SELECT LEVEL + (SELECT MIN(VOUCHER_NO) FROM MESL7.FIN_VOUCHER) - 1 AS id
    FROM dual
    CONNECT BY LEVEL <= (SELECT MAX(VOUCHER_NO) - MIN(VOUCHER_NO) + 1 FROM MESL7.FIN_VOUCHER)
)
SELECT ID
FROM all_ids a
LEFT JOIN MESL7.FIN_VOUCHER  t
ON a.id = t.VOUCHER_NO
WHERE VOUCHER_NO IS NULL AND T.VOUCHER_TYPE='J';

WITH all_ids AS (
    SELECT LEVEL + (SELECT MIN(BOOKID) FROM SHIV2_BOOKS) - 1 AS id
    FROM dual
    CONNECT BY LEVEL <= (SELECT MAX(BOOKID) - MIN(BOOKID) + 1 FROM SHIV2_BOOKS)
)
SELECT a.id
FROM all_ids a
LEFT JOIN SHIV2_BOOKS t
ON a.id = t.BOOKID
WHERE BOOKID IS NULL;


SHOW PARAMETER PGA_AGGREGATE_TARGET;

*/





CREATE OR REPLACE TRIGGER deleteMember
AFTER DELETE ON SHIV2_MEMBERS
FOR EACH ROW
BEGIN 
    INSERT INTO SHIV2_MEMBER_ARCHIVE(memberid,firstname,lastname) VALUES
    (:OLD.MEMBERID,:OLD.FIRSTNAME,:OLD.LASTNAME);
END DELETEMEMBER;
/



CREATE OR REPLACE TRIGGER BORROWARCHIVE
AFTER DELETE ON shiv2_borrow
FOR EACH ROW
BEGIN
    INSERT INTO SHIV2_BORROW_ARCHIVE(borrowID,bookid,memberid,borrowdate,duedate,returndate,fine) VALUES (:OLD.borrowid,:OLD.bookid,:OLD.memberid,:OLD.BORROWDATE,:OLD.DUEDATE,:OLD.RETURNDATE,:OLD.FINE);
END;
/

CREATE OR REPLACE PROCEDURE deleteMember(p_memberID IN NUMBER)
AS
BEGIN 
    DELETE FROM SHIV2_BORROW
    WHERE MEMBERID=p_memberID;
    DELETE FROM SHIV2_MEMBERS
    WHERE MEMBERID=P_MEMBERID;
END;
/


BEGIN
    deleteMember(147);
END;
/

CREATE OR REPLACE PROCEDURE membership_renewal(p_memberid IN NUMBER)
AS
BEGIN
    UPDATE shiv2_members
    SET membershipdate=SYSDATE,
        expirydate=ADD_MONTHS(SYSDATE,12)
    WHERE memberID=p_memberid;
END;
/

CREATE OR REPLACE TRIGGER BORROW_CHECK
BEFORE INSERT ON SHIV2_BORROW
FOR EACH ROW
DECLARE 
    v_expirydate DATE;
BEGIN

    SELECT EXPIRYDATE
    INTO V_EXPIRYDATE
    FROM SHIV2_MEMBERS
    WHERE MEMBERID=:NEW.MEMBERID;
    
    IF V_EXPIRYDATE<SYSDATE THEN
        RAISE_APPLICATION_ERROR(-20002, 'Membership expired, Please Renew');
    END IF;
   
END BORROW_CHECK;
/

INSERT INTO SHIV2_Borrow (BorrowID, BookID, MemberID, BorrowDate, DueDate, ReturnDate, Fine)
VALUES (102, 50, 101, TO_DATE('2024-11-10', 'YYYY-MM-DD'), TO_DATE('2024-12-10', 'YYYY-MM-DD'), NULL, 0.00);



CREATE OR REPLACE TRIGGER TRACKBOOKCOUNTS
BEFORE INSERT ON SHIV2_BORROW
FOR EACH ROW
DECLARE 
    V_COUNT NUMBER;
BEGIN 
    SELECT COUNT(*)
    INTO V_COUNT
    FROM SHIV2_BORROW
    WHERE MEMBERID=:NEW.MEMBERID;
    
    IF V_COUNT>=5 THEN
        RAISE_APPLICATION_ERROR(-20002,'BOOK LIMIT EXCEEDED');
    END IF;
END;
/


INSERT INTO SHIV2_Borrow (BorrowID, BookID, MemberID, BorrowDate, DueDate, ReturnDate, Fine)
VALUES (106, 47, 101, SYSDATE, ADD_MONTHS(SYSDATE,1), NULL, 0.00);


BEGIN
    MEMBERSHIP_RENEWAL(101);
END;
/

CREATE OR REPLACE PROCEDURE insert_book
(
    p_bookid IN NUMBER,
    p_title IN VARCHAR2,
    p_authorid IN NUMBER,
    p_isbn IN VARCHAR2,
    p_publishedyear IN NUMBER,
    p_genre IN VARCHAR2,
    p_copiesavailable IN NUMBER
)
AS
BEGIN
    INSERT INTO shiv2_books(bookid,title,authorid,isbn,publishedyear,genre,copiesavailable) VALUES
    (p_bookid,p_title,p_authorid,p_isbn,p_publishedyear,p_genre,p_copiesavailable) ;
END;
/

begin 
    insert_book(400,'How to Live',38,'829211-2209',1912,'self help',8);
end;
/


CREATE OR REPLACE FUNCTION count_book (p_memberID IN NUMBER)
RETURN NUMBER IS v_count NUMBER;
BEGIN
    SELECT COUNT(*) 
    INTO v_count
    FROM shiv2_transaction
    WHERE memberid=p_memberid;
    RETURN v_count;
END;
/


DECLARE
    c_count NUMBER;
BEGIN
    c_count:=count_book(4);
    DBMS_OUTPUT.PUT_LINE(c_count);
END;
/
    

CREATE OR REPLACE FUNCTION check_book(p_bookid IN NUMBER)
RETURN BOOLEAN IS b_count NUMBER;
BEGIN
    SELECT COUNT(*)
    INTO b_count
    FROM shiv2_books
    WHERE bookid=p_bookid;
    
    IF b_count>0 THEN
        RETURN TRUE;
    ELSE
        RETURN FALSE;
    END IF;
END;
/

DECLARE 
    STATUS BOOLEAN;
BEGIN
    STATUS:=check_book(350);
    
    IF STATUS THEN
        DBMS_OUTPUT.PUT_LINE('BOOK IS AVAILABLE');
    ELSE
        DBMS_OUTPUT.PUT_LINE('NOT AVAILABLE');
    END IF;
END;
/

CREATE OR REPLACE FUNCTION getfine(p_memberid IN NUMBER)
RETURN NUMBER IS v_amt NUMBER;
BEGIN
    
    SELECT SUM(FINE)
    INTO v_amt
    FROM shiv2_borrow
    WHERE memberid=p_memberid;
    
    IF v_amt>0 THEN
        RETURN v_amt;
    ELSE
        RETURN 0;
    END IF;
END;
/



DECLARE 
    MEM_NAME VARCHAR2(50);
    MEM_ID NUMBER:=45;
    V_AMT NUMBER;
BEGIN
    SELECT FIRSTNAME ||' '|| LASTNAME
    INTO mem_name
    FROM shiv2_members
    WHERE memberid=mem_id;
    
    v_amt:=getfine(mem_id);
    
    DBMS_OUTPUT.PUT_LINE('FINE AMOUNT OF ' || mem_name || ' is '||v_amt);
END;
/

CREATE TABLE SHIV2_BOOKAUDIT
(
    BOOKID NUMBER,
    ACTIONTYPE VARCHAR2(50),
    ACTIONDATE DATE
);



CREATE OR REPLACE TRIGGER book_audit
AFTER INSERT OR DELETE OR UPDATE ON SHIV2_BOOKS
FOR EACH ROW
BEGIN

    IF INSERTING THEN
        INSERT INTO SHIV2_BOOKAUDIT(BOOKID,ACTIONTYPE,ACTIONDATE)
        VALUES (:NEW.BOOKID,'INSERTION',SYSDATE);
    ELSIF DELETING THEN
        INSERT INTO SHIV2_BOOKAUDIT(BOOKID,ACTIONTYPE,ACTIONDATE)
        VALUES (:OLD.BOOKID,'DELETION',SYSDATE);
    ELSIF UPDATING THEN
        INSERT INTO SHIV2_BOOKAUDIT(BOOKID,ACTIONTYPE,ACTIONDATE)
        VALUES (:NEW.BOOKID,'UPDATION OF NUMBER OF COPIES',SYSDATE);
    END IF;
END;
/

DELETE FROM SHIV2_BOOKS
WHERE BOOKID=400;

UPDATE SHIV2_BOOKS
SET COPIESAVAILABLE=COPIESAVAILABLE+2
WHERE BOOKID=234;


CREATE OR REPLACE PROCEDURE checkinsertbook
(   
    P_BOOKID IN NUMBER,
    p_isbn IN NUMBER,
    P_TITLE IN VARCHAR2,
    P_AUTHORID IN NUMBER,
    P_PUBLISHEDYEAR IN NUMBER,
    P_GENRE IN VARCHAR2
)
IS CNT NUMBER;
BEGIN
    SELECT COUNT(*)
    INTO CNT
    FROM SHIV2_BOOKS
    WHERE ISBN=P_ISBN;
    
    IF CNT>0 THEN
        UPDATE SHIV2_BOOKS
        SET COPIESAVAILABLE=1+COPIESAVAILABLE
        WHERE ISBN=P_ISBN;
    ELSE
        INSERT INTO SHIV2_BOOKS(BOOKID,TITLE,AUTHORID,ISBN,PUBLISHEDYEAR,GENRE,COPIESAVAILABLE)
        VALUES(P_BOOKID,P_TITLE,P_AUTHORID,P_ISBN,P_PUBLISHEDYEAR,P_GENRE,1);
    END IF;
END;
/

DECLARE 

    P_BOOKID  NUMBER,
    p_isbn  NUMBER,
    P_TITLE VARCHAR2,
    P_AUTHORID NUMBER,
    P_PUBLISHEDYEAR NUMBER,
    P_GENRE VARCHAR2
    
BEGIN
    
END;
/

CREATE SEQUENCE generate_BORid 
    START WITH 106
    INCREMENT BY 1;
    
CREATE OR REPLACE FUNCTION bor_id
RETURN NUMBER IS nextID NUMBER;
BEGIN 
    SELECT generate_borid.nextval INTO nextID FROM dual;
    RETURN nextID;
END;
/

CREATE OR REPLACE PROCEDURE insertBorrow
(
    P_bookid IN NUMBER,
    p_memberid IN NUMBER,
    p_borrowdate IN DATE,
    p_duedate IN DATE
)
IS
    V_ID NUMBER;
BEGIN
    V_ID:=BOR_ID;
    INSERT INTO SHIV2_BORROW(BORROWID,BOOKID,MEMBERID,BORROWDATE,DUEDATE)
    VALUES (V_ID,P_bookid, p_memberid,p_borrowdate ,p_duedate);
END;
/

BEGIN
    insertBorrow(47, 132, sysdate, sysdate+2);
END;
/
DROP TRIGGER BORROWID_BEFORE;


BEGIN
membership_renewal(132);
END;
/

CREATE OR REPLACE PROCEDURE closeBorrow
AS
BEGIN
    DELETE FROM shiv2_borrow
    WHERE FINE =0;
END;
/

BEGIN
    CloseBorrow;
end;
/


CREATE OR REPLACE PROCEDURE submitFine(p_borrowID IN NUMBER)
AS
BEGIN
    DELETE FROM shiv2_borrow
    WHERE borrowID=p_borrowID;
END;
/

CREATE OR REPLACE TRIGGER submitLate
AFTER DELETE ON shiv2_borrow
FOR EACH ROW
DECLARE 
    v_transID NUMBER;
BEGIN 
    IF :OLD.FINE>0 THEN
        v_transID:=generate_TransID;
    
        INSERT INTO shiv2_transaction(transactionid,memberid,transactiondate,amount,transactiontype,description)
        VALUES(v_transID,:OLD.memberID,SYSDATE,:OLD.fine,'Late Fine','BOR'||:old.borrowid);
    END IF;
END;
/







CREATE SEQUENCE trans_id
    START WITH 41
    INCREMENT BY 1;


CREATE OR REPLACE FUNCTION generate_TransID
RETURN NUMBER IS TransID NUMBER;
BEGIN
    SELECT trans_id.NEXTVAL INTO TransID
    FROM DUAL;
    RETURN TransID;
END;
/


BEGIN 
    submitFINe(78);
END;
/
 
DROP SEQUENCE bookId;

CREATE SEQUENCE S_bookId
    START WITH 398
    INCREMENT BY 1;
    
CREATE OR REPLACE PROCEDURE GST.insert_book
(
    p_bookid IN NUMBER,
    p_title IN VARCHAR2,
    p_authorid IN NUMBER,
    p_isbn IN VARCHAR2,
    p_publishedyear IN NUMBER,
    p_genre IN VARCHAR2,
    p_copiesavailable IN NUMBER
)
IS 
    v_bookID NUMBER;
BEGIN
    SELECT s_bookid.NEXTVAL INTO v_bookid FROM DUAL;
    INSERT INTO shiv2_books(bookid,title,authorid,isbn,publishedyear,genre,copiesavailable) VALUES
    (V_bookid,p_title,p_authorid,p_isbn,p_publishedyear,p_genre,p_copiesavailable) ;
END;
/

BEGIN 
insert_author('Robin','Singh','India',TO_DATE('1992-07-26','YYYY-MM-DD'));
    END;
  /
  
v_transID:=generate_TransID;

CREATE OR REPLACE PROCEDURE membership_renewal(p_memberid IN NUMBER)
IS
    v_transid NUMBER;
BEGIN
    UPDATE shiv2_members
    SET membershipdate=SYSDATE,
        expirydate=ADD_MONTHS(SYSDATE,12)
    WHERE memberID=p_memberid;
    
    SELECT trans_id.nextval into v_transid from dual;
    
    INSERT INTO shiv2_transaction(transactionid,memberid,transactiondate,amount,transactiontype,description)
    VALUES (v_transid,p_memberid,sysdate,500,'Membership Fee','T0');
END;
/


BEGIN 
    membership_renewal(5);
END;
/
  
SELECT trans_id.nextval  dual;

INSERT INTO shiv2_transaction(transactionid,memberid,transactiondate,amount,transactiontype,description)
    VALUES (48,55,sysdate,500,'Membership Fee','T0');
    
SELECT c.constraint_name, col.column_name, c.search_condition
FROM all_constraints c
JOIN all_cons_columns col ON c.constraint_name = col.constraint_name AND c.owner = col.owner
WHERE c.table_name = 'SHIV2_TRANSACTION' AND c.owner = 'GST';

DELETE FROM shiv2_transaction
where transactionid=42;

drop sequence Trans_id;

CREATE SEQUENCE TRANS_ID
    START WITH 42
    INCREMENT BY 1;


CREATE OR REPLACE PROCEDURE donation(p_mem_id IN NUMBER,p_amnt IN NUMBER)
IS 
    v_transid NUMBER;
BEGIN 
    
    SELECT trans_id.NEXTVAL INTO v_transid FROM DUAL;
    
    INSERT INTO shiv2_transaction(transactionid,memberid,transactiondate,amount,transactiontype,description)
    VALUES(v_transid,p_mem_id,sysdate,p_amnt,'Donation','d');
END;
/

BEGIN
    donation(102,800);
END;
/

CREATE OR REPLACE PROCEDURE GST.update_fine
AS
BEGIN
    UPDATE shiv2_borrow
    SET fine=(returndate-duedate)*5
    ;
END;
/
DROP PROCEDURE UPADATE_FINE;


CREATE OR REPLACE PROCEDURE GST.update_fine
AS
BEGIN
    UPDATE shiv2_borrow
    SET fine =Round(sysdate-duedate)*5
    WHERE duedate<sysdate AND returndate is NULL;
    
    UPDATE shiv2_borrow
    SET fine=0
    WHERE FINE<0;
    DELETE shiv2_borrow
    WHERE fine=0 AND returndate IS NOT NULL;
END;
/


CREATE OR REPLACE PROCEDURE membership_renewal(p_memberid IN NUMBER)
IS
    v_transid NUMBER;
    mem_date DATE;
    cur_date DATE:=SYSDATE;
BEGIN
    SELECT expirydate INTO mem_date FROM shiv2_MEMBERS WHERE memberID=p_memberid;
    
    IF mem_date<cur_date THEN
        UPDATE shiv2_MEMBERS
        SET membershipdate=SYSDATE,
        expirydate=ADD_MONTHS(SYSDATE,1)
        WHERE memberID=p_memberid;
        
    ELSE 
        UPDATE shiv2_MEMBERS
        SET expirydate=ADD_MONTHS(MEM_DATE,1)
        WHERE memberID=p_memberid;
    END IF;
    SELECT trans_id.nextval into v_transid from dual;
    
    INSERT INTO shiv2_transaction(transactionid,memberid,transactiondate,amount,transactiontype,description)
    VALUES (v_transid,p_memberid,sysdate,500,'Membership Fee','T0');
END;
/


CREATE OR REPLACE TRIGGER after_update_borrow
AFTER UPDATE 
ON shiv2_borrow
FOR EACH ROW
BEGIN 
    UPDATE shiv2_books
    set copiesavailable=copiesavailable+1
    WHERE bookid= :new.bookid;
end;
/

CREATE OR REPLACE PROCEDURE GST.update_fine
AS
BEGIN
    UPDATE shiv2_borrow
    SET fine =Round(sysdate-duedate)*5
    WHERE duedate<sysdate;
    
    UPDATE shiv2_borrow
    SET fine=0
    WHERE FINE<0;
END;
/



CREATE OR REPLACE PROCEDURE GST.update_fine
AS
BEGIN
    UPDATE shiv2_borrow
    SET fine=(returndate-duedate)*5;
    
    UPDATE shiv2_borrow
    SET fine=0
    WHERE FINE<0;
END;
/

BEGIN
    update_fine;
END;
/

SELECT TO_DATE(SYSDATE,'YYYY-MM-DD')-TO_DATE(duedate,'YYYY-MM-DD') AS diff 
FROM shiv2_borrow;

SELECT borrowid,Round(returndate-duedate)AS diff
FROM shiv2_borrow;



CREATE OR REPLACE PROCEDURE GST.update_fine
AS
BEGIN
    UPDATE shiv2_borrow
    SET fine=(returndate-duedate)*5
    ;
END;
/
DROP PROCEDURE UPADATE_FINE;


CREATE OR REPLACE PROCEDURE GST.update_fine
AS
BEGIN
    UPDATE shiv2_borrow
    SET fine =Round(sysdate-duedate)*5
    WHERE duedate<sysdate AND returndate is NULL;
    
    UPDATE shiv2_borrow
    SET fine=0
    WHERE FINE<0;
    DELETE shiv2_borrow
    WHERE fine=0 AND returndate IS NOT NULL;
END;
/



CREATE OR REPLACE PROCEDURE GST.issueBook(p_MemID IN NUMBER, p_BookID IN NUMBER)
IS
    v_cnt NUMBER;
    V_ID NUMBER;
BEGIN

    SELECT copiesavailable INTO v_cnt FROM shiv2_books WHERE bookID=p_bookID;
    
    --dbms_output.put_line(v_cnt);
    
    IF V_CNT>0 THEN
        V_ID:=BOR_ID;
        INSERT INTO SHIV2_BORROW(BORROWID,BOOKID,MEMBERID,BORROWDATE,DUEDATE)
        VALUES (V_ID,P_bookid, p_MemID,sysdate ,ADD_MONTHS(SYSDATE,12));
        
    ELSE 
        RAISE_APPLICATION_ERROR(-20002, 'Book Out of Stock');
        --dbms_output.put_line('OUT OF STOCK');
    END IF;
END;
/


BEGIN
     issueBook(39,131);
END;
/

CREATE OR REPLACE TRIGGER BORROW_CHECK
BEFORE INSERT ON SHIV2_BORROW
FOR EACH ROW
DECLARE 
    v_expirydate DATE;
    v_curdate DATE;
BEGIN
    v_curdate:=:NEW.borrowdate;
    SELECT EXPIRYDATE
    INTO V_EXPIRYDATE
    FROM SHIV2_MEMBERS
    WHERE MEMBERID=:NEW.MEMBERID;
    
     DBMS_OUTPUT.PUT_LINE('Expiry Date: ' || V_EXPIRYDATE);
    DBMS_OUTPUT.PUT_LINE('Current Date: ' || V_CURDATE);
    
    IF V_EXPIRYDATE IS NULL THEN
    RAISE_APPLICATION_ERROR(-20003, 'Expiry date is missing for the member.');
END IF;
    
    IF V_EXPIRYDATE<V_CURDATE THEN
    RAISE_APPLICATION_ERROR(-20002, 'Membership expired, Please Renew');
END IF;

   
END BORROW_CHECK;
/

BEGIN
    ISSUEBOOK(51,89);
END;
/




DELETE SHIV2_BORROW
WHERE RETURNDATE IS NULL;




CREATE OR REPLACE PROCEDURE GST.insertBorrow
(
    P_bookid IN NUMBER,
    p_memberid IN NUMBER
)
IS
    V_ID NUMBER;
    v_cnt NUMBER;
    v_bcnt NUMBER;
BEGIN
    V_ID:=BOR_ID;
    SELECT COUNT(*) INTO v_Bcnt FROM shiv2_borrow WHERE bookid=p_bookid AND memberid=p_memberid AND returndate is null;
    SELECT copiesavailable INTO v_cnt FROM shiv2_books WHERE bookid=p_bookid;
    
    IF v_cnt>0 AND v_bcnt=0 THEN
        INSERT INTO SHIV2_BORROW(BORROWID,BOOKID,MEMBERID,BORROWDATE,DUEDATE)
        VALUES (V_ID,P_bookid, p_memberid,sysdate ,ADD_MONTHS(SYSDATE,12));
    ELSE
        IF v_cnt<1 THEN
            RAISE_APPLICATION_ERROR(-20002,'Book Out Of Stock');
        ELSE
            RAISE_APPLICATION_ERROR(-20002,'Book Already Issued');
        END IF;
    END IF;
    
       
END;
/

CREATE OR REPLACE TRIGGER DELETE_CHECK
BEFORE DELETE ON shiv2_books
FOR EACH ROW
DECLARE 
    bor_cnt NUMBER;
BEGIN
    SELECT COUNT(*) INTO bor_cnt FROM shiv2_borrow WHERE bookid=:OLD.BOOKID;
    
    IF bor_cnt>0 THEN
        RAISE_APPLICATION_ERROR(-20002,'Cannot delete the book, Borrowed');
    END IF;
END;
/


drop table SHIV2_MEMBER_ARCHIVE ;
CREATE TABLE shiv2_member_archive(memberid INTEGER, FIRSTNAME varchar2(20), LASTNAME varchar2(20), ADDRESS VARCHAR2(100), PHONENUMBER varchar2(20) , EMAIL VARCHAR2(20), DELETEDATE DATE);


CREATE OR REPLACE TRIGGER on_delete_mem
AFTER DELETE ON shiv2_members
FOR EACH ROW
BEGIN
    INSERT INTO SHIV2_MEMBER_ARCHIVE(memberid,firstname,lastname,address,phonenumber,email,deletedate)
    VALUES(:OLD.MEMBERID,:OLD.FIRSTNAME,:OLD.LASTNAME,:OLD.ADDRESS,:OLD.PHONENUMBER,:OLD.EMAIL,SYSDATE);
END;
/

SELECT bookid, title, duedate,fine FROM shiv2_borrow b JOIN shiv2_books bk USING(bookid) WHERE memberid=34;


drop trigger deletemember;

DELETE SHIV2_MEMBERS WHERE MEMBERID=34;


ALTER TABLE shiv2_TRANSACTION
DROP CONSTRAINT SYS_C00739902;


CREATE OR REPLACE PROCEDURE InsertMem1
(
    p_first IN VARCHAR2,
    p_last IN VARCHAR2,
    p_add IN VARCHAR2,
    p_phn IN VARCHAR2,
    p_email IN VARCHAR
)
IS
    p_memID NUMBER;
    p_trnsID NUMBER;
BEGIN
    SELECT S_memID.nextval INTO p_memID FROM dual;
    SELECT TRANS_ID.NEXTVAL INTO p_trnsID FROM DUAL;
    INSERT INTO shiv2_members(memberid,firstname,lastname,address,phonenumber,email,membershipdate,expirydate)
    VALUES(p_memID,p_first,p_last,p_add,p_phn,p_email,sysdate,add_months(sysdate,12));
    INSERT INTO SHIV2_TRANSACTION(TRANSACTIONID,MEMBERID,TRANSACTIONDATE,AMOUNT,TRANSACTIONTYPE,DESCRIPTION)
    VALUES(p_trnsID,p_memID,sysdate,500,'Membership Fee','New Membership');
END;
/


CREATE SEQUENCE S_memId
    START WITH 200
    INCREMENT BY 1;
    
    
BEGIN
    InsertMem1('Divyansh','Mogha','Dungrawli, Meerut', '+91 8101343387' ,'div@gmail.com');
End;
/

SELECT * FROM SHIV2_MEMBERS where email='div@gmail.com';

SELECT * FROM SHIV2_TRANSACTION WHERE TO_DATE(TRANSACTIONDATE,'YYYY-MM-DD') = TO_DATE(SYSDATE,'YYYY-MM-DD');


ALTER TABLE SHIV2_BORROW
ADD FINEstatus VARCHAR2(20) DEFAULT 'PAID' NOT NULL;

UPDATE SHIV2_BORROW
SET FINESTATUS='UNPAID';


CREATE OR REPLACE TRIGGER BORROWARCHIVE
AFTER DELETE ON shiv2_borrow
FOR EACH ROW
BEGIN
    INSERT INTO SHIV2_BORROW_ARCHIVE(borrowID,bookid,memberid,borrowdate,duedate,returndate,fine,FINESTATUS) VALUES (:OLD.borrowid,:OLD.bookid,:OLD.memberid,:OLD.BORROWDATE,:OLD.DUEDATE,:OLD.RETURNDATE,:OLD.FINE,:OLD.FINESTATUS);
END;
/

ALTER TABLE SHIV2_BORROW_ARCHIVE
DROP COLUMN STATUS;

SELECT bookID, title, borrowdate,duedate, fine,sb.FINESTATUS as FINE_STATUS from shiv2_borrow sb JOIN shiv2_books USING(bookid) WHERE memberID=45 UNION SELECT bookID, title, borrowdate,duedate, fine,sba.FINESTATUS AS FINE_STATUS from shiv2_borrow_ARCHIVE sba JOIN shiv2_books USING(bookid) WHERE memberID=45;

SELECT bookID, title, borrowdate,duedate, fine,sb.FINESTATUS as FINE_STATUS from shiv2_borrow sb JOIN shiv2_books USING(bookid) WHERE memberID=:p_memID UNION SELECT bookID, title, borrowdate,duedate, fine,sba.FINESTATUS AS FINE_STATUS from shiv2_borrow_ARCHIVE sba JOIN shiv2_books USING(bookid) WHERE memberID=:p_memID