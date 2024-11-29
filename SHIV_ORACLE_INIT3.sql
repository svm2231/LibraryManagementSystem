/*
CREATE TABLE Author (
    AuthorID INT PRIMARY KEY,
    FirstName VARCHAR(50) NOT NULL,
    LastName VARCHAR(50) NOT NULL,
    Nationality VARCHAR(50),
    DateOfBirth DATE
);


INSERT ALL
   INTO Author (AuthorID, FirstName, LastName, Nationality, DateOfBirth) VALUES (1, 'Gabriel', 'Garcia Marquez', 'Colombian', TO_DATE('1927-03-06', 'YYYY-MM-DD'))
   INTO Author (AuthorID, FirstName, LastName, Nationality, DateOfBirth) VALUES (2, 'Haruki', 'Murakami', 'Japanese', TO_DATE('1949-01-12', 'YYYY-MM-DD'))
   INTO Author (AuthorID, FirstName, LastName, Nationality, DateOfBirth) VALUES (3, 'Toni', 'Morrison', 'American', TO_DATE('1931-02-18', 'YYYY-MM-DD'))
   INTO Author (AuthorID, FirstName, LastName, Nationality, DateOfBirth) VALUES (4, 'George', 'Orwell', 'British', TO_DATE('1903-06-25', 'YYYY-MM-DD'))
   INTO Author (AuthorID, FirstName, LastName, Nationality, DateOfBirth) VALUES (5, 'Jane', 'Austen', 'British', TO_DATE('1775-12-16', 'YYYY-MM-DD'))
   INTO Author (AuthorID, FirstName, LastName, Nationality, DateOfBirth) VALUES (6, 'Leo', 'Tolstoy', 'Russian', TO_DATE('1828-09-09', 'YYYY-MM-DD'))
   INTO Author (AuthorID, FirstName, LastName, Nationality, DateOfBirth) VALUES (7, 'Virginia', 'Woolf', 'British', TO_DATE('1882-01-25', 'YYYY-MM-DD'))
   INTO Author (AuthorID, FirstName, LastName, Nationality, DateOfBirth) VALUES (8, 'Fyodor', 'Dostoevsky', 'Russian', TO_DATE('1821-11-11', 'YYYY-MM-DD'))
   INTO Author (AuthorID, FirstName, LastName, Nationality, DateOfBirth) VALUES (9, 'Mark', 'Twain', 'American', TO_DATE('1835-11-30', 'YYYY-MM-DD'))
   INTO Author (AuthorID, FirstName, LastName, Nationality, DateOfBirth) VALUES (10, 'J.K.', 'Rowling', 'British', TO_DATE('1965-07-31', 'YYYY-MM-DD'))
   INTO Author (AuthorID, FirstName, LastName, Nationality, DateOfBirth) VALUES (11, 'Isabel', 'Allende', 'Chilean', TO_DATE('1942-08-02', 'YYYY-MM-DD'))
   INTO Author (AuthorID, FirstName, LastName, Nationality, DateOfBirth) VALUES (12, 'Charles', 'Dickens', 'British', TO_DATE('1812-02-07', 'YYYY-MM-DD'))
   INTO Author (AuthorID, FirstName, LastName, Nationality, DateOfBirth) VALUES (13, 'Chinua', 'Achebe', 'Nigerian', TO_DATE('1930-11-16', 'YYYY-MM-DD'))
   INTO Author (AuthorID, FirstName, LastName, Nationality, DateOfBirth) VALUES (14, 'Ernest', 'Hemingway', 'American', TO_DATE('1899-07-21', 'YYYY-MM-DD'))
   INTO Author (AuthorID, FirstName, LastName, Nationality, DateOfBirth) VALUES (15, 'James', 'Joyce', 'Irish', TO_DATE('1882-02-02', 'YYYY-MM-DD'))
   INTO Author (AuthorID, FirstName, LastName, Nationality, DateOfBirth) VALUES (16, 'Alice', 'Walker', 'American', TO_DATE('1944-02-09', 'YYYY-MM-DD'))
   INTO Author (AuthorID, FirstName, LastName, Nationality, DateOfBirth) VALUES (17, 'Jorge Luis', 'Borges', 'Argentinian', TO_DATE('1899-08-24', 'YYYY-MM-DD'))
   INTO Author (AuthorID, FirstName, LastName, Nationality, DateOfBirth) VALUES (18, 'Albert', 'Camus', 'French', TO_DATE('1913-11-07', 'YYYY-MM-DD'))
   INTO Author (AuthorID, FirstName, LastName, Nationality, DateOfBirth) VALUES (19, 'Franz', 'Kafka', 'Czech', TO_DATE('1883-07-03', 'YYYY-MM-DD'))
   INTO Author (AuthorID, FirstName, LastName, Nationality, DateOfBirth) VALUES (20, 'Hermann', 'Hesse', 'German', TO_DATE('1877-07-02', 'YYYY-MM-DD'))
   INTO Author (AuthorID, FirstName, LastName, Nationality, DateOfBirth) VALUES (21, 'Zadie', 'Smith', 'British', TO_DATE('1975-10-25', 'YYYY-MM-DD'))
   INTO Author (AuthorID, FirstName, LastName, Nationality, DateOfBirth) VALUES (22, 'Khaled', 'Hosseini', 'Afghan', TO_DATE('1965-03-04', 'YYYY-MM-DD'))
   INTO Author (AuthorID, FirstName, LastName, Nationality, DateOfBirth) VALUES (23, 'Margaret', 'Atwood', 'Canadian', TO_DATE('1939-11-18', 'YYYY-MM-DD'))
   INTO Author (AuthorID, FirstName, LastName, Nationality, DateOfBirth) VALUES (24, 'Salman', 'Rushdie', 'British', TO_DATE('1947-06-19', 'YYYY-MM-DD'))
   INTO Author (AuthorID, FirstName, LastName, Nationality, DateOfBirth) VALUES (25, 'Kazuo', 'Ishiguro', 'British', TO_DATE('1954-11-08', 'YYYY-MM-DD'))
   INTO Author (AuthorID, FirstName, LastName, Nationality, DateOfBirth) VALUES (26, 'Elena', 'Ferrante', 'Italian', TO_DATE('1943-07-18', 'YYYY-MM-DD'))
   INTO Author (AuthorID, FirstName, LastName, Nationality, DateOfBirth) VALUES (27, 'Ian', 'McEwan', 'British', TO_DATE('1948-06-21', 'YYYY-MM-DD'))
   INTO Author (AuthorID, FirstName, LastName, Nationality, DateOfBirth) VALUES (28, 'Orhan', 'Pamuk', 'Turkish', TO_DATE('1952-06-07', 'YYYY-MM-DD'))
   INTO Author (AuthorID, FirstName, LastName, Nationality, DateOfBirth) VALUES (29, 'John', 'Steinbeck', 'American', TO_DATE('1902-02-27', 'YYYY-MM-DD'))
   INTO Author (AuthorID, FirstName, LastName, Nationality, DateOfBirth) VALUES (30, 'Kurt', 'Vonnegut', 'American', TO_DATE('1922-11-11', 'YYYY-MM-DD'))
   INTO Author (AuthorID, FirstName, LastName, Nationality, DateOfBirth) VALUES (31, 'Ray', 'Bradbury', 'American', TO_DATE('1920-08-22', 'YYYY-MM-DD'))
   INTO Author (AuthorID, FirstName, LastName, Nationality, DateOfBirth) VALUES (32, 'Milan', 'Kundera', 'Czech', TO_DATE('1929-04-01', 'YYYY-MM-DD'))
   INTO Author (AuthorID, FirstName, LastName, Nationality, DateOfBirth) VALUES (33, 'Alice', 'Munro', 'Canadian', TO_DATE('1931-07-10', 'YYYY-MM-DD'))
   INTO Author (AuthorID, FirstName, LastName, Nationality, DateOfBirth) VALUES (34, 'E.L.', 'Doctorow', 'American', TO_DATE('1931-01-06', 'YYYY-MM-DD'))
   INTO Author (AuthorID, FirstName, LastName, Nationality, DateOfBirth) VALUES (35, 'Nadine', 'Gordimer', 'South African', TO_DATE('1923-11-20', 'YYYY-MM-DD'))
   INTO Author (AuthorID, FirstName, LastName, Nationality, DateOfBirth) VALUES (36, 'Cormac', 'McCarthy', 'American', TO_DATE('1933-07-20', 'YYYY-MM-DD'))
   INTO Author (AuthorID, FirstName, LastName, Nationality, DateOfBirth) VALUES (37, 'Yukio', 'Mishima', 'Japanese', TO_DATE('1925-01-14', 'YYYY-MM-DD'))
   INTO Author (AuthorID, FirstName, LastName, Nationality, DateOfBirth) VALUES (38, 'George', 'Eliot', 'British', TO_DATE('1819-11-22', 'YYYY-MM-DD'))
   INTO Author (AuthorID, FirstName, LastName, Nationality, DateOfBirth) VALUES (39, 'H.G.', 'Wells', 'British', TO_DATE('1866-09-21', 'YYYY-MM-DD'))
   INTO Author (AuthorID, FirstName, LastName, Nationality, DateOfBirth) VALUES (40, 'Jack', 'London', 'American', TO_DATE('1876-01-12', 'YYYY-MM-DD'))
   INTO Author (AuthorID, FirstName, LastName, Nationality, DateOfBirth) VALUES (41, 'William', 'Faulkner', 'American', TO_DATE('1897-09-25', 'YYYY-MM-DD'))
   INTO Author (AuthorID, FirstName, LastName, Nationality, DateOfBirth) VALUES (42, 'Willa', 'Cather', 'American', TO_DATE('1873-12-07', 'YYYY-MM-DD'))
   INTO Author (AuthorID, FirstName, LastName, Nationality, DateOfBirth) VALUES (43, 'Doris', 'Lessing', 'British', TO_DATE('1919-10-22', 'YYYY-MM-DD'))
   INTO Author (AuthorID, FirstName, LastName, Nationality, DateOfBirth) VALUES (44, 'Thomas', 'Mann', 'German', TO_DATE('1875-06-06', 'YYYY-MM-DD'))
   INTO Author (AuthorID, FirstName, LastName, Nationality, DateOfBirth) VALUES (45, 'Albert', 'Einstein', 'German', TO_DATE('1879-03-14', 'YYYY-MM-DD'))
   INTO Author (AuthorID, FirstName, LastName, Nationality, DateOfBirth) VALUES (46, 'Susan', 'Sontag', 'American', TO_DATE('1933-01-16', 'YYYY-MM-DD'))
   INTO Author (AuthorID, FirstName, LastName, Nationality, DateOfBirth) VALUES (47, 'Neil', 'Gaiman', 'British', TO_DATE('1960-11-10', 'YYYY-MM-DD'))
   INTO Author (AuthorID, FirstName, LastName, Nationality, DateOfBirth) VALUES (48, 'Stephen', 'King', 'American', TO_DATE('1947-09-21', 'YYYY-MM-DD'))
   INTO Author (AuthorID, FirstName, LastName, Nationality, DateOfBirth) VALUES (49, 'Margaret', 'Drabble', 'British', TO_DATE('1939-06-05', 'YYYY-MM-DD'))
   INTO Author (AuthorID, FirstName, LastName, Nationality, DateOfBirth) VALUES (50, 'John', 'Green', 'American', TO_DATE('1977-08-24', 'YYYY-MM-DD'))
SELECT * FROM dual;



INSERT ALL
  INSERT  INTO Author (AuthorID, FirstName, LastName, Nationality, DateOfBirth) VALUES (51, 'J.R.R.', 'Tolkien', 'British', TO_DATE('1892-01-03', 'YYYY-MM-DD'));
  INSERT INTO Author (AuthorID, FirstName, LastName, Nationality, DateOfBirth) VALUES (52, 'Agatha', 'Christie', 'British', TO_DATE('1890-09-15', 'YYYY-MM-DD'));
  INSERT INTO Author (AuthorID, FirstName, LastName, Nationality, DateOfBirth) VALUES (53, 'Isaac', 'Asimov', 'American', TO_DATE('1920-01-02', 'YYYY-MM-DD'))
  INSERT INTO Author (AuthorID, FirstName, LastName, Nationality, DateOfBirth) VALUES (54, 'Arthur', 'C. Clarke', 'British', TO_DATE('1917-12-16', 'YYYY-MM-DD'))
  INSERT INTO Author (AuthorID, FirstName, LastName, Nationality, DateOfBirth) VALUES (55, 'Philip', 'K. Dick', 'American', TO_DATE('1928-12-16', 'YYYY-MM-DD'))
   INTO Author (AuthorID, FirstName, LastName, Nationality, DateOfBirth) VALUES (56, 'Douglas', 'Adams', 'British', TO_DATE('1952-03-11', 'YYYY-MM-DD'))
  INSERT INTO Author (AuthorID, FirstName, LastName, Nationality, DateOfBirth) VALUES (57, 'Raymond', 'Chandler', 'American', TO_DATE('1888-07-23', 'YYYY-MM-DD'))
  INSERT INTO Author (AuthorID, FirstName, LastName, Nationality, DateOfBirth) VALUES (58, 'Daphne', 'Du Maurier', 'British', TO_DATE('1907-05-13', 'YYYY-MM-DD'))
  INSERT INTO Author (AuthorID, FirstName, LastName, Nationality, DateOfBirth) VALUES (59, 'Patrick', 'Suskind', 'German', TO_DATE('1949-03-26', 'YYYY-MM-DD'))
  INSERT INTO Author (AuthorID, FirstName, LastName, Nationality, DateOfBirth) VALUES (60, 'F. Scott', 'Fitzgerald', 'American', TO_DATE('1896-09-24', 'YYYY-MM-DD'))
  INSERT INTO Author (AuthorID, FirstName, LastName, Nationality, DateOfBirth) VALUES (61, 'William', 'Shakespeare', 'English', TO_DATE('1564-04-23', 'YYYY-MM-DD'))
  INSERT INTO Author (AuthorID, FirstName, LastName, Nationality, DateOfBirth) VALUES (62, 'Home', 'Lander', 'Greek', TO_DATE('800-01-01', 'YYYY-MM-DD'))
  INSERT INTO Author (AuthorID, FirstName, LastName, Nationality, DateOfBirth) VALUES (63, 'Emily', 'Dickinson', 'American', TO_DATE('1830-12-10', 'YYYY-MM-DD'))
  INSERT INTO Author (AuthorID, FirstName, LastName, Nationality, DateOfBirth) VALUES (64, 'Sylvia', 'Plath', 'American', TO_DATE('1932-10-27', 'YYYY-MM-DD'))
  INSERT INTO Author (AuthorID, FirstName, LastName, Nationality, DateOfBirth) VALUES (65, 'Hannah', 'Arendt', 'German', TO_DATE('1906-10-14', 'YYYY-MM-DD'))
  INSERT INTO Author (AuthorID, FirstName, LastName, Nationality, DateOfBirth) VALUES (66, 'Jean-Paul', 'Sartre', 'French', TO_DATE('1905-06-21', 'YYYY-MM-DD'))
  INSERT INTO Author (AuthorID, FirstName, LastName, Nationality, DateOfBirth) VALUES (67, 'Simone', 'de Beauvoir', 'French', TO_DATE('1908-01-09', 'YYYY-MM-DD')) 
  INSERT INTO Author (AuthorID, FirstName, LastName, Nationality, DateOfBirth) VALUES (68, 'Sartre','gendu', 'French', TO_DATE('1905-06-21', 'YYYY-MM-DD'))
  INSERT INTO Author (AuthorID, FirstName, LastName, Nationality, DateOfBirth) VALUES (69, 'Carl', 'Jung', 'Swiss', TO_DATE('1875-07-26', 'YYYY-MM-DD'))
  INSERT INTO Author (AuthorID, FirstName, LastName, Nationality, DateOfBirth) VALUES (70, 'Hermann', 'Hesse', 'German', TO_DATE('1877-07-02', 'YYYY-MM-DD'))
  INSERT INTO Author (AuthorID, FirstName, LastName, Nationality, DateOfBirth) VALUES (71, 'Mikhail', 'Bulgakov', 'Russian', TO_DATE('1891-05-15', 'YYYY-MM-DD'))
  INSERT INTO Author (AuthorID, FirstName, LastName, Nationality, DateOfBirth) VALUES (72, 'Yevgeny', 'Zamyatin', 'Russian', TO_DATE('1884-02-20', 'YYYY-MM-DD'))
  INSERT INTO Author (AuthorID, FirstName, LastName, Nationality, DateOfBirth) VALUES (73, 'Albert', 'Camus', 'French', TO_DATE('1913-11-07', 'YYYY-MM-DD'))
  INSERT INTO Author (AuthorID, FirstName, LastName, Nationality, DateOfBirth) VALUES (74, 'Kazuo', 'Ishiguro', 'British', TO_DATE('1954-11-08', 'YYYY-MM-DD'))
  INSERT INTO Author (AuthorID, FirstName, LastName, Nationality, DateOfBirth) VALUES (75, 'David', 'Foster Wallace', 'American', TO_DATE('1962-02-21', 'YYYY-MM-DD'))
  INSERT INTO Author (AuthorID, FirstName, LastName, Nationality, DateOfBirth) VALUES (76, 'Richard', 'Yates', 'American', TO_DATE('1926-02-08', 'YYYY-MM-DD'))
  INSERT INTO Author (AuthorID, FirstName, LastName, Nationality, DateOfBirth) VALUES (77, 'David', 'Mitchell', 'British', TO_DATE('1969-01-12', 'YYYY-MM-DD'))
  INSERT INTO Author (AuthorID, FirstName, LastName, Nationality, DateOfBirth) VALUES (78, 'Tom', 'Rob Smith', 'British', TO_DATE('1979-03-08', 'YYYY-MM-DD'))
  INSERT INTO Author (AuthorID, FirstName, LastName, Nationality, DateOfBirth) VALUES (79, 'Joseph', 'Heller', 'American', TO_DATE('1923-05-01', 'YYYY-MM-DD'))
  INSERT INTO Author (AuthorID, FirstName, LastName, Nationality, DateOfBirth) VALUES (80, 'John', 'Updike', 'American', TO_DATE('1932-03-18', 'YYYY-MM-DD'))
  INSERT INTO Author (AuthorID, FirstName, LastName, Nationality, DateOfBirth) VALUES (81, 'Philip', 'Roth', 'American', TO_DATE('1933-03-19', 'YYYY-MM-DD'))
  INSERT INTO Author (AuthorID, FirstName, LastName, Nationality, DateOfBirth) VALUES (82, 'Alice', 'Munro', 'Canadian', TO_DATE('1931-07-10', 'YYYY-MM-DD'))
  INSERT INTO Author (AuthorID, FirstName, LastName, Nationality, DateOfBirth) VALUES (83, 'George', 'Saunders', 'American', TO_DATE('1958-12-02', 'YYYY-MM-DD'))
  INSERT INTO Author (AuthorID, FirstName, LastName, Nationality, DateOfBirth) VALUES (84, 'Herman', 'Melville', 'American', TO_DATE('1819-08-01', 'YYYY-MM-DD'))
  INSERT INTO Author (AuthorID, FirstName, LastName, Nationality, DateOfBirth) VALUES (85, 'Jane', 'Austen', 'British', TO_DATE('1775-12-16', 'YYYY-MM-DD'))
  INSERT INTO Author (AuthorID, FirstName, LastName, Nationality, DateOfBirth) VALUES (86, 'Marilyn', 'Robinson', 'American', TO_DATE('1943-11-26', 'YYYY-MM-DD'))
  INSERT INTO Author (AuthorID, FirstName, LastName, Nationality, DateOfBirth) VALUES (87, 'J.D.', 'Salinger', 'American', TO_DATE('1919-01-01', 'YYYY-MM-DD'))
   INTO Author (AuthorID, FirstName, LastName, Nationality, DateOfBirth) VALUES (88, 'Zora', 'Neale Hurston', 'American', TO_DATE('1891-01-07', 'YYYY-MM-DD'))
   INTO Author (AuthorID, FirstName, LastName, Nationality, DateOfBirth) VALUES (89, 'Langston', 'Hughes', 'American', TO_DATE('1902-02-01', 'YYYY-MM-DD'))
   INTO Author (AuthorID, FirstName, LastName, Nationality, DateOfBirth) VALUES (90, 'Ralph', 'Ellison', 'American', TO_DATE('1914-03-01', 'YYYY-MM-DD'))
   INTO Author (AuthorID, FirstName, LastName, Nationality, DateOfBirth) VALUES (91, 'Flannery', 'O’Connor', 'American', TO_DATE('1925-03-25', 'YYYY-MM-DD'))
   INTO Author (AuthorID, FirstName, LastName, Nationality, DateOfBirth) VALUES (92, 'Wendell', 'Berry', 'American', TO_DATE('1934-08-05', 'YYYY-MM-DD'))
   INTO Author (AuthorID, FirstName, LastName, Nationality, DateOfBirth) VALUES (93, 'Michael', 'Chabon', 'American', TO_DATE('1963-05-24', 'YYYY-MM-DD'))
   INTO Author (AuthorID, FirstName, LastName, Nationality, DateOfBirth) VALUES (94, 'Jonathan', 'Franzen', 'American', TO_DATE('1959-08-17', 'YYYY-MM-DD'))
   INTO Author (AuthorID, FirstName, LastName, Nationality, DateOfBirth) VALUES (95, 'Chimamanda', 'Ngozi Adichie', 'Nigerian', TO_DATE('1977-09-15', 'YYYY-MM-DD'))
   INTO Author (AuthorID, FirstName, LastName, Nationality, DateOfBirth) VALUES (96, 'Michael', 'Lewis', 'American', TO_DATE('1960-10-15', 'YYYY-MM-DD'))
   INTO Author (AuthorID, FirstName, LastName, Nationality, DateOfBirth) VALUES (97, 'J.K.', 'Rowling', 'British', TO_DATE('1965-07-31', 'YYYY-MM-DD'))
   INTO Author (AuthorID, FirstName, LastName, Nationality, DateOfBirth) VALUES (98, 'Dan', 'Brown', 'American', TO_DATE('1964-06-22', 'YYYY-MM-DD'))
   INTO Author (AuthorID, FirstName, LastName, Nationality, DateOfBirth) VALUES (99, 'Stephen', 'King', 'American', TO_DATE('1947-09-21', 'YYYY-MM-DD'))
   INTO Author (AuthorID, FirstName, LastName, Nationality, DateOfBirth) VALUES (100, 'Lee', 'Child', 'British', TO_DATE('1954-10-29', 'YYYY-MM-DD'))
SELECT * FROM dual;


INSERT ALL
   INTO Author (AuthorID, FirstName, LastName, Nationality, DateOfBirth) VALUES (101, 'Harper', 'Lee', 'American', TO_DATE('1926-04-28', 'YYYY-MM-DD'))
   INTO Author (AuthorID, FirstName, LastName, Nationality, DateOfBirth) VALUES (102, 'John', 'Grisham', 'American', TO_DATE('1955-02-08', 'YYYY-MM-DD'))
   INTO Author (AuthorID, FirstName, LastName, Nationality, DateOfBirth) VALUES (103, 'Nicholas', 'Sparks', 'American', TO_DATE('1965-12-31', 'YYYY-MM-DD'))
   INTO Author (AuthorID, FirstName, LastName, Nationality, DateOfBirth) VALUES (104, 'Danielle', 'Steel', 'American', TO_DATE('1947-08-14', 'YYYY-MM-DD'))
   INTO Author (AuthorID, FirstName, LastName, Nationality, DateOfBirth) VALUES (105, 'Dean', 'Koontz', 'American', TO_DATE('1945-07-09', 'YYYY-MM-DD'))
   INTO Author (AuthorID, FirstName, LastName, Nationality, DateOfBirth) VALUES (106, 'George', 'Orwell', 'British', TO_DATE('1903-06-25', 'YYYY-MM-DD'))
   INTO Author (AuthorID, FirstName, LastName, Nationality, DateOfBirth) VALUES (107, 'George', 'R.R. Martin', 'American', TO_DATE('1948-09-20', 'YYYY-MM-DD'))
   INTO Author (AuthorID, FirstName, LastName, Nationality, DateOfBirth) VALUES (108, 'C.S.', 'Lewis', 'British', TO_DATE('1898-11-29', 'YYYY-MM-DD'))
   INTO Author (AuthorID, FirstName, LastName, Nationality, DateOfBirth) VALUES (109, 'J.R.R.', 'Tolkien', 'British', TO_DATE('1892-01-03', 'YYYY-MM-DD'))
   INTO Author (AuthorID, FirstName, LastName, Nationality, DateOfBirth) VALUES (110, 'J.K.', 'Rowling', 'British', TO_DATE('1965-07-31', 'YYYY-MM-DD'))
   INTO Author (AuthorID, FirstName, LastName, Nationality, DateOfBirth) VALUES (111, 'Isaac', 'Asimov', 'American', TO_DATE('1920-01-02', 'YYYY-MM-DD'))
   INTO Author (AuthorID, FirstName, LastName, Nationality, DateOfBirth) VALUES (112, 'Arthur', 'C. Clarke', 'British', TO_DATE('1917-12-16', 'YYYY-MM-DD'))
   INTO Author (AuthorID, FirstName, LastName, Nationality, DateOfBirth) VALUES (113, 'Philip', 'K. Dick', 'American', TO_DATE('1928-12-16', 'YYYY-MM-DD'))
   INTO Author (AuthorID, FirstName, LastName, Nationality, DateOfBirth) VALUES (114, 'Douglas', 'Adams', 'British', TO_DATE('1952-03-11', 'YYYY-MM-DD'))
   INTO Author (AuthorID, FirstName, LastName, Nationality, DateOfBirth) VALUES (115, 'Raymond', 'Chandler', 'American', TO_DATE('1888-07-23', 'YYYY-MM-DD'))
   INTO Author (AuthorID, FirstName, LastName, Nationality, DateOfBirth) VALUES (116, 'Daphne', 'Du Maurier', 'British', TO_DATE('1907-05-13', 'YYYY-MM-DD'))
   INTO Author (AuthorID, FirstName, LastName, Nationality, DateOfBirth) VALUES (117, 'F. Scott', 'Fitzgerald', 'American', TO_DATE('1896-09-24', 'YYYY-MM-DD'))
   INTO Author (AuthorID, FirstName, LastName, Nationality, DateOfBirth) VALUES (118, 'William', 'Shakespeare', 'English', TO_DATE('1564-04-23', 'YYYY-MM-DD'))
   INTO Author (AuthorID, FirstName, LastName, Nationality, DateOfBirth) VALUES (119, 'Emily', 'Dickinson', 'American', TO_DATE('1830-12-10', 'YYYY-MM-DD'))
   INTO Author (AuthorID, FirstName, LastName, Nationality, DateOfBirth) VALUES (120, 'Sylvia', 'Plath', 'American', TO_DATE('1932-10-27', 'YYYY-MM-DD'))
   INTO Author (AuthorID, FirstName, LastName, Nationality, DateOfBirth) VALUES (121, 'Hannah', 'Arendt', 'German', TO_DATE('1906-10-14', 'YYYY-MM-DD'))
   INTO Author (AuthorID, FirstName, LastName, Nationality, DateOfBirth) VALUES (122, 'Jean-Paul', 'Sartre', 'French', TO_DATE('1905-06-21', 'YYYY-MM-DD'))
   INTO Author (AuthorID, FirstName, LastName, Nationality, DateOfBirth) VALUES (123, 'Simone', 'de Beauvoir', 'French', TO_DATE('1908-01-09', 'YYYY-MM-DD'))
   INTO Author (AuthorID, FirstName, LastName, Nationality, DateOfBirth) VALUES (124, 'Carl', 'Jung', 'Swiss', TO_DATE('1875-07-26', 'YYYY-MM-DD'))
   INTO Author (AuthorID, FirstName, LastName, Nationality, DateOfBirth) VALUES (125, 'Hermann', 'Hesse', 'German', TO_DATE('1877-07-02', 'YYYY-MM-DD'))
   INTO Author (AuthorID, FirstName, LastName, Nationality, DateOfBirth) VALUES (126, 'Mikhail', 'Bulgakov', 'Russian', TO_DATE('1891-05-15', 'YYYY-MM-DD'))
   INTO Author (AuthorID, FirstName, LastName, Nationality, DateOfBirth) VALUES (127, 'Yevgeny', 'Zamyatin', 'Russian', TO_DATE('1884-02-20', 'YYYY-MM-DD'))
   INTO Author (AuthorID, FirstName, LastName, Nationality, DateOfBirth) VALUES (128, 'Albert', 'Camus', 'French', TO_DATE('1913-11-07', 'YYYY-MM-DD'))
   INTO Author (AuthorID, FirstName, LastName, Nationality, DateOfBirth) VALUES (129, 'Kazuo', 'Ishiguro', 'British', TO_DATE('1954-11-08', 'YYYY-MM-DD'))
   INTO Author (AuthorID, FirstName, LastName, Nationality, DateOfBirth) VALUES (130, 'David', 'Foster Wallace', 'American', TO_DATE('1962-02-21', 'YYYY-MM-DD'))
   INTO Author (AuthorID, FirstName, LastName, Nationality, DateOfBirth) VALUES (131, 'Richard', 'Yates', 'American', TO_DATE('1926-02-08', 'YYYY-MM-DD'))
   INTO Author (AuthorID, FirstName, LastName, Nationality, DateOfBirth) VALUES (132, 'David', 'Mitchell', 'British', TO_DATE('1969-01-12', 'YYYY-MM-DD'))
   INTO Author (AuthorID, FirstName, LastName, Nationality, DateOfBirth) VALUES (133, 'Tom', 'Rob Smith', 'British', TO_DATE('1979-03-08', 'YYYY-MM-DD'))
   INTO Author (AuthorID, FirstName, LastName, Nationality, DateOfBirth) VALUES (134, 'Joseph', 'Heller', 'American', TO_DATE('1923-05-01', 'YYYY-MM-DD'))
   INTO Author (AuthorID, FirstName, LastName, Nationality, DateOfBirth) VALUES (135, 'John', 'Updike', 'American', TO_DATE('1932-03-18', 'YYYY-MM-DD'))
   INTO Author (AuthorID, FirstName, LastName, Nationality, DateOfBirth) VALUES (136, 'Philip', 'Roth', 'American', TO_DATE('1933-03-19', 'YYYY-MM-DD'))
   INTO Author (AuthorID, FirstName, LastName, Nationality, DateOfBirth) VALUES (137, 'Alice', 'Munro', 'Canadian', TO_DATE('1931-07-10', 'YYYY-MM-DD'))
   INTO Author (AuthorID, FirstName, LastName, Nationality, DateOfBirth) VALUES (138, 'George', 'Saunders', 'American', TO_DATE('1958-12-02', 'YYYY-MM-DD'))
   INTO Author (AuthorID, FirstName, LastName, Nationality, DateOfBirth) VALUES (139, 'Herman', 'Melville', 'American', TO_DATE('1819-08-01', 'YYYY-MM-DD'))
   INTO Author (AuthorID, FirstName, LastName, Nationality, DateOfBirth) VALUES (140, 'Jane', 'Austen', 'British', TO_DATE('1775-12-16', 'YYYY-MM-DD'))
   INTO Author (AuthorID, FirstName, LastName, Nationality, DateOfBirth) VALUES (141, 'Charles', 'Dickens', 'British', TO_DATE('1812-02-07', 'YYYY-MM-DD'))
   INTO Author (AuthorID, FirstName, LastName, Nationality, DateOfBirth) VALUES (142, 'Mark', 'Twain', 'American', TO_DATE('1835-11-30', 'YYYY-MM-DD'))
   INTO Author (AuthorID, FirstName, LastName, Nationality, DateOfBirth) VALUES (143, 'Leo', 'Tolstoy', 'Russian', TO_DATE('1828-09-09', 'YYYY-MM-DD'))
   INTO Author (AuthorID, FirstName, LastName, Nationality, DateOfBirth) VALUES (144, 'Fyodor', 'Dostoevsky', 'Russian', TO_DATE('1821-11-11', 'YYYY-MM-DD'))
   INTO Author (AuthorID, FirstName, LastName, Nationality, DateOfBirth) VALUES (145, 'Anton', 'Chekhov', 'Russian', TO_DATE('1860-01-29', 'YYYY-MM-DD'))
   INTO Author (AuthorID, FirstName, LastName, Nationality, DateOfBirth) VALUES (146, 'Victor', 'Hugo', 'French', TO_DATE('1802-02-26', 'YYYY-MM-DD'))
   INTO Author (AuthorID, FirstName, LastName, Nationality, DateOfBirth) VALUES (147, 'Émile', 'Zola', 'French', TO_DATE('1840-04-02', 'YYYY-MM-DD'))
   INTO Author (AuthorID, FirstName, LastName, Nationality, DateOfBirth) VALUES (148, 'Gustave', 'Flaubert', 'French', TO_DATE('1821-12-12', 'YYYY-MM-DD'))
   INTO Author (AuthorID, FirstName, LastName, Nationality, DateOfBirth) VALUES (149, 'Albert', 'Wells', 'British', TO_DATE('1866-09-21', 'YYYY-MM-DD'))
   INTO Author (AuthorID, FirstName, LastName, Nationality, DateOfBirth) VALUES (150, 'Arthur', 'Conan Doyle', 'British', TO_DATE('1859-05-22', 'YYYY-MM-DD'))
SELECT * FROM dual;



CREATE TABLE Books (
    BookID INT PRIMARY KEY,                              -- Unique identifier for each book
    Title VARCHAR(150) NOT NULL,                         -- Title of the book
    AuthorID INT,                                        -- Foreign Key linking to AuthorID in Authors table
    ISBN VARCHAR(50) NOT NULL,                           -- International Standard Book Number
    PublishedYear INT NOT NULL,                          -- Year the book was published
    Genre VARCHAR(50),                                   -- Genre of the book
    CopiesAvailable INT NOT NULL,                        -- Number of copies available in the library
    CONSTRAINT fk_author FOREIGN KEY (AuthorID) REFERENCES Author(AuthorID)   -- Foreign key constraint
);

DROP TABLE BOOKS;



DELETE FROM BOOKS;



INSERT INTO Books (BookID, Title, AuthorID, ISBN, PublishedYear, Genre, CopiesAvailable)
VALUES (1, 'To Kill a Mockingbird', 1, '978-0060935467', 1960, 'Fiction', 5);

INSERT INTO Books (BookID, Title, AuthorID, ISBN, PublishedYear, Genre, CopiesAvailable)
VALUES (2, '1984', 2, '978-0451524935', 1949, 'Dystopian', 7);

INSERT INTO Books (BookID, Title, AuthorID, ISBN, PublishedYear, Genre, CopiesAvailable)
VALUES (3, 'The Great Gatsby', 3, '978-0743273565', 1925, 'Fiction', 6);

INSERT INTO Books (BookID, Title, AuthorID, ISBN, PublishedYear, Genre, CopiesAvailable)
VALUES (4, 'The Catcher in the Rye', 4, '978-0316769488', 1951, 'Fiction', 4);

INSERT INTO Books (BookID, Title, AuthorID, ISBN, PublishedYear, Genre, CopiesAvailable)
VALUES (5, 'Pride and Prejudice', 5, '978-1503290563', 1813, 'Romance', 8);

INSERT INTO Books (BookID, Title, AuthorID, ISBN, PublishedYear, Genre, CopiesAvailable)
VALUES (6, 'The Hobbit', 6, '978-0547928227', 1937, 'Fantasy', 6);

INSERT INTO Books (BookID, Title, AuthorID, ISBN, PublishedYear, Genre, CopiesAvailable)
VALUES (7, 'Fahrenheit 451', 7, '978-1451673319', 1953, 'Dystopian', 5);

INSERT INTO Books (BookID, Title, AuthorID, ISBN, PublishedYear, Genre, CopiesAvailable)
VALUES (8, 'Jane Eyre', 8, '978-0141441146', 1847, 'Romance', 6);

INSERT INTO Books (BookID, Title, AuthorID, ISBN, PublishedYear, Genre, CopiesAvailable)
VALUES (9, 'The Lord of the Rings', 9, '978-0618640157', 1954, 'Fantasy', 4);

INSERT INTO Books (BookID, Title, AuthorID, ISBN, PublishedYear, Genre, CopiesAvailable)
VALUES (10, 'The Book Thief', 10, '978-0375842207', 2005, 'Historical Fiction', 5);

INSERT INTO Books (BookID, Title, AuthorID, ISBN, PublishedYear, Genre, CopiesAvailable)
VALUES (11, 'Animal Farm', 11, '978-0451526342', 1945, 'Political Satire', 7);

INSERT INTO Books (BookID, Title, AuthorID, ISBN, PublishedYear, Genre, CopiesAvailable)
VALUES (12, 'The Alchemist', 12, '978-0062315007', 1988, 'Adventure', 6);

INSERT INTO Books (BookID, Title, AuthorID, ISBN, PublishedYear, Genre, CopiesAvailable)
VALUES (13, 'The Kite Runner', 13, '978-1594631931', 2003, 'Fiction', 8);

INSERT INTO Books (BookID, Title, AuthorID, ISBN, PublishedYear, Genre, CopiesAvailable)
VALUES (14, 'The Shining', 14, '978-0307743657', 1977, 'Horror', 5);

INSERT INTO Books (BookID, Title, AuthorID, ISBN, PublishedYear, Genre, CopiesAvailable)
VALUES (15, 'Moby Dick', 15, '978-1503280786', 1851, 'Adventure', 4);

INSERT INTO Books (BookID, Title, AuthorID, ISBN, PublishedYear, Genre, CopiesAvailable)
VALUES (16, 'War and Peace', 16, '978-0199232765', 1869, 'Historical Fiction', 7);

INSERT INTO Books (BookID, Title, AuthorID, ISBN, PublishedYear, Genre, CopiesAvailable)
VALUES (17, 'Crime and Punishment', 17, '978-0140449136', 1866, 'Crime', 6);

INSERT INTO Books (BookID, Title, AuthorID, ISBN, PublishedYear, Genre, CopiesAvailable)
VALUES (18, 'The Odyssey', 18, '978-0140268867', -800, 'Epic', 3);

INSERT INTO Books (BookID, Title, AuthorID, ISBN, PublishedYear, Genre, CopiesAvailable)
VALUES (19, 'The Brothers Karamazov', 19, '978-0374528379', 1880, 'Philosophical Fiction', 5);

INSERT INTO Books (BookID, Title, AuthorID, ISBN, PublishedYear, Genre, CopiesAvailable)
VALUES (20, 'Les Misérables', 20, '978-0451419438', 1862, 'Historical Fiction', 7);

INSERT INTO Books (BookID, Title, AuthorID, ISBN, PublishedYear, Genre, CopiesAvailable)
VALUES (21, 'Don Quixote', 21, '978-0060934347', 1605, 'Adventure', 6);

INSERT INTO Books (BookID, Title, AuthorID, ISBN, PublishedYear, Genre, CopiesAvailable)
VALUES (22, 'The Divine Comedy', 22, '978-0142437223', 1320, 'Epic', 4);

INSERT INTO Books (BookID, Title, AuthorID, ISBN, PublishedYear, Genre, CopiesAvailable)
VALUES (23, 'Ulysses', 23, '978-0141182803', 1922, 'Modernist', 3);

INSERT INTO Books (BookID, Title, AuthorID, ISBN, PublishedYear, Genre, CopiesAvailable)
VALUES (24, 'A Tale of Two Cities', 24, '978-0141439600', 1859, 'Historical Fiction', 6);

INSERT INTO Books (BookID, Title, AuthorID, ISBN, PublishedYear, Genre, CopiesAvailable)
VALUES (25, 'Brave New World', 25, '978-0060850524', 1932, 'Dystopian', 5);

INSERT INTO Books (BookID, Title, AuthorID, ISBN, PublishedYear, Genre, CopiesAvailable)
VALUES (26, 'The Iliad', 26, '978-0140275360', -750, 'Epic', 4);

INSERT INTO Books (BookID, Title, AuthorID, ISBN, PublishedYear, Genre, CopiesAvailable)
VALUES (27, 'The Road', 27, '978-0307387899', 2006, 'Post-apocalyptic', 6);

INSERT INTO Books (BookID, Title, AuthorID, ISBN, PublishedYear, Genre, CopiesAvailable)
VALUES (28, 'Lolita', 28, '978-0679723165', 1955, 'Literary Fiction', 4);

INSERT INTO Books (BookID, Title, AuthorID, ISBN, PublishedYear, Genre, CopiesAvailable)
VALUES (29, 'Frankenstein', 29, '978-0486282114', 1818, 'Gothic', 5);

INSERT INTO Books (BookID, Title, AuthorID, ISBN, PublishedYear, Genre, CopiesAvailable)
VALUES (30, 'The Picture of Dorian Gray', 30, '978-0486278070', 1890, 'Gothic', 6);

INSERT INTO Books (BookID, Title, AuthorID, ISBN, PublishedYear, Genre, CopiesAvailable)
VALUES (31, 'Anna Karenina', 31, '978-0143035008', 1877, 'Literary Fiction', 7);

INSERT INTO Books (BookID, Title, AuthorID, ISBN, PublishedYear, Genre, CopiesAvailable)
VALUES (32, 'Gone with the Wind', 32, '978-1451635621', 1936, 'Historical Fiction', 8);

INSERT INTO Books (BookID, Title, AuthorID, ISBN, PublishedYear, Genre, CopiesAvailable)
VALUES (33, 'The Sound and the Fury', 33, '978-0679732242', 1929, 'Literary Fiction', 4);

INSERT INTO Books (BookID, Title, AuthorID, ISBN, PublishedYear, Genre, CopiesAvailable)
VALUES (34, 'Catch-22', 34, '978-1451626650', 1961, 'Satire', 5);

INSERT INTO Books (BookID, Title, AuthorID, ISBN, PublishedYear, Genre, CopiesAvailable)
VALUES (35, 'Beloved', 35, '978-1400033416', 1987, 'Historical Fiction', 6);

INSERT INTO Books (BookID, Title, AuthorID, ISBN, PublishedYear, Genre, CopiesAvailable)
VALUES (36, 'One Hundred Years of Solitude', 36, '978-0060883287', 1967, 'Magical Realism', 7);

INSERT INTO Books (BookID, Title, AuthorID, ISBN, PublishedYear, Genre, CopiesAvailable)
VALUES (37, 'The Sun Also Rises', 37, '978-0743297332', 1926, 'Fiction', 5);

INSERT INTO Books (BookID, Title, AuthorID, ISBN, PublishedYear, Genre, CopiesAvailable)
VALUES (38, 'Dracula', 38, '978-0486411095', 1897, 'Gothic', 6);

INSERT INTO Books (BookID, Title, AuthorID, ISBN, PublishedYear, Genre, CopiesAvailable)
VALUES (39, 'Rebecca', 39, '978-0380730407', 1938, 'Gothic', 8);

INSERT INTO Books (BookID, Title, AuthorID, ISBN, PublishedYear, Genre, CopiesAvailable)
VALUES (40, 'The Grapes of Wrath', 40, '978-0143039433', 1939, 'Historical Fiction', 6);

INSERT INTO Books (BookID, Title, AuthorID, ISBN, PublishedYear, Genre, CopiesAvailable)
VALUES (41, 'Things Fall Apart', 41, '978-0385474542', 1958, 'Historical Fiction', 5);

INSERT INTO Books (BookID, Title, AuthorID, ISBN, PublishedYear, Genre, CopiesAvailable)
VALUES (42, 'The Secret Garden', 42, '978-0064401883', 1911, 'Children’s Fiction', 4);

INSERT INTO Books (BookID, Title, AuthorID, ISBN, PublishedYear, Genre, CopiesAvailable)
VALUES (43, 'The Little Prince', 43, '978-0156012195', 1943, 'Fantasy', 7);

INSERT INTO Books (BookID, Title, AuthorID, ISBN, PublishedYear, Genre, CopiesAvailable)
VALUES (44, 'Madame Bovary', 44, '978-0199535651', 1856, 'Literary Fiction', 6);

INSERT INTO Books (BookID, Title, AuthorID, ISBN, PublishedYear, Genre, CopiesAvailable)
VALUES (45, 'Alice’s Adventures in Wonderland', 45, '978-0486416588', 1865, 'Fantasy', 4);

INSERT INTO Books (BookID, Title, AuthorID, ISBN, PublishedYear, Genre, CopiesAvailable)
VALUES (46, 'The Jungle Book', 46, '978-0141325293', 1894, 'Adventure', 5);

INSERT INTO Books (BookID, Title, AuthorID, ISBN, PublishedYear, Genre, CopiesAvailable)
VALUES (47, 'Wuthering Heights', 47, '978-0141439556', 1847, 'Romance', 6);

INSERT INTO Books (BookID, Title, AuthorID, ISBN, PublishedYear, Genre, CopiesAvailable)
VALUES (48, 'The Bell Jar', 48, '978-0060837020', 1963, 'Autobiographical Fiction', 7);

INSERT INTO Books (BookID, Title, AuthorID, ISBN, PublishedYear, Genre, CopiesAvailable)
VALUES (49, 'Invisible Man', 49, '978-0679732761', 1952, 'Literary Fiction', 8);

INSERT INTO Books (BookID, Title, AuthorID, ISBN, PublishedYear, Genre, CopiesAvailable)
VALUES (50, 'The Hunchback of Notre-Dame', 50, '978-0199555802', 1831, 'Historical Fiction', 5);



INSERT INTO Books (BookID, Title, AuthorID, ISBN, PublishedYear, Genre, CopiesAvailable)
VALUES (51, 'The Handmaid`s Tale', 51, '978-0385490818', 1985, 'Dystopian', 5);

INSERT INTO Books (BookID, Title, AuthorID, ISBN, PublishedYear, Genre, CopiesAvailable)
VALUES (52, 'The Catch-22', 52, '978-0099470465', 1961, 'Satire', 4);

INSERT INTO Books (BookID, Title, AuthorID, ISBN, PublishedYear, Genre, CopiesAvailable)
VALUES (53, 'The Color Purple', 53, '978-0156028356', 1982, 'Historical Fiction', 6);

INSERT INTO Books (BookID, Title, AuthorID, ISBN, PublishedYear, Genre, CopiesAvailable)
VALUES (54, 'Middlemarch', 54, '978-0141439549', 1871, 'Literary Fiction', 7);

INSERT INTO Books (BookID, Title, AuthorID, ISBN, PublishedYear, Genre, CopiesAvailable)
VALUES (55, 'The Metamorphosis', 55, '978-0553213690', 1915, 'Philosophical Fiction', 5);

INSERT INTO Books (BookID, Title, AuthorID, ISBN, PublishedYear, Genre, CopiesAvailable)
VALUES (56, 'The Stranger', 56, '978-0679720201', 1942, 'Philosophical Fiction', 4);

INSERT INTO Books (BookID, Title, AuthorID, ISBN, PublishedYear, Genre, CopiesAvailable)
VALUES (57, 'Emma', 57, '978-0141439587', 1815, 'Romance', 6);

INSERT INTO Books (BookID, Title, AuthorID, ISBN, PublishedYear, Genre, CopiesAvailable)
VALUES (58, 'A Passage to India', 58, '978-0156711425', 1924, 'Historical Fiction', 8);

INSERT INTO Books (BookID, Title, AuthorID, ISBN, PublishedYear, Genre, CopiesAvailable)
VALUES (59, 'On the Road', 59, '978-0140283297', 1957, 'Beat', 5);

INSERT INTO Books (BookID, Title, AuthorID, ISBN, PublishedYear, Genre, CopiesAvailable)
VALUES (60, 'Siddhartha', 60, '978-0553208849', 1922, 'Philosophical Fiction', 7);

INSERT INTO Books (BookID, Title, AuthorID, ISBN, PublishedYear, Genre, CopiesAvailable)
VALUES (61, 'The Canterbury Tales', 61, '978-0140424386', 1387, 'Epic Poetry', 6);

INSERT INTO Books (BookID, Title, AuthorID, ISBN, PublishedYear, Genre, CopiesAvailable)
VALUES (62, 'Heart of Darkness', 62, '978-0486264646', 1899, 'Adventure', 4);

INSERT INTO Books (BookID, Title, AuthorID, ISBN, PublishedYear, Genre, CopiesAvailable)
VALUES (63, 'The Phantom of the Opera', 63, '978-0060809249', 1909, 'Gothic', 5);

INSERT INTO Books (BookID, Title, AuthorID, ISBN, PublishedYear, Genre, CopiesAvailable)
VALUES (64, 'Great Expectations', 64, '978-0141439563', 1861, 'Literary Fiction', 7);

INSERT INTO Books (BookID, Title, AuthorID, ISBN, PublishedYear, Genre, CopiesAvailable)
VALUES (65, 'The Wind-Up Bird Chronicle', 65, '978-0679775430', 1994, 'Magical Realism', 6);

INSERT INTO Books (BookID, Title, AuthorID, ISBN, PublishedYear, Genre, CopiesAvailable)
VALUES (66, 'The Idiot', 66, '978-0375702242', 1869, 'Philosophical Fiction', 5);

INSERT INTO Books (BookID, Title, AuthorID, ISBN, PublishedYear, Genre, CopiesAvailable)
VALUES (67, 'The Call of the Wild', 67, '978-1503275928', 1903, 'Adventure', 8);

INSERT INTO Books (BookID, Title, AuthorID, ISBN, PublishedYear, Genre, CopiesAvailable)
VALUES (68, 'Journey to the Center of the Earth', 68, '978-0486440880', 1864, 'Science Fiction', 6);

INSERT INTO Books (BookID, Title, AuthorID, ISBN, PublishedYear, Genre, CopiesAvailable)
VALUES (69, 'A Clockwork Orange', 69, '978-0393312836', 1962, 'Dystopian', 4);

INSERT INTO Books (BookID, Title, AuthorID, ISBN, PublishedYear, Genre, CopiesAvailable)
VALUES (70, 'The Trial', 70, '978-0805209990', 1925, 'Philosophical Fiction', 5);

INSERT INTO Books (BookID, Title, AuthorID, ISBN, PublishedYear, Genre, CopiesAvailable)
VALUES (71, 'Love in the Time of Cholera', 71, '978-0307389732', 1985, 'Romance', 6);

INSERT INTO Books (BookID, Title, AuthorID, ISBN, PublishedYear, Genre, CopiesAvailable)
VALUES (72, 'The Secret Life of Bees', 72, '978-0142001745', 2001, 'Historical Fiction', 7);

INSERT INTO Books (BookID, Title, AuthorID, ISBN, PublishedYear, Genre, CopiesAvailable)
VALUES (73, 'Perfume', 73, '978-0375725845', 1985, 'Historical Fiction', 4);

INSERT INTO Books (BookID, Title, AuthorID, ISBN, PublishedYear, Genre, CopiesAvailable)
VALUES (74, 'Memoirs of a Geisha', 74, '978-0679781585', 1997, 'Historical Fiction', 5);

INSERT INTO Books (BookID, Title, AuthorID, ISBN, PublishedYear, Genre, CopiesAvailable)
VALUES (75, 'The Jungle', 75, '978-0486419237', 1906, 'Political Fiction', 8);

INSERT INTO Books (BookID, Title, AuthorID, ISBN, PublishedYear, Genre, CopiesAvailable)
VALUES (76, 'The Magus', 76, '978-0440351627', 1965, 'Psychological Fiction', 6);

INSERT INTO Books (BookID, Title, AuthorID, ISBN, PublishedYear, Genre, CopiesAvailable)
VALUES (77, 'The Joy Luck Club', 77, '978-0143038092', 1989, 'Literary Fiction', 5);

INSERT INTO Books (BookID, Title, AuthorID, ISBN, PublishedYear, Genre, CopiesAvailable)
VALUES (78, 'One Flew Over the Cuckoo\`s Nest', 78, '978-0451163967', 1962, 'Psychological Fiction', 7);

INSERT INTO Books (BookID, Title, AuthorID, ISBN, PublishedYear, Genre, CopiesAvailable)
VALUES (79, 'The Curious Incident of the Dog in the Night-Time', 79, '978-1400032716', 2003, 'Mystery', 6);

INSERT INTO Books (BookID, Title, AuthorID, ISBN, PublishedYear, Genre, CopiesAvailable)
VALUES (80, 'Norwegian Wood', 80, '978-0375704024', 1987, 'Romance', 4);

INSERT INTO Books (BookID, Title, AuthorID, ISBN, PublishedYear, Genre, CopiesAvailable)
VALUES (81, 'Shantaram', 81, '978-0312330538', 2003, 'Adventure', 5);

INSERT INTO Books (BookID, Title, AuthorID, ISBN, PublishedYear, Genre, CopiesAvailable)
VALUES (82, 'House of Leaves', 82, '978-0375703768', 2000, 'Horror', 7);

INSERT INTO Books (BookID, Title, AuthorID, ISBN, PublishedYear, Genre, CopiesAvailable)
VALUES (83, 'Life of Pi', 83, '978-0156027328', 2001, 'Adventure', 6);

INSERT INTO Books (BookID, Title, AuthorID, ISBN, PublishedYear, Genre, CopiesAvailable)
VALUES (84, 'The Road to Wigan Pier', 84, '978-0156767507', 1937, 'Non-Fiction', 4);

INSERT INTO Books (BookID, Title, AuthorID, ISBN, PublishedYear, Genre, CopiesAvailable)
VALUES (85, 'White Teeth', 85, '978-0375703867', 2000, 'Literary Fiction', 5);

INSERT INTO Books (BookID, Title, AuthorID, ISBN, PublishedYear, Genre, CopiesAvailable)
VALUES (86, 'Gulliver\`s Travels', 86, '978-0486292731', 1726, 'Satire', 6);

INSERT INTO Books (BookID, Title, AuthorID, ISBN, PublishedYear, Genre, CopiesAvailable)
VALUES (87, 'The Master and Margarita', 87, '978-0141180144', 1967, 'Magical Realism', 7);

INSERT INTO Books (BookID, Title, AuthorID, ISBN, PublishedYear, Genre, CopiesAvailable)
VALUES (88, 'The Poisonwood Bible', 88, '978-0061577079', 1998, 'Historical Fiction', 4);

INSERT INTO Books (BookID, Title, AuthorID, ISBN, PublishedYear, Genre, CopiesAvailable)
VALUES (89, 'The Amazing Adventures of Kavalier`S clay', 89, '978-0312282998', 2000, 'Literary Fiction', 5);

INSERT INTO Books (BookID, Title, AuthorID, ISBN, PublishedYear, Genre, CopiesAvailable)
VALUES (90, 'The Glass Castle', 90, '978-0743247542', 2005, 'Memoir', 6);

INSERT INTO Books (BookID, Title, AuthorID, ISBN, PublishedYear, Genre, CopiesAvailable)
VALUES (91, 'Angela\`s Ashes', 91, '978-0684842677', 1996, 'Memoir', 7);

INSERT INTO Books (BookID, Title, AuthorID, ISBN, PublishedYear, Genre, CopiesAvailable)
VALUES (92, 'The Time Traveler\`s Wife', 92, '978-1939126016', 2003, 'Romance', 5);

INSERT INTO Books (BookID, Title, AuthorID, ISBN, PublishedYear, Genre, CopiesAvailable)
VALUES (93, 'Catch-22', 93, '978-1451626650', 1961, 'Satire', 8);

INSERT INTO Books (BookID, Title, AuthorID, ISBN, PublishedYear, Genre, CopiesAvailable)
VALUES (94, 'The Book Thief', 94, '978-0375842200', 2005, 'Historical Fiction', 6);

INSERT INTO Books (BookID, Title, AuthorID, ISBN, PublishedYear, Genre, CopiesAvailable)
VALUES (95, 'Cloud Atlas', 95, '978-0375507253', 2004, 'Science Fiction', 5);

INSERT INTO Books (BookID, Title, AuthorID, ISBN, PublishedYear, Genre, CopiesAvailable)
VALUES (96, 'The Help', 96, '978-0425232200', 2009, 'Historical Fiction', 4);

INSERT INTO Books (BookID, Title, AuthorID, ISBN, PublishedYear, Genre, CopiesAvailable)
VALUES (97, 'Water for Elephants', 97, '978-1565125605', 2006, 'Historical Fiction', 5);

INSERT INTO Books (BookID, Title, AuthorID, ISBN, PublishedYear, Genre, CopiesAvailable)
VALUES (98, 'Never Let Me Go', 98, '978-1400078776', 2005, 'Dystopian', 6);

INSERT INTO Books (BookID, Title, AuthorID, ISBN, PublishedYear, Genre, CopiesAvailable)
VALUES (99, 'The Road', 99, '978-0307387899', 2006, 'Post-Apocalyptic Fiction', 7);

INSERT INTO Books (BookID, Title, AuthorID, ISBN, PublishedYear, Genre, CopiesAvailable)
VALUES (100, 'Beloved', 100, '978-1400033416', 1987, 'Literary Fiction', 8);


select title from books;

INSERT INTO Books (BookID, Title, AuthorID, ISBN, PublishedYear, Genre, CopiesAvailable)
VALUES (101, 'The Silent Observer', 101, '978-1506230897', 2021, 'Mystery', 5);

INSERT INTO Books (BookID, Title, AuthorID, ISBN, PublishedYear, Genre, CopiesAvailable)
VALUES (102, 'Whispers in the Dark', 102, '978-1611675130', 2020, 'Thriller', 7);

INSERT INTO Books (BookID, Title, AuthorID, ISBN, PublishedYear, Genre, CopiesAvailable)
VALUES (103, 'Echoes of Eternity', 103, '978-1772327055', 2022, 'Fantasy', 6);

INSERT INTO Books (BookID, Title, AuthorID, ISBN, PublishedYear, Genre, CopiesAvailable)
VALUES (104, 'The Last Train to Nowhere', 104, '978-0140143644', 2020, 'Historical Fiction', 4);

INSERT INTO Books (BookID, Title, AuthorID, ISBN, PublishedYear, Genre, CopiesAvailable)
VALUES (105, 'Beneath the Red Sky', 105, '978-0593103202', 2021, 'Adventure', 5);

INSERT INTO Books (BookID, Title, AuthorID, ISBN, PublishedYear, Genre, CopiesAvailable)
VALUES (106, 'Beyond the Horizon', 106, '978-1534324900', 2019, 'Science Fiction', 8);

INSERT INTO Books (BookID, Title, AuthorID, ISBN, PublishedYear, Genre, CopiesAvailable)
VALUES (107, 'A Dance of Shadows', 107, '978-0785151293', 2021, 'Fantasy', 7);

INSERT INTO Books (BookID, Title, AuthorID, ISBN, PublishedYear, Genre, CopiesAvailable)
VALUES (108, 'The Edge of Time', 108, '978-1501172445', 2021, 'Thriller', 6);

INSERT INTO Books (BookID, Title, AuthorID, ISBN, PublishedYear, Genre, CopiesAvailable)
VALUES (109, 'The Kingdom Beneath', 109, '978-1510103019', 2020, 'Fantasy', 5);

INSERT INTO Books (BookID, Title, AuthorID, ISBN, PublishedYear, Genre, CopiesAvailable)
VALUES (110, 'The Last Witness', 110, '978-1982142279', 2022, 'Mystery', 4);

INSERT INTO Books (BookID, Title, AuthorID, ISBN, PublishedYear, Genre, CopiesAvailable)
VALUES (111, 'The Shadow’s Curse', 111, '978-1526654541', 2022, 'Fantasy', 8);

INSERT INTO Books (BookID, Title, AuthorID, ISBN, PublishedYear, Genre, CopiesAvailable)
VALUES (112, 'The Final Secret', 112, '978-1328996372', 2021, 'Thriller', 6);

INSERT INTO Books (BookID, Title, AuthorID, ISBN, PublishedYear, Genre, CopiesAvailable)
VALUES (113, 'Midnight Sun', 113, '978-0316769488', 2020, 'Romance', 7);

INSERT INTO Books (BookID, Title, AuthorID, ISBN, PublishedYear, Genre, CopiesAvailable)
VALUES (114, 'Frost and Fire', 114, '978-0143039990', 2020, 'Adventure', 5);

INSERT INTO Books (BookID, Title, AuthorID, ISBN, PublishedYear, Genre, CopiesAvailable)
VALUES (115, 'The Magic of Echoes', 115, '978-1451677323', 2021, 'Fantasy', 8);

INSERT INTO Books (BookID, Title, AuthorID, ISBN, PublishedYear, Genre, CopiesAvailable)
VALUES (116, 'Darkness Unveiled', 116, '978-0062662339', 2020, 'Thriller', 6);

INSERT INTO Books (BookID, Title, AuthorID, ISBN, PublishedYear, Genre, CopiesAvailable)
VALUES (117, 'A Song of Steel', 117, '978-0451471647', 2022, 'Fantasy', 7);

INSERT INTO Books (BookID, Title, AuthorID, ISBN, PublishedYear, Genre, CopiesAvailable)
VALUES (118, 'The Hidden Valley', 118, '978-1476778480', 2021, 'Historical Fiction', 5);

INSERT INTO Books (BookID, Title, AuthorID, ISBN, PublishedYear, Genre, CopiesAvailable)
VALUES (119, 'Moonlit Paths', 119, '978-1515767831', 2021, 'Romance', 8);

INSERT INTO Books (BookID, Title, AuthorID, ISBN, PublishedYear, Genre, CopiesAvailable)
VALUES (120, 'The Whispering Wall', 120, '978-0735213081', 2020, 'Mystery', 6);

INSERT INTO Books (BookID, Title, AuthorID, ISBN, PublishedYear, Genre, CopiesAvailable)
VALUES (121, 'The Silent Witness', 121, '978-0765383836', 2022, 'Thriller', 7);

INSERT INTO Books (BookID, Title, AuthorID, ISBN, PublishedYear, Genre, CopiesAvailable)
VALUES (122, 'A Symphony of Fire', 122, '978-1250220641', 2021, 'Fantasy', 5);

INSERT INTO Books (BookID, Title, AuthorID, ISBN, PublishedYear, Genre, CopiesAvailable)
VALUES (123, 'The Night Traveler', 123, '978-1429932215', 2022, 'Historical Fiction', 6);

INSERT INTO Books (BookID, Title, AuthorID, ISBN, PublishedYear, Genre, CopiesAvailable)
VALUES (124, 'Echoes of the Past', 124, '978-1455580142', 2021, 'Adventure', 8);

INSERT INTO Books (BookID, Title, AuthorID, ISBN, PublishedYear, Genre, CopiesAvailable)
VALUES (125, 'The Last Dawn', 125, '978-1524745540', 2020, 'Thriller', 6);

INSERT INTO Books (BookID, Title, AuthorID, ISBN, PublishedYear, Genre, CopiesAvailable)
VALUES (126, 'Moonless Night', 126, '978-0307401934', 2022, 'Mystery', 7);

INSERT INTO Books (BookID, Title, AuthorID, ISBN, PublishedYear, Genre, CopiesAvailable)
VALUES (127, 'The Forbidden Dream', 127, '978-0374535869', 2020, 'Fantasy', 5);

INSERT INTO Books (BookID, Title, AuthorID, ISBN, PublishedYear, Genre, CopiesAvailable)
VALUES (128, 'A Dance of Stars', 128, '978-1501121528', 2021, 'Science Fiction', 8);

INSERT INTO Books (BookID, Title, AuthorID, ISBN, PublishedYear, Genre, CopiesAvailable)
VALUES (129, 'Beyond the Stars', 129, '978-0151014772', 2020, 'Adventure', 7);

INSERT INTO Books (BookID, Title, AuthorID, ISBN, PublishedYear, Genre, CopiesAvailable)
VALUES (130, 'The Final Hour', 130, '978-1542278483', 2021, 'Mystery', 5);

INSERT INTO Books (BookID, Title, AuthorID, ISBN, PublishedYear, Genre, CopiesAvailable)
VALUES (131, 'Wings of Fire', 131, '978-1565123044', 2020, 'Fantasy', 6);

INSERT INTO Books (BookID, Title, AuthorID, ISBN, PublishedYear, Genre, CopiesAvailable)
VALUES (132, 'A Winter’s Tale', 132, '978-0151010194', 2021, 'Historical Fiction', 8);

INSERT INTO Books (BookID, Title, AuthorID, ISBN, PublishedYear, Genre, CopiesAvailable)
VALUES (133, 'Fires of the Earth', 133, '978-0316769488', 2020, 'Thriller', 7);

INSERT INTO Books (BookID, Title, AuthorID, ISBN, PublishedYear, Genre, CopiesAvailable)
VALUES (134, 'The Forgotten Kingdom', 134, '978-0452295269', 2022, 'Fantasy', 5);

INSERT INTO Books (BookID, Title, AuthorID, ISBN, PublishedYear, Genre, CopiesAvailable)
VALUES (135, 'The Moon’s Song', 135, '978-0142424179', 2021, 'Adventure', 6);

INSERT INTO Books (BookID, Title, AuthorID, ISBN, PublishedYear, Genre, CopiesAvailable)
VALUES (136, 'The Winds of Change', 136, '978-0399178691', 2020, 'Historical Fiction', 8);

INSERT INTO Books (BookID, Title, AuthorID, ISBN, PublishedYear, Genre, CopiesAvailable)
VALUES (137, 'Shadows of the Future', 137, '978-1635576055', 2021, 'Science Fiction', 7);


INSERT INTO Books (BookID, Title, AuthorID, ISBN, PublishedYear, Genre, CopiesAvailable)
VALUES (138, 'Veil of Night', 138, '978-1101946923', 2022, 'Thriller', 5);

INSERT INTO Books (BookID, Title, AuthorID, ISBN, PublishedYear, Genre, CopiesAvailable)
VALUES (139, 'Journey to the West', 139, '978-0451531671', 2021, 'Adventure', 7);

INSERT INTO Books (BookID, Title, AuthorID, ISBN, PublishedYear, Genre, CopiesAvailable)
VALUES (140, 'Crown of the World', 140, '978-0316536794', 2021, 'Fantasy', 6);

INSERT INTO Books (BookID, Title, AuthorID, ISBN, PublishedYear, Genre, CopiesAvailable)
VALUES (141, 'The Starry Realm', 141, '978-0804139380', 2020, 'Science Fiction', 8);

INSERT INTO Books (BookID, Title, AuthorID, ISBN, PublishedYear, Genre, CopiesAvailable)
VALUES (142, 'The Burning Empire', 142, '978-0062293457', 2022, 'Fantasy', 5);

INSERT INTO Books (BookID, Title, AuthorID, ISBN, PublishedYear, Genre, CopiesAvailable)
VALUES (143, 'The Ice Walker', 143, '978-1451672212', 2021, 'Thriller', 7);

INSERT INTO Books (BookID, Title, AuthorID, ISBN, PublishedYear, Genre, CopiesAvailable)
VALUES (144, 'Echoes of Winter', 144, '978-0141048254', 2022, 'Historical Fiction', 6);

INSERT INTO Books (BookID, Title, AuthorID, ISBN, PublishedYear, Genre, CopiesAvailable)
VALUES (145, 'The Hidden Fortress', 145, '978-1250272534', 2020, 'Mystery', 8);

INSERT INTO Books (BookID, Title, AuthorID, ISBN, PublishedYear, Genre, CopiesAvailable)
VALUES (146, 'The Endless Night', 146, '978-1555974514', 2021, 'Fantasy', 5);

INSERT INTO Books (BookID, Title, AuthorID, ISBN, PublishedYear, Genre, CopiesAvailable)
VALUES (147, 'Frostbite', 147, '978-0525558505', 2021, 'Thriller', 6);

INSERT INTO Books (BookID, Title, AuthorID, ISBN, PublishedYear, Genre, CopiesAvailable)
VALUES (148, 'Legends of the Storm', 148, '978-0316235471', 2022, 'Fantasy', 7);

INSERT INTO Books (BookID, Title, AuthorID, ISBN, PublishedYear, Genre, CopiesAvailable)
VALUES (149, 'Beyond the Darkness', 149, '978-1101947160', 2021, 'Adventure', 5);

INSERT INTO Books (BookID, Title, AuthorID, ISBN, PublishedYear, Genre, CopiesAvailable)
VALUES (150, 'The Phoenix Awakens', 150, '978-0452295270', 2020, 'Historical Fiction', 6);

INSERT INTO Books (BookID, Title, AuthorID, ISBN, PublishedYear, Genre, CopiesAvailable)
VALUES (151, 'The Crystal Garden', 3, '978-1510107564', 2022, 'Fantasy', 6);

INSERT INTO Books (BookID, Title, AuthorID, ISBN, PublishedYear, Genre, CopiesAvailable)
VALUES (152, 'Whispers of the Past', 5, '978-0671028214', 2021, 'Thriller', 7);

INSERT INTO Books (BookID, Title, AuthorID, ISBN, PublishedYear, Genre, CopiesAvailable)
VALUES (153, 'Journey to the Unknown', 7, '978-0735204607', 2022, 'Science Fiction', 8);

INSERT INTO Books (BookID, Title, AuthorID, ISBN, PublishedYear, Genre, CopiesAvailable)
VALUES (154, 'The Sapphire Key', 9, '978-1439133891', 2020, 'Fantasy', 6);

INSERT INTO Books (BookID, Title, AuthorID, ISBN, PublishedYear, Genre, CopiesAvailable)
VALUES (155, 'The Clockmaker’s Secret', 11, '978-0143128203', 2021, 'Mystery', 5);

INSERT INTO Books (BookID, Title, AuthorID, ISBN, PublishedYear, Genre, CopiesAvailable)
VALUES (156, 'The Golden Empire', 13, '978-0804176200', 2022, 'Historical Fiction', 7);

INSERT INTO Books (BookID, Title, AuthorID, ISBN, PublishedYear, Genre, CopiesAvailable)
VALUES (157, 'Through the Mist', 15, '978-1524762231', 2021, 'Fantasy', 8);

INSERT INTO Books (BookID, Title, AuthorID, ISBN, PublishedYear, Genre, CopiesAvailable)
VALUES (158, 'The Unseen Path', 17, '978-0399589849', 2020, 'Thriller', 5);

INSERT INTO Books (BookID, Title, AuthorID, ISBN, PublishedYear, Genre, CopiesAvailable)
VALUES (159, 'Echoes of Tomorrow', 19, '978-1250250732', 2021, 'Science Fiction', 6);

INSERT INTO Books (BookID, Title, AuthorID, ISBN, PublishedYear, Genre, CopiesAvailable)
VALUES (160, 'Secrets in the Shadows', 21, '978-0062660359', 2022, 'Mystery', 7);

INSERT INTO Books (BookID, Title, AuthorID, ISBN, PublishedYear, Genre, CopiesAvailable)
VALUES (161, 'The Last Sunset', 23, '978-1501165791', 2021, 'Adventure', 5);

INSERT INTO Books (BookID, Title, AuthorID, ISBN, PublishedYear, Genre, CopiesAvailable)
VALUES (162, 'Winds of the Wilderness', 25, '978-1501157352', 2020, 'Historical Fiction', 8);

INSERT INTO Books (BookID, Title, AuthorID, ISBN, PublishedYear, Genre, CopiesAvailable)
VALUES (163, 'Beneath the Surface', 27, '978-1594634429', 2021, 'Thriller', 6);

INSERT INTO Books (BookID, Title, AuthorID, ISBN, PublishedYear, Genre, CopiesAvailable)
VALUES (164, 'The Fire Keeper’s Curse', 29, '978-1442434938', 2022, 'Fantasy', 7);

INSERT INTO Books (BookID, Title, AuthorID, ISBN, PublishedYear, Genre, CopiesAvailable)
VALUES (165, 'Tales from the Edge', 31, '978-1250621807', 2021, 'Science Fiction', 5);

INSERT INTO Books (BookID, Title, AuthorID, ISBN, PublishedYear, Genre, CopiesAvailable)
VALUES (166, 'The Fallen Kingdom', 33, '978-1501167320', 2020, 'Historical Fiction', 8);

INSERT INTO Books (BookID, Title, AuthorID, ISBN, PublishedYear, Genre, CopiesAvailable)
VALUES (167, 'The Secret of the Dawn', 35, '978-0399593275', 2022, 'Mystery', 6);

INSERT INTO Books (BookID, Title, AuthorID, ISBN, PublishedYear, Genre, CopiesAvailable)
VALUES (168, 'The Chronicles of Fire', 37, '978-0399536705', 2021, 'Fantasy', 7);

INSERT INTO Books (BookID, Title, AuthorID, ISBN, PublishedYear, Genre, CopiesAvailable)
VALUES (169, 'Shadows of the Abyss', 39, '978-1501170126', 2022, 'Adventure', 5);

INSERT INTO Books (BookID, Title, AuthorID, ISBN, PublishedYear, Genre, CopiesAvailable)
VALUES (170, 'The Light Beyond', 41, '978-0778329140', 2021, 'Science Fiction', 6);

INSERT INTO Books (BookID, Title, AuthorID, ISBN, PublishedYear, Genre, CopiesAvailable)
VALUES (171, 'The Heart of the Ocean', 43, '978-0452295010', 2020, 'Historical Fiction', 7);

INSERT INTO Books (BookID, Title, AuthorID, ISBN, PublishedYear, Genre, CopiesAvailable)
VALUES (172, 'The Lost World', 45, '978-0316817350', 2021, 'Thriller', 8);

INSERT INTO Books (BookID, Title, AuthorID, ISBN, PublishedYear, Genre, CopiesAvailable)
VALUES (173, 'Echoes from the Past', 47, '978-0316483500', 2020, 'Fantasy', 6);

INSERT INTO Books (BookID, Title, AuthorID, ISBN, PublishedYear, Genre, CopiesAvailable)
VALUES (174, 'The Ghost Ship', 49, '978-0374130519', 2022, 'Adventure', 5);

INSERT INTO Books (BookID, Title, AuthorID, ISBN, PublishedYear, Genre, CopiesAvailable)
VALUES (175, 'Rivers of Time', 51, '978-0452296376', 2021, 'Historical Fiction', 7);

INSERT INTO Books (BookID, Title, AuthorID, ISBN, PublishedYear, Genre, CopiesAvailable)
VALUES (176, 'The Veil of Stars', 53, '978-0316412044', 2021, 'Fantasy', 6);

INSERT INTO Books (BookID, Title, AuthorID, ISBN, PublishedYear, Genre, CopiesAvailable)
VALUES (177, 'The Last Dreamer', 55, '978-0062669055', 2020, 'Mystery', 8);

INSERT INTO Books (BookID, Title, AuthorID, ISBN, PublishedYear, Genre, CopiesAvailable)
VALUES (178, 'Into the Darkness', 57, '978-1429945642', 2021, 'Thriller', 5);

INSERT INTO Books (BookID, Title, AuthorID, ISBN, PublishedYear, Genre, CopiesAvailable)
VALUES (179, 'The Legend of the Lost City', 59, '978-1250292890', 2022, 'Fantasy', 7);

INSERT INTO Books (BookID, Title, AuthorID, ISBN, PublishedYear, Genre, CopiesAvailable)
VALUES (180, 'Echoes of the Ocean', 61, '978-0446547075', 2021, 'Adventure', 6);

INSERT INTO Books (BookID, Title, AuthorID, ISBN, PublishedYear, Genre, CopiesAvailable)
VALUES (181, 'The Path to Immortality', 63, '978-1501131324', 2022, 'Science Fiction', 8);

INSERT INTO Books (BookID, Title, AuthorID, ISBN, PublishedYear, Genre, CopiesAvailable)
VALUES (182, 'The Song of the Sea', 65, '978-0373872893', 2021, 'Romance', 7);

INSERT INTO Books (BookID, Title, AuthorID, ISBN, PublishedYear, Genre, CopiesAvailable)
VALUES (183, 'The Druid’s Curse', 67, '978-1496728524', 2020, 'Fantasy', 6);

INSERT INTO Books (BookID, Title, AuthorID, ISBN, PublishedYear, Genre, CopiesAvailable)
VALUES (184, 'The Last Light', 69, '978-1501187895', 2022, 'Mystery', 5);

INSERT INTO Books (BookID, Title, AuthorID, ISBN, PublishedYear, Genre, CopiesAvailable)
VALUES (185, 'The Crystal Seal', 71, '978-1635572078', 2021, 'Adventure', 6);

INSERT INTO Books (BookID, Title, AuthorID, ISBN, PublishedYear, Genre, CopiesAvailable)
VALUES (186, 'The Infinite Journey', 73, '978-1101986421', 2020, 'Science Fiction', 8);

INSERT INTO Books (BookID, Title, AuthorID, ISBN, PublishedYear, Genre, CopiesAvailable)
VALUES (187, 'The Secrets of the Forest', 75, '978-1250798721', 2021, 'Historical Fiction', 7);

INSERT INTO Books (BookID, Title, AuthorID, ISBN, PublishedYear, Genre, CopiesAvailable)
VALUES (188, 'Beneath the Stars', 77, '978-1501191105', 2022, 'Fantasy', 6);

INSERT INTO Books (BookID, Title, AuthorID, ISBN, PublishedYear, Genre, CopiesAvailable)
VALUES (189, 'The Forgotten Kingdom', 79, '978-0452298684', 2021, 'Adventure', 5);

INSERT INTO Books (BookID, Title, AuthorID, ISBN, PublishedYear, Genre, CopiesAvailable)
VALUES (190, 'The Red Tower', 81, '978-1496729514', 2022, 'Thriller', 8);

INSERT INTO Books (BookID, Title, AuthorID, ISBN, PublishedYear, Genre, CopiesAvailable)
VALUES (191, 'The Whispering Woods', 83, '978-1496712332', 2022, 'Fantasy', 6);

INSERT INTO Books (BookID, Title, AuthorID, ISBN, PublishedYear, Genre, CopiesAvailable)
VALUES (192, 'Shadows of the Sky', 85, '978-0062958909', 2021, 'Science Fiction', 7);

INSERT INTO Books (BookID, Title, AuthorID, ISBN, PublishedYear, Genre, CopiesAvailable)
VALUES (193, 'The Silent Hunter', 87, '978-1250254921', 2020, 'Mystery', 5);

INSERT INTO Books (BookID, Title, AuthorID, ISBN, PublishedYear, Genre, CopiesAvailable)
VALUES (194, 'The Blue Phoenix', 89, '978-0143130137', 2022, 'Fantasy', 8);

INSERT INTO Books (BookID, Title, AuthorID, ISBN, PublishedYear, Genre, CopiesAvailable)
VALUES (195, 'Fires of the East', 91, '978-1501145861', 2021, 'Adventure', 6);

INSERT INTO Books (BookID, Title, AuthorID, ISBN, PublishedYear, Genre, CopiesAvailable)
VALUES (196, 'The Depths of Night', 93, '978-1250247831', 2021, 'Thriller', 7);

INSERT INTO Books (BookID, Title, AuthorID, ISBN, PublishedYear, Genre, CopiesAvailable)
VALUES (197, 'The Storm of Souls', 95, '978-0399586681', 2020, 'Historical Fiction', 5);

INSERT INTO Books (BookID, Title, AuthorID, ISBN, PublishedYear, Genre, CopiesAvailable)
VALUES (198, 'The Silver City', 97, '978-1250229936', 2021, 'Fantasy', 6);

INSERT INTO Books (BookID, Title, AuthorID, ISBN, PublishedYear, Genre, CopiesAvailable)
VALUES (199, 'Kingdoms in the Sky', 99, '978-0385542455', 2020, 'Science Fiction', 8);

INSERT INTO Books (BookID, Title, AuthorID, ISBN, PublishedYear, Genre, CopiesAvailable)
VALUES (200, 'The Eternal Flame', 101, '978-1250292685', 2022, 'Adventure', 7);


INSERT INTO Books (BookID, Title, AuthorID, ISBN, PublishedYear, Genre, CopiesAvailable)
VALUES (200, 'Echoes of Tomorrow', 47, '978-0399584563', 2022, 'Science Fiction', 7);

INSERT INTO Books (BookID, Title, AuthorID, ISBN, PublishedYear, Genre, CopiesAvailable)
VALUES (201, 'Whispers in the Mist', 55, '978-1250261498', 2020, 'Fantasy', 6);

INSERT INTO Books (BookID, Title, AuthorID, ISBN, PublishedYear, Genre, CopiesAvailable)
VALUES (202, 'Beneath the Silent Sky', 79, '978-1501170327', 2021, 'Mystery', 5);

INSERT INTO Books (BookID, Title, AuthorID, ISBN, PublishedYear, Genre, CopiesAvailable)
VALUES (203, 'The Starry Road', 120, '978-0399575102', 2022, 'Adventure', 8);

INSERT INTO Books (BookID, Title, AuthorID, ISBN, PublishedYear, Genre, CopiesAvailable)
VALUES (204, 'Shadows of the Future', 110, '978-1501164415', 2021, 'Thriller', 6);

INSERT INTO Books (BookID, Title, AuthorID, ISBN, PublishedYear, Genre, CopiesAvailable)
VALUES (205, 'The Lost Kingdom', 88, '978-0399574389', 2020, 'Historical Fiction', 7);

INSERT INTO Books (BookID, Title, AuthorID, ISBN, PublishedYear, Genre, CopiesAvailable)
VALUES (206, 'Journey to the Edge', 142, '978-1250241577', 2022, 'Fantasy', 5);

INSERT INTO Books (BookID, Title, AuthorID, ISBN, PublishedYear, Genre, CopiesAvailable)
VALUES (207, 'Into the Dark Abyss', 53, '978-0399584525', 2021, 'Science Fiction', 8);

INSERT INTO Books (BookID, Title, AuthorID, ISBN, PublishedYear, Genre, CopiesAvailable)
VALUES (208, 'The Forgotten Realm', 67, '978-1501168703', 2020, 'Adventure', 6);

INSERT INTO Books (BookID, Title, AuthorID, ISBN, PublishedYear, Genre, CopiesAvailable)
VALUES (209, 'The Eternal Flame', 101, '978-1501164125', 2021, 'Fantasy', 7);

INSERT INTO Books (BookID, Title, AuthorID, ISBN, PublishedYear, Genre, CopiesAvailable)
VALUES (210, 'City of Broken Dreams', 34, '978-0399575311', 2022, 'Thriller', 8);

INSERT INTO Books (BookID, Title, AuthorID, ISBN, PublishedYear, Genre, CopiesAvailable)
VALUES (211, 'Whispers of the Ocean', 126, '978-0452296551', 2020, 'Mystery', 5);

INSERT INTO Books (BookID, Title, AuthorID, ISBN, PublishedYear, Genre, CopiesAvailable)
VALUES (212, 'The Return of the Gods', 52, '978-1250241560', 2021, 'Science Fiction', 6);

INSERT INTO Books (BookID, Title, AuthorID, ISBN, PublishedYear, Genre, CopiesAvailable)
VALUES (213, 'Tales of the Forgotten', 123, '978-0399575077', 2022, 'Fantasy', 7);

INSERT INTO Books (BookID, Title, AuthorID, ISBN, PublishedYear, Genre, CopiesAvailable)
VALUES (214, 'Revelations of the Dark', 78, '978-1501161221', 2020, 'Historical Fiction', 6);

INSERT INTO Books (BookID, Title, AuthorID, ISBN, PublishedYear, Genre, CopiesAvailable)
VALUES (215, 'Secrets of the Night', 92, '978-1501168398', 2021, 'Thriller', 5);

INSERT INTO Books (BookID, Title, AuthorID, ISBN, PublishedYear, Genre, CopiesAvailable)
VALUES (216, 'The Call of the Wild', 144, '978-0399583523', 2022, 'Adventure', 8);

INSERT INTO Books (BookID, Title, AuthorID, ISBN, PublishedYear, Genre, CopiesAvailable)
VALUES (217, 'The Winds of Destiny', 85, '978-1501155724', 2021, 'Fantasy', 7);

INSERT INTO Books (BookID, Title, AuthorID, ISBN, PublishedYear, Genre, CopiesAvailable)
VALUES (218, 'Echoes from the Abyss', 31, '978-0399574285', 2022, 'Mystery', 5);

INSERT INTO Books (BookID, Title, AuthorID, ISBN, PublishedYear, Genre, CopiesAvailable)
VALUES (219, 'Into the Unknown', 103, '978-0452296841', 2020, 'Science Fiction', 6);

INSERT INTO Books (BookID, Title, AuthorID, ISBN, PublishedYear, Genre, CopiesAvailable)
VALUES (220, 'The Hidden Path', 56, '978-1250264535', 2021, 'Adventure', 7);

INSERT INTO Books (BookID, Title, AuthorID, ISBN, PublishedYear, Genre, CopiesAvailable)
VALUES (221, 'A World Without End', 132, '978-0399575359', 2022, 'Fantasy', 8);

INSERT INTO Books (BookID, Title, AuthorID, ISBN, PublishedYear, Genre, CopiesAvailable)
VALUES (222, 'Through the Fire', 119, '978-1501167781', 2020, 'Historical Fiction', 6);

INSERT INTO Books (BookID, Title, AuthorID, ISBN, PublishedYear, Genre, CopiesAvailable)
VALUES (223, 'Chasing the Sun', 71, '978-0399575120', 2021, 'Thriller', 5);

INSERT INTO Books (BookID, Title, AuthorID, ISBN, PublishedYear, Genre, CopiesAvailable)
VALUES (224, 'The Edge of Tomorrow', 67, '978-1501156875', 2022, 'Science Fiction', 7);

INSERT INTO Books (BookID, Title, AuthorID, ISBN, PublishedYear, Genre, CopiesAvailable)
VALUES (225, 'Legends of the Lost', 18, '978-1250252952', 2020, 'Fantasy', 8);

INSERT INTO Books (BookID, Title, AuthorID, ISBN, PublishedYear, Genre, CopiesAvailable)
VALUES (226, 'Beyond the Horizon', 56, '978-0399574981', 2021, 'Adventure', 6);

INSERT INTO Books (BookID, Title, AuthorID, ISBN, PublishedYear, Genre, CopiesAvailable)
VALUES (227, 'The Secret Realm', 121, '978-0452297060', 2022, 'Historical Fiction', 5);

INSERT INTO Books (BookID, Title, AuthorID, ISBN, PublishedYear, Genre, CopiesAvailable)
VALUES (228, 'Waves of Change', 85, '978-1250241560', 2020, 'Thriller', 6);

INSERT INTO Books (BookID, Title, AuthorID, ISBN, PublishedYear, Genre, CopiesAvailable)
VALUES (229, 'Shadows of Eternity', 129, '978-0399575060', 2021, 'Fantasy', 8);

INSERT INTO Books (BookID, Title, AuthorID, ISBN, PublishedYear, Genre, CopiesAvailable)
VALUES (230, 'Journey Through Darkness', 33, '978-1501169150', 2022, 'Adventure', 7);


INSERT INTO Books (BookID, Title, AuthorID, ISBN, PublishedYear, Genre, CopiesAvailable)
VALUES (230, 'Journey Through Darkness', 33, '978-1501169150', 2022, 'Adventure', 7);

INSERT INTO Books (BookID, Title, AuthorID, ISBN, PublishedYear, Genre, CopiesAvailable)
VALUES (231, 'Whispers in the Storm', 45, '978-1250264818', 2020, 'Fantasy', 5);

INSERT INTO Books (BookID, Title, AuthorID, ISBN, PublishedYear, Genre, CopiesAvailable)
VALUES (232, 'The Darkened Sky', 12, '978-0399578239', 2021, 'Mystery', 8);

INSERT INTO Books (BookID, Title, AuthorID, ISBN, PublishedYear, Genre, CopiesAvailable)
VALUES (233, 'The Last Sunset', 99, '978-1501163141', 2022, 'Historical Fiction', 6);

INSERT INTO Books (BookID, Title, AuthorID, ISBN, PublishedYear, Genre, CopiesAvailable)
VALUES (234, 'Edge of the Ocean', 111, '978-0452296854', 2020, 'Adventure', 7);

INSERT INTO Books (BookID, Title, AuthorID, ISBN, PublishedYear, Genre, CopiesAvailable)
VALUES (235, 'Reflections of Time', 19, '978-1250263828', 2021, 'Science Fiction', 6);

INSERT INTO Books (BookID, Title, AuthorID, ISBN, PublishedYear, Genre, CopiesAvailable)
VALUES (236, 'Moonlit Secrets', 78, '978-1501167793', 2022, 'Fantasy', 5);

INSERT INTO Books (BookID, Title, AuthorID, ISBN, PublishedYear, Genre, CopiesAvailable)
VALUES (237, 'Beneath the Waves', 66, '978-0399577645', 2020, 'Mystery', 8);

INSERT INTO Books (BookID, Title, AuthorID, ISBN, PublishedYear, Genre, CopiesAvailable)
VALUES (238, 'Through the Shadows', 37, '978-1250245339', 2021, 'Thriller', 7);

INSERT INTO Books (BookID, Title, AuthorID, ISBN, PublishedYear, Genre, CopiesAvailable)
VALUES (239, 'The Eternal Journey', 54, '978-0399577461', 2022, 'Adventure', 6);

INSERT INTO Books (BookID, Title, AuthorID, ISBN, PublishedYear, Genre, CopiesAvailable)
VALUES (240, 'Hearts in the Dark', 81, '978-1501166314', 2020, 'Romance', 5);

INSERT INTO Books (BookID, Title, AuthorID, ISBN, PublishedYear, Genre, CopiesAvailable)
VALUES (241, 'Storms of Fate', 22, '978-0399574408', 2021, 'Historical Fiction', 7);

INSERT INTO Books (BookID, Title, AuthorID, ISBN, PublishedYear, Genre, CopiesAvailable)
VALUES (242, 'Tides of Destiny', 67, '978-1501166512', 2022, 'Thriller', 6);

INSERT INTO Books (BookID, Title, AuthorID, ISBN, PublishedYear, Genre, CopiesAvailable)
VALUES (243, 'Whispers of the Earth', 13, '978-0452296719', 2020, 'Science Fiction', 7);

INSERT INTO Books (BookID, Title, AuthorID, ISBN, PublishedYear, Genre, CopiesAvailable)
VALUES (244, 'Veil of the Moon', 28, '978-0399576580', 2021, 'Fantasy', 5);

INSERT INTO Books (BookID, Title, AuthorID, ISBN, PublishedYear, Genre, CopiesAvailable)
VALUES (245, 'Shadows of the Mind', 100, '978-1250243847', 2022, 'Mystery', 8);

INSERT INTO Books (BookID, Title, AuthorID, ISBN, PublishedYear, Genre, CopiesAvailable)
VALUES (246, 'Embers of Hope', 69, '978-1501167830', 2020, 'Adventure', 6);

INSERT INTO Books (BookID, Title, AuthorID, ISBN, PublishedYear, Genre, CopiesAvailable)
VALUES (247, 'Rays of the Dawn', 116, '978-0399574433', 2021, 'Historical Fiction', 5);

INSERT INTO Books (BookID, Title, AuthorID, ISBN, PublishedYear, Genre, CopiesAvailable)
VALUES (248, 'Mysteries of the Sea', 82, '978-1250258947', 2022, 'Thriller', 7);

INSERT INTO Books (BookID, Title, AuthorID, ISBN, PublishedYear, Genre, CopiesAvailable)
VALUES (249, 'Echoes of the Past', 95, '978-0452296825', 2020, 'Science Fiction', 6);

INSERT INTO Books (BookID, Title, AuthorID, ISBN, PublishedYear, Genre, CopiesAvailable)
VALUES (250, 'Dancing with Shadows', 131, '978-1501168227', 2021, 'Fantasy', 8);

INSERT INTO Books (BookID, Title, AuthorID, ISBN, PublishedYear, Genre, CopiesAvailable)
VALUES (251, 'Fires of the Future', 23, '978-0399577478', 2022, 'Mystery', 5);

INSERT INTO Books (BookID, Title, AuthorID, ISBN, PublishedYear, Genre, CopiesAvailable)
VALUES (252, 'Winds of the Old World', 49, '978-1501166735', 2020, 'Historical Fiction', 7);

INSERT INTO Books (BookID, Title, AuthorID, ISBN, PublishedYear, Genre, CopiesAvailable)
VALUES (253, 'The Forgotten City', 72, '978-1250263538', 2021, 'Thriller', 8);

INSERT INTO Books (BookID, Title, AuthorID, ISBN, PublishedYear, Genre, CopiesAvailable)
VALUES (254, 'Veil of Secrets', 44, '978-0399577465', 2022, 'Science Fiction', 6);

INSERT INTO Books (BookID, Title, AuthorID, ISBN, PublishedYear, Genre, CopiesAvailable)
VALUES (255, 'The Lost Horizon', 134, '978-0452297082', 2020, 'Fantasy', 5);

INSERT INTO Books (BookID, Title, AuthorID, ISBN, PublishedYear, Genre, CopiesAvailable)
VALUES (256, 'Echoes of Eternity', 66, '978-0399577984', 2021, 'Adventure', 7);

INSERT INTO Books (BookID, Title, AuthorID, ISBN, PublishedYear, Genre, CopiesAvailable)
VALUES (257, 'The Heart of the Beast', 108, '978-1501169934', 2022, 'Historical Fiction', 8);

INSERT INTO Books (BookID, Title, AuthorID, ISBN, PublishedYear, Genre, CopiesAvailable)
VALUES (258, 'Whispers in the Forest', 32, '978-0399576720', 2023, 'Fantasy', 6);

INSERT INTO Books (BookID, Title, AuthorID, ISBN, PublishedYear, Genre, CopiesAvailable)
VALUES (259, 'The Broken Kingdom', 45, '978-1501168524', 2020, 'Adventure', 8);

INSERT INTO Books (BookID, Title, AuthorID, ISBN, PublishedYear, Genre, CopiesAvailable)
VALUES (260, 'Shadows of the Past', 93, '978-1250263831', 2021, 'Historical Fiction', 7);

INSERT INTO Books (BookID, Title, AuthorID, ISBN, PublishedYear, Genre, CopiesAvailable)
VALUES (261, 'The Storm's Call', 21, '978-0399578205', 2022, 'Thriller', 6);

INSERT INTO Books (BookID, Title, AuthorID, ISBN, PublishedYear, Genre, CopiesAvailable)
VALUES (262, 'The Hidden Truth', 59, '978-1501169019', 2020, 'Mystery', 5);

INSERT INTO Books (BookID, Title, AuthorID, ISBN, PublishedYear, Genre, CopiesAvailable)
VALUES (263, 'Tales of the Desert', 118, '978-1250263923', 2021, 'Adventure', 7);

INSERT INTO Books (BookID, Title, AuthorID, ISBN, PublishedYear, Genre, CopiesAvailable)
VALUES (264, 'Echoes of Silence', 110, '978-0399577406', 2022, 'Fantasy', 8);

INSERT INTO Books (BookID, Title, AuthorID, ISBN, PublishedYear, Genre, CopiesAvailable)
VALUES (265, 'Whispers of Tomorrow', 72, '978-1501167845', 2020, 'Science Fiction', 6);

INSERT INTO Books (BookID, Title, AuthorID, ISBN, PublishedYear, Genre, CopiesAvailable)
VALUES (266, 'The Moonlit Road', 53, '978-1250245861', 2021, 'Historical Fiction', 7);

INSERT INTO Books (BookID, Title, AuthorID, ISBN, PublishedYear, Genre, CopiesAvailable)
VALUES (267, 'Beneath the Ice', 137, '978-0399577901', 2022, 'Adventure', 5);

INSERT INTO Books (BookID, Title, AuthorID, ISBN, PublishedYear, Genre, CopiesAvailable)
VALUES (268, 'Frost in the Air', 84, '978-1501169726', 2020, 'Thriller', 6);

INSERT INTO Books (BookID, Title, AuthorID, ISBN, PublishedYear, Genre, CopiesAvailable)
VALUES (269, 'The Secrets We Keep', 22, '978-0399578599', 2021, 'Mystery', 8);

INSERT INTO Books (BookID, Title, AuthorID, ISBN, PublishedYear, Genre, CopiesAvailable)
VALUES (270, 'Rays of Destiny', 38, '978-1250264913', 2022, 'Science Fiction', 7);

INSERT INTO Books (BookID, Title, AuthorID, ISBN, PublishedYear, Genre, CopiesAvailable)
VALUES (271, 'Journey to the Edge', 40, '978-0399576310', 2020, 'Fantasy', 6);

INSERT INTO Books (BookID, Title, AuthorID, ISBN, PublishedYear, Genre, CopiesAvailable)
VALUES (272, 'The Forgotten World', 85, '978-1501167937', 2021, 'Adventure', 7);

INSERT INTO Books (BookID, Title, AuthorID, ISBN, PublishedYear, Genre, CopiesAvailable)
VALUES (273, 'The Lost Light', 130, '978-1250259432', 2022, 'Historical Fiction', 5);

INSERT INTO Books (BookID, Title, AuthorID, ISBN, PublishedYear, Genre, CopiesAvailable)
VALUES (274, 'Waves of Change', 99, '978-0399577157', 2020, 'Mystery', 8);

INSERT INTO Books (BookID, Title, AuthorID, ISBN, PublishedYear, Genre, CopiesAvailable)
VALUES (275, 'Rise of the Phoenix', 63, '978-1501167401', 2021, 'Thriller', 6);

INSERT INTO Books (BookID, Title, AuthorID, ISBN, PublishedYear, Genre, CopiesAvailable)
VALUES (276, 'Whispers of the Dark', 125, '978-1250264784', 2022, 'Science Fiction', 7);

INSERT INTO Books (BookID, Title, AuthorID, ISBN, PublishedYear, Genre, CopiesAvailable)
VALUES (277, 'Tides of Time', 56, '978-0399577522', 2020, 'Adventure', 5);

INSERT INTO Books (BookID, Title, AuthorID, ISBN, PublishedYear, Genre, CopiesAvailable)
VALUES (278, 'Echoes in the Wind', 43, '978-1501169337', 2021, 'Fantasy', 7);

INSERT INTO Books (BookID, Title, AuthorID, ISBN, PublishedYear, Genre, CopiesAvailable)
VALUES (279, 'A Journey Unknown', 70, '978-1250264883', 2022, 'Historical Fiction', 6);

INSERT INTO Books (BookID, Title, AuthorID, ISBN, PublishedYear, Genre, CopiesAvailable)
VALUES (280, 'The Secret Garden', 132, '978-0399577041', 2020, 'Thriller', 8);

INSERT INTO Books (BookID, Title, AuthorID, ISBN, PublishedYear, Genre, CopiesAvailable)
VALUES (281, 'Songs of the Sea', 121, '978-1501167838', 2021, 'Mystery', 5);

INSERT INTO Books (BookID, Title, AuthorID, ISBN, PublishedYear, Genre, CopiesAvailable)
VALUES (282, 'Shattered Dreams', 68, '978-0399577380', 2022, 'Adventure', 6);

INSERT INTO Books (BookID, Title, AuthorID, ISBN, PublishedYear, Genre, CopiesAvailable)
VALUES (283, 'The Desert Path', 76, '978-1250264821', 2020, 'Fantasy', 7);

INSERT INTO Books (BookID, Title, AuthorID, ISBN, PublishedYear, Genre, CopiesAvailable)
VALUES (284, 'Secrets of the Forgotten', 109, '978-1501169740', 2021, 'Science Fiction', 5);

INSERT INTO Books (BookID, Title, AuthorID, ISBN, PublishedYear, Genre, CopiesAvailable)
VALUES (285, 'The Light Beyond', 24, '978-0399578135', 2022, 'Historical Fiction', 6);


INSERT INTO Books (BookID, Title, AuthorID, ISBN, PublishedYear, Genre, CopiesAvailable)
VALUES (258, 'Whispers in the Forest', 32, '978-0399576720', 2023, 'Fantasy', 6);

INSERT INTO Books (BookID, Title, AuthorID, ISBN, PublishedYear, Genre, CopiesAvailable)
VALUES (259, 'The Broken Kingdom', 45, '978-1501168524', 2020, 'Adventure', 8);

INSERT INTO Books (BookID, Title, AuthorID, ISBN, PublishedYear, Genre, CopiesAvailable)
VALUES (260, 'Shadows of the Past', 93, '978-1250263831', 2021, 'Historical Fiction', 7);

INSERT INTO Books (BookID, Title, AuthorID, ISBN, PublishedYear, Genre, CopiesAvailable)
VALUES (261, 'The Storm`s Call', 21, '978-0399578205', 2022, 'Thriller', 6);

INSERT INTO Books (BookID, Title, AuthorID, ISBN, PublishedYear, Genre, CopiesAvailable)
VALUES (262, 'The Hidden Truth', 59, '978-1501169019', 2020, 'Mystery', 5);

INSERT INTO Books (BookID, Title, AuthorID, ISBN, PublishedYear, Genre, CopiesAvailable)
VALUES (263, 'Tales of the Desert', 118, '978-1250263923', 2021, 'Adventure', 7);

INSERT INTO Books (BookID, Title, AuthorID, ISBN, PublishedYear, Genre, CopiesAvailable)
VALUES (264, 'Echoes of Silence', 110, '978-0399577406', 2022, 'Fantasy', 8);

INSERT INTO Books (BookID, Title, AuthorID, ISBN, PublishedYear, Genre, CopiesAvailable)
VALUES (265, 'Whispers of Tomorrow', 72, '978-1501167845', 2020, 'Science Fiction', 6);

INSERT INTO Books (BookID, Title, AuthorID, ISBN, PublishedYear, Genre, CopiesAvailable)
VALUES (266, 'The Moonlit Road', 53, '978-1250245861', 2021, 'Historical Fiction', 7);

INSERT INTO Books (BookID, Title, AuthorID, ISBN, PublishedYear, Genre, CopiesAvailable)
VALUES (267, 'Beneath the Ice', 137, '978-0399577901', 2022, 'Adventure', 5);

INSERT INTO Books (BookID, Title, AuthorID, ISBN, PublishedYear, Genre, CopiesAvailable)
VALUES (268, 'Frost in the Air', 84, '978-1501169726', 2020, 'Thriller', 6);

INSERT INTO Books (BookID, Title, AuthorID, ISBN, PublishedYear, Genre, CopiesAvailable)
VALUES (269, 'The Secrets We Keep', 22, '978-0399578599', 2021, 'Mystery', 8);

INSERT INTO Books (BookID, Title, AuthorID, ISBN, PublishedYear, Genre, CopiesAvailable)
VALUES (270, 'Rays of Destiny', 38, '978-1250264913', 2022, 'Science Fiction', 7);

INSERT INTO Books (BookID, Title, AuthorID, ISBN, PublishedYear, Genre, CopiesAvailable)
VALUES (271, 'Journey to the Edge', 40, '978-0399576310', 2020, 'Fantasy', 6);

INSERT INTO Books (BookID, Title, AuthorID, ISBN, PublishedYear, Genre, CopiesAvailable)
VALUES (272, 'The Forgotten World', 85, '978-1501167937', 2021, 'Adventure', 7);

INSERT INTO Books (BookID, Title, AuthorID, ISBN, PublishedYear, Genre, CopiesAvailable)
VALUES (273, 'The Lost Light', 130, '978-1250259432', 2022, 'Historical Fiction', 5);

INSERT INTO Books (BookID, Title, AuthorID, ISBN, PublishedYear, Genre, CopiesAvailable)
VALUES (274, 'Waves of Change', 99, '978-0399577157', 2020, 'Mystery', 8);

INSERT INTO Books (BookID, Title, AuthorID, ISBN, PublishedYear, Genre, CopiesAvailable)
VALUES (275, 'Rise of the Phoenix', 63, '978-1501167401', 2021, 'Thriller', 6);

INSERT INTO Books (BookID, Title, AuthorID, ISBN, PublishedYear, Genre, CopiesAvailable)
VALUES (276, 'Whispers of the Dark', 125, '978-1250264784', 2022, 'Science Fiction', 7);

INSERT INTO Books (BookID, Title, AuthorID, ISBN, PublishedYear, Genre, CopiesAvailable)
VALUES (277, 'Tides of Time', 56, '978-0399577522', 2020, 'Adventure', 5);

INSERT INTO Books (BookID, Title, AuthorID, ISBN, PublishedYear, Genre, CopiesAvailable)
VALUES (278, 'Echoes in the Wind', 43, '978-1501169337', 2021, 'Fantasy', 7);

INSERT INTO Books (BookID, Title, AuthorID, ISBN, PublishedYear, Genre, CopiesAvailable)
VALUES (279, 'A Journey Unknown', 70, '978-1250264883', 2022, 'Historical Fiction', 6);

INSERT INTO Books (BookID, Title, AuthorID, ISBN, PublishedYear, Genre, CopiesAvailable)
VALUES (280, 'The Secret Garden', 132, '978-0399577041', 2020, 'Thriller', 8);

INSERT INTO Books (BookID, Title, AuthorID, ISBN, PublishedYear, Genre, CopiesAvailable)
VALUES (281, 'Songs of the Sea', 121, '978-1501167838', 2021, 'Mystery', 5);

INSERT INTO Books (BookID, Title, AuthorID, ISBN, PublishedYear, Genre, CopiesAvailable)
VALUES (282, 'Shattered Dreams', 68, '978-0399577380', 2022, 'Adventure', 6);

INSERT INTO Books (BookID, Title, AuthorID, ISBN, PublishedYear, Genre, CopiesAvailable)
VALUES (283, 'The Desert Path', 76, '978-1250264821', 2020, 'Fantasy', 7);

INSERT INTO Books (BookID, Title, AuthorID, ISBN, PublishedYear, Genre, CopiesAvailable)
VALUES (284, 'Secrets of the Forgotten', 109, '978-1501169740', 2021, 'Science Fiction', 5);

INSERT INTO Books (BookID, Title, AuthorID, ISBN, PublishedYear, Genre, CopiesAvailable)
VALUES (285, 'The Light Beyond', 24, '978-0399578135', 2022, 'Historical Fiction', 6);



INSERT INTO Books (BookID, Title, AuthorID, ISBN, PublishedYear, Genre, CopiesAvailable)
VALUES (286, 'The Edge of Tomorrow', 35, '978-0399577523', 2023, 'Adventure', 8);

INSERT INTO Books (BookID, Title, AuthorID, ISBN, PublishedYear, Genre, CopiesAvailable)
VALUES (287, 'Beneath the Stars', 48, '978-1501169500', 2022, 'Mystery', 7);

INSERT INTO Books (BookID, Title, AuthorID, ISBN, PublishedYear, Genre, CopiesAvailable)
VALUES (288, 'The Unseen Path', 58, '978-1250265082', 2021, 'Fantasy', 6);

INSERT INTO Books (BookID, Title, AuthorID, ISBN, PublishedYear, Genre, CopiesAvailable)
VALUES (289, 'Whispers in the Rain', 99, '978-0399578180', 2020, 'Historical Fiction', 5);

INSERT INTO Books (BookID, Title, AuthorID, ISBN, PublishedYear, Genre, CopiesAvailable)
VALUES (290, 'The Dreamweaver', 65, '978-1501169524', 2022, 'Science Fiction', 6);

INSERT INTO Books (BookID, Title, AuthorID, ISBN, PublishedYear, Genre, CopiesAvailable)
VALUES (291, 'The Golden Key', 29, '978-1250265174', 2021, 'Adventure', 7);

INSERT INTO Books (BookID, Title, AuthorID, ISBN, PublishedYear, Genre, CopiesAvailable)
VALUES (292, 'Shadows of the Deep', 111, '978-0399578293', 2020, 'Thriller', 8);

INSERT INTO Books (BookID, Title, AuthorID, ISBN, PublishedYear, Genre, CopiesAvailable)
VALUES (293, 'Glimpse of Eternity', 51, '978-1501169609', 2021, 'Fantasy', 7);

INSERT INTO Books (BookID, Title, AuthorID, ISBN, PublishedYear, Genre, CopiesAvailable)
VALUES (294, 'Rise of the Titans', 39, '978-1250265143', 2022, 'Science Fiction', 6);

INSERT INTO Books (BookID, Title, AuthorID, ISBN, PublishedYear, Genre, CopiesAvailable)
VALUES (295, 'The Silver Moon', 83, '978-0399577921', 2021, 'Historical Fiction', 8);

INSERT INTO Books (BookID, Title, AuthorID, ISBN, PublishedYear, Genre, CopiesAvailable)
VALUES (296, 'Into the Void', 92, '978-1501169685', 2020, 'Mystery', 7);

INSERT INTO Books (BookID, Title, AuthorID, ISBN, PublishedYear, Genre, CopiesAvailable)
VALUES (297, 'The Red Horizon', 64, '978-1250265135', 2023, 'Adventure', 8);

INSERT INTO Books (BookID, Title, AuthorID, ISBN, PublishedYear, Genre, CopiesAvailable)
VALUES (298, 'The Final Reckoning', 123, '978-0399578140', 2022, 'Thriller', 6);

INSERT INTO Books (BookID, Title, AuthorID, ISBN, PublishedYear, Genre, CopiesAvailable)
VALUES (299, 'Echoes of the Future', 47, '978-1501169814', 2021, 'Science Fiction', 5);

INSERT INTO Books (BookID, Title, AuthorID, ISBN, PublishedYear, Genre, CopiesAvailable)
VALUES (300, 'Waves of Hope', 78, '978-1250265164', 2023, 'Fantasy', 7);

INSERT INTO Books (BookID, Title, AuthorID, ISBN, PublishedYear, Genre, CopiesAvailable)
VALUES (301, 'The Silent Voice', 50, '978-0399578001', 2021, 'Historical Fiction', 8);

INSERT INTO Books (BookID, Title, AuthorID, ISBN, PublishedYear, Genre, CopiesAvailable)
VALUES (302, 'A Shattered World', 110, '978-1501169735', 2020, 'Adventure', 6);

INSERT INTO Books (BookID, Title, AuthorID, ISBN, PublishedYear, Genre, CopiesAvailable)
VALUES (303, 'The Forgotten Song', 98, '978-1250265080', 2022, 'Mystery', 5);

INSERT INTO Books (BookID, Title, AuthorID, ISBN, PublishedYear, Genre, CopiesAvailable)
VALUES (304, 'Journey Through Time', 131, '978-0399577902', 2020, 'Thriller', 7);

INSERT INTO Books (BookID, Title, AuthorID, ISBN, PublishedYear, Genre, CopiesAvailable)
VALUES (305, 'Winds of Destiny', 74, '978-1501169540', 2021, 'Fantasy', 6);

INSERT INTO Books (BookID, Title, AuthorID, ISBN, PublishedYear, Genre, CopiesAvailable)
VALUES (306, 'The Heart of the Storm', 116, '978-1250265073', 2022, 'Science Fiction', 5);

INSERT INTO Books (BookID, Title, AuthorID, ISBN, PublishedYear, Genre, CopiesAvailable)
VALUES (307, 'The Phoenix Legacy', 70, '978-0399577430', 2023, 'Historical Fiction', 7);

INSERT INTO Books (BookID, Title, AuthorID, ISBN, PublishedYear, Genre, CopiesAvailable)
VALUES (308, 'The Seventh Star', 134, '978-1501169762', 2021, 'Adventure', 8);

INSERT INTO Books (BookID, Title, AuthorID, ISBN, PublishedYear, Genre, CopiesAvailable)
VALUES (309, 'The Golden Era', 82, '978-1250265203', 2022, 'Mystery', 6);

INSERT INTO Books (BookID, Title, AuthorID, ISBN, PublishedYear, Genre, CopiesAvailable)
VALUES (310, 'Echoes of War', 105, '978-0399578308', 2021, 'Thriller', 7);

INSERT INTO Books (BookID, Title, AuthorID, ISBN, PublishedYear, Genre, CopiesAvailable)
VALUES (311, 'Guardians of the Void', 66, '978-1501169556', 2020, 'Fantasy', 5);

INSERT INTO Books (BookID, Title, AuthorID, ISBN, PublishedYear, Genre, CopiesAvailable)
VALUES (312, 'The Light Beyond the Horizon', 123, '978-1250265210', 2021, 'Adventure', 7);

INSERT INTO Books (BookID, Title, AuthorID, ISBN, PublishedYear, Genre, CopiesAvailable)
VALUES (313, 'The Final Battle', 129, '978-0399578199', 2022, 'Historical Fiction', 6);

INSERT INTO Books (BookID, Title, AuthorID, ISBN, PublishedYear, Genre, CopiesAvailable)
VALUES (314, 'Wings of Change', 81, '978-1501169392', 2020, 'Mystery', 7);



INSERT INTO Books (BookID, Title, AuthorID, ISBN, PublishedYear, Genre, CopiesAvailable)
VALUES (315, 'Rivers of Time', 24, '978-0399578236', 2023, 'Adventure', 6);

INSERT INTO Books (BookID, Title, AuthorID, ISBN, PublishedYear, Genre, CopiesAvailable)
VALUES (316, 'The Iron Fortress', 57, '978-1501169533', 2022, 'Historical Fiction', 7);

INSERT INTO Books (BookID, Title, AuthorID, ISBN, PublishedYear, Genre, CopiesAvailable)
VALUES (317, 'Chasing Shadows', 91, '978-1250265227', 2021, 'Mystery', 5);

INSERT INTO Books (BookID, Title, AuthorID, ISBN, PublishedYear, Genre, CopiesAvailable)
VALUES (318, 'Path of the Ancients', 76, '978-0399578221', 2020, 'Fantasy', 8);

INSERT INTO Books (BookID, Title, AuthorID, ISBN, PublishedYear, Genre, CopiesAvailable)
VALUES (319, 'Frost Over the Horizon', 38, '978-1501169817', 2021, 'Science Fiction', 6);

INSERT INTO Books (BookID, Title, AuthorID, ISBN, PublishedYear, Genre, CopiesAvailable)
VALUES (320, 'The City of Glass', 63, '978-1250265111', 2022, 'Thriller', 7);

INSERT INTO Books (BookID, Title, AuthorID, ISBN, PublishedYear, Genre, CopiesAvailable)
VALUES (321, 'Winds of Winter', 125, '978-0399578350', 2021, 'Adventure', 5);

INSERT INTO Books (BookID, Title, AuthorID, ISBN, PublishedYear, Genre, CopiesAvailable)
VALUES (322, 'Stormrider', 49, '978-1501169831', 2023, 'Fantasy', 8);

INSERT INTO Books (BookID, Title, AuthorID, ISBN, PublishedYear, Genre, CopiesAvailable)
VALUES (323, 'Whispers on the Wind', 102, '978-1250265098', 2020, 'Historical Fiction', 6);

INSERT INTO Books (BookID, Title, AuthorID, ISBN, PublishedYear, Genre, CopiesAvailable)
VALUES (324, 'The Wolf\`s Tale', 55, '978-0399578400', 2021, 'Mystery', 7);

INSERT INTO Books (BookID, Title, AuthorID, ISBN, PublishedYear, Genre, CopiesAvailable)
VALUES (325, 'Beneath the Silence', 98, '978-1501169517', 2022, 'Thriller', 5);

INSERT INTO Books (BookID, Title, AuthorID, ISBN, PublishedYear, Genre, CopiesAvailable)
VALUES (326, 'The Final Ember', 114, '978-0399578180', 2021, 'Adventure', 7);

INSERT INTO Books (BookID, Title, AuthorID, ISBN, PublishedYear, Genre, CopiesAvailable)
VALUES (327, 'The Last Prophecy', 112, '978-1250265043', 2020, 'Fantasy', 6);

INSERT INTO Books (BookID, Title, AuthorID, ISBN, PublishedYear, Genre, CopiesAvailable)
VALUES (328, 'Rise of the Fallen', 86, '978-1501169808', 2023, 'Historical Fiction', 8);

INSERT INTO Books (BookID, Title, AuthorID, ISBN, PublishedYear, Genre, CopiesAvailable)
VALUES (329, 'The Eternal Light', 47, '978-1250265180', 2022, 'Mystery', 5);

INSERT INTO Books (BookID, Title, AuthorID, ISBN, PublishedYear, Genre, CopiesAvailable)
VALUES (330, 'The Shadow\`s Edge', 53, '978-0399578135', 2021, 'Thriller', 7);

INSERT INTO Books (BookID, Title, AuthorID, ISBN, PublishedYear, Genre, CopiesAvailable)
VALUES (331, 'Veil of Mist', 72, '978-1501169754', 2020, 'Adventure', 8);

INSERT INTO Books (BookID, Title, AuthorID, ISBN, PublishedYear, Genre, CopiesAvailable)
VALUES (332, 'Song of the Earth', 81, '978-1250265258', 2022, 'Science Fiction', 6);

INSERT INTO Books (BookID, Title, AuthorID, ISBN, PublishedYear, Genre, CopiesAvailable)
VALUES (333, 'Land of the Forgotten', 93, '978-0399578262', 2023, 'Fantasy', 7);

INSERT INTO Books (BookID, Title, AuthorID, ISBN, PublishedYear, Genre, CopiesAvailable)
VALUES (334, 'The Hidden Key', 122, '978-1501169537', 2021, 'Historical Fiction', 6);

INSERT INTO Books (BookID, Title, AuthorID, ISBN, PublishedYear, Genre, CopiesAvailable)
VALUES (335, 'The Dragon\`s Song', 65, '978-1250265234', 2022, 'Mystery', 5);

INSERT INTO Books (BookID, Title, AuthorID, ISBN, PublishedYear, Genre, CopiesAvailable)
VALUES (336, 'Through the Fire', 111, '978-0399578010', 2020, 'Thriller', 8);

INSERT INTO Books (BookID, Title, AuthorID, ISBN, PublishedYear, Genre, CopiesAvailable)
VALUES (337, 'The Rise of Shadows', 106, '978-1501169674', 2021, 'Fantasy', 6);

INSERT INTO Books (BookID, Title, AuthorID, ISBN, PublishedYear, Genre, CopiesAvailable)
VALUES (338, 'Tides of the Past', 121, '978-1250265140', 2023, 'Adventure', 7);

INSERT INTO Books (BookID, Title, AuthorID, ISBN, PublishedYear, Genre, CopiesAvailable)
VALUES (339, 'The Edge of Darkness', 74, '978-0399578124', 2020, 'Historical Fiction', 6);

INSERT INTO Books (BookID, Title, AuthorID, ISBN, PublishedYear, Genre, CopiesAvailable)
VALUES (340, 'Betrayal in the Night', 67, '978-1501169573', 2022, 'Science Fiction', 5);



INSERT INTO Books (BookID, Title, AuthorID, ISBN, PublishedYear, Genre, CopiesAvailable)
VALUES (341, 'The Guardian\`s Quest', 12, '978-0399578145', 2021, 'Fantasy', 6);

INSERT INTO Books (BookID, Title, AuthorID, ISBN, PublishedYear, Genre, CopiesAvailable)
VALUES (342, 'Winds of Destiny', 45, '978-1501169544', 2022, 'Historical Fiction', 7);

INSERT INTO Books (BookID, Title, AuthorID, ISBN, PublishedYear, Genre, CopiesAvailable)
VALUES (343, 'Echoes of the Past', 99, '978-1250265279', 2023, 'Adventure', 5);

INSERT INTO Books (BookID, Title, AuthorID, ISBN, PublishedYear, Genre, CopiesAvailable)
VALUES (344, 'Whispers of Eternity', 23, '978-0399578357', 2020, 'Mystery', 6);

INSERT INTO Books (BookID, Title, AuthorID, ISBN, PublishedYear, Genre, CopiesAvailable)
VALUES (345, 'Fallen Stars', 56, '978-1501169494', 2021, 'Thriller', 7);

INSERT INTO Books (BookID, Title, AuthorID, ISBN, PublishedYear, Genre, CopiesAvailable)
VALUES (346, 'Lands of the Lost', 78, '978-1250265234', 2022, 'Fantasy', 8);

INSERT INTO Books (BookID, Title, AuthorID, ISBN, PublishedYear, Genre, CopiesAvailable)
VALUES (347, 'Storm of Fire', 101, '978-0399578198', 2023, 'Historical Fiction', 5);

INSERT INTO Books (BookID, Title, AuthorID, ISBN, PublishedYear, Genre, CopiesAvailable)
VALUES (348, 'The Iron Crown', 61, '978-1501169670', 2020, 'Science Fiction', 6);

INSERT INTO Books (BookID, Title, AuthorID, ISBN, PublishedYear, Genre, CopiesAvailable)
VALUES (349, 'The Silent Night', 34, '978-1250265050', 2021, 'Mystery', 7);

INSERT INTO Books (BookID, Title, AuthorID, ISBN, PublishedYear, Genre, CopiesAvailable)
VALUES (350, 'The Last Remnant', 88, '978-0399578365', 2023, 'Adventure', 8);

INSERT INTO Books (BookID, Title, AuthorID, ISBN, PublishedYear, Genre, CopiesAvailable)
VALUES (351, 'Fury of the Storm', 79, '978-1501169632', 2022, 'Thriller', 6);

INSERT INTO Books (BookID, Title, AuthorID, ISBN, PublishedYear, Genre, CopiesAvailable)
VALUES (352, 'Across the Sea', 109, '978-1250265092', 2021, 'Fantasy', 7);

INSERT INTO Books (BookID, Title, AuthorID, ISBN, PublishedYear, Genre, CopiesAvailable)
VALUES (353, 'Beyond the Horizon', 114, '978-0399578327', 2020, 'Historical Fiction', 5);

INSERT INTO Books (BookID, Title, AuthorID, ISBN, PublishedYear, Genre, CopiesAvailable)
VALUES (354, 'The Keeper of Souls', 68, '978-1501169754', 2023, 'Science Fiction', 6);

INSERT INTO Books (BookID, Title, AuthorID, ISBN, PublishedYear, Genre, CopiesAvailable)
VALUES (355, 'Shadows in the Mist', 53, '978-1250265286', 2022, 'Mystery', 8);

INSERT INTO Books (BookID, Title, AuthorID, ISBN, PublishedYear, Genre, CopiesAvailable)
VALUES (356, 'The Distant Star', 121, '978-0399578038', 2021, 'Adventure', 5);

INSERT INTO Books (BookID, Title, AuthorID, ISBN, PublishedYear, Genre, CopiesAvailable)
VALUES (357, 'Journey to the Deep', 69, '978-1501169560', 2022, 'Fantasy', 7);

INSERT INTO Books (BookID, Title, AuthorID, ISBN, PublishedYear, Genre, CopiesAvailable)
VALUES (358, 'The World Beyond', 93, '978-1250265316', 2023, 'Historical Fiction', 8);

INSERT INTO Books (BookID, Title, AuthorID, ISBN, PublishedYear, Genre, CopiesAvailable)
VALUES (359, 'The Silver Abyss', 15, '978-0399578254', 2020, 'Mystery', 6);

INSERT INTO Books (BookID, Title, AuthorID, ISBN, PublishedYear, Genre, CopiesAvailable)
VALUES (360, 'The Eternal Flame', 46, '978-1501169521', 2021, 'Thriller', 5);

INSERT INTO Books (BookID, Title, AuthorID, ISBN, PublishedYear, Genre, CopiesAvailable)
VALUES (361, 'Kingdoms Fall', 127, '978-1250265132', 2022, 'Adventure', 7);

INSERT INTO Books (BookID, Title, AuthorID, ISBN, PublishedYear, Genre, CopiesAvailable)
VALUES (362, 'The Celestial Sea', 94, '978-0399578033', 2023, 'Fantasy', 6);

INSERT INTO Books (BookID, Title, AuthorID, ISBN, PublishedYear, Genre, CopiesAvailable)
VALUES (363, 'Rise of the Phoenix', 82, '978-1501169711', 2020, 'Historical Fiction', 7);

INSERT INTO Books (BookID, Title, AuthorID, ISBN, PublishedYear, Genre, CopiesAvailable)
VALUES (364, 'Beneath the Surface', 35, '978-1250265068', 2022, 'Mystery', 8);

INSERT INTO Books (BookID, Title, AuthorID, ISBN, PublishedYear, Genre, CopiesAvailable)
VALUES (365, 'The Heart of Fire', 22, '978-0399578127', 2021, 'Thriller', 5);

INSERT INTO Books (BookID, Title, AuthorID, ISBN, PublishedYear, Genre, CopiesAvailable)
VALUES (366, 'The Stormbringer', 87, '978-1501169631', 2022, 'Fantasy', 6);

INSERT INTO Books (BookID, Title, AuthorID, ISBN, PublishedYear, Genre, CopiesAvailable)
VALUES (367, 'The Emperor\`s Crown', 55, '978-1250265123', 2020, 'Historical Fiction', 7);

INSERT INTO Books (BookID, Title, AuthorID, ISBN, PublishedYear, Genre, CopiesAvailable)
VALUES (368, 'Waking the Dream', 110, '978-0399578025', 2021, 'Adventure', 5);

INSERT INTO Books (BookID, Title, AuthorID, ISBN, PublishedYear, Genre, CopiesAvailable)
VALUES (369, 'Echoes of Tomorrow', 77, '978-1501169770', 2022, 'Thriller', 8);


INSERT INTO Books (BookID, Title, AuthorID, ISBN, PublishedYear, Genre, CopiesAvailable)
VALUES (370, 'Winds of Fate', 34, '978-1501169610', 2023, 'Historical Fiction', 7);

INSERT INTO Books (BookID, Title, AuthorID, ISBN, PublishedYear, Genre, CopiesAvailable)
VALUES (371, 'Beneath the Stars', 102, '978-0399578182', 2021, 'Fantasy', 5);

INSERT INTO Books (BookID, Title, AuthorID, ISBN, PublishedYear, Genre, CopiesAvailable)
VALUES (372, 'The Silent Tide', 48, '978-1250265079', 2022, 'Mystery', 6);

INSERT INTO Books (BookID, Title, AuthorID, ISBN, PublishedYear, Genre, CopiesAvailable)
VALUES (373, 'The Crimson Horizon', 63, '978-1501169863', 2020, 'Thriller', 7);

INSERT INTO Books (BookID, Title, AuthorID, ISBN, PublishedYear, Genre, CopiesAvailable)
VALUES (374, 'Light of the Fallen', 109, '978-1250265307', 2021, 'Adventure', 5);

INSERT INTO Books (BookID, Title, AuthorID, ISBN, PublishedYear, Genre, CopiesAvailable)
VALUES (375, 'Winds of Change', 24, '978-0399578242', 2022, 'Fantasy', 8);

INSERT INTO Books (BookID, Title, AuthorID, ISBN, PublishedYear, Genre, CopiesAvailable)
VALUES (376, 'The Shadow of Night', 11, '978-1501169580', 2023, 'Historical Fiction', 6);

INSERT INTO Books (BookID, Title, AuthorID, ISBN, PublishedYear, Genre, CopiesAvailable)
VALUES (377, 'Dawn of Destiny', 72, '978-1250265116', 2020, 'Thriller', 7);

INSERT INTO Books (BookID, Title, AuthorID, ISBN, PublishedYear, Genre, CopiesAvailable)
VALUES (378, 'The Flame of War', 120, '978-0399578204', 2021, 'Adventure', 8);

INSERT INTO Books (BookID, Title, AuthorID, ISBN, PublishedYear, Genre, CopiesAvailable)
VALUES (379, 'The Last Kingdom', 44, '978-1501169406', 2022, 'Historical Fiction', 5);

INSERT INTO Books (BookID, Title, AuthorID, ISBN, PublishedYear, Genre, CopiesAvailable)
VALUES (380, 'Rise of the Heroes', 85, '978-1250265058', 2023, 'Fantasy', 7);

INSERT INTO Books (BookID, Title, AuthorID, ISBN, PublishedYear, Genre, CopiesAvailable)
VALUES (381, 'Shattered Dreams', 93, '978-0399578158', 2021, 'Mystery', 6);

INSERT INTO Books (BookID, Title, AuthorID, ISBN, PublishedYear, Genre, CopiesAvailable)
VALUES (382, 'The Secret of the Moon', 56, '978-1501169533', 2020, 'Adventure', 8);

INSERT INTO Books (BookID, Title, AuthorID, ISBN, PublishedYear, Genre, CopiesAvailable)
VALUES (383, 'The Storm Within', 97, '978-1250265144', 2021, 'Fantasy', 7);

INSERT INTO Books (BookID, Title, AuthorID, ISBN, PublishedYear, Genre, CopiesAvailable)
VALUES (384, 'Echo of the Waves', 78, '978-0399578273', 2022, 'Historical Fiction', 6);

INSERT INTO Books (BookID, Title, AuthorID, ISBN, PublishedYear, Genre, CopiesAvailable)
VALUES (385, 'A Song of Hope', 119, '978-1501169712', 2023, 'Mystery', 5);

INSERT INTO Books (BookID, Title, AuthorID, ISBN, PublishedYear, Genre, CopiesAvailable)
VALUES (386, 'Shadows of the Past', 37, '978-1250265282', 2020, 'Thriller', 7);

INSERT INTO Books (BookID, Title, AuthorID, ISBN, PublishedYear, Genre, CopiesAvailable)
VALUES (387, 'Waves of Time', 90, '978-0399578105', 2021, 'Fantasy', 6);

INSERT INTO Books (BookID, Title, AuthorID, ISBN, PublishedYear, Genre, CopiesAvailable)
VALUES (388, 'The Edge of Tomorrow', 66, '978-1501169684', 2022, 'Historical Fiction', 8);

INSERT INTO Books (BookID, Title, AuthorID, ISBN, PublishedYear, Genre, CopiesAvailable)
VALUES (389, 'Guardians of the Lost', 65, '978-1250265237', 2020, 'Adventure', 7);

INSERT INTO Books (BookID, Title, AuthorID, ISBN, PublishedYear, Genre, CopiesAvailable)
VALUES (390, 'Rising Shadows', 33, '978-0399578165', 2023, 'Thriller', 6);

INSERT INTO Books (BookID, Title, AuthorID, ISBN, PublishedYear, Genre, CopiesAvailable)
VALUES (391, 'Crown of the Fallen', 109, '978-1501169637', 2021, 'Fantasy', 5);

INSERT INTO Books (BookID, Title, AuthorID, ISBN, PublishedYear, Genre, CopiesAvailable)
VALUES (392, 'The Silent Voice', 124, '978-1250265117', 2022, 'Historical Fiction', 8);

INSERT INTO Books (BookID, Title, AuthorID, ISBN, PublishedYear, Genre, CopiesAvailable)
VALUES (393, 'The Dark Horizon', 122, '978-0399578080', 2023, 'Adventure', 7);

INSERT INTO Books (BookID, Title, AuthorID, ISBN, PublishedYear, Genre, CopiesAvailable)
VALUES (394, 'Bound by Destiny', 13, '978-1501169695', 2021, 'Thriller', 6);

INSERT INTO Books (BookID, Title, AuthorID, ISBN, PublishedYear, Genre, CopiesAvailable)
VALUES (395, 'The Eternal Echo', 47, '978-1250265323', 2020, 'Fantasy', 5);

INSERT INTO Books (BookID, Title, AuthorID, ISBN, PublishedYear, Genre, CopiesAvailable)
VALUES (396, 'Secrets of the Forest', 16, '978-0399578223', 2021, 'Historical Fiction', 7);

INSERT INTO Books (BookID, Title, AuthorID, ISBN, PublishedYear, Genre, CopiesAvailable)
VALUES (397, 'The Heart of Darkness', 72, '978-1501169618', 2022, 'Mystery', 6);

INSERT INTO Books (BookID, Title, AuthorID, ISBN, PublishedYear, Genre, CopiesAvailable)
VALUES (398, 'Whispers in the Storm', 95, '978-1250265086', 2023, 'Adventure', 5);


DELETE FROM Books
WHERE BookID NOT IN (
    SELECT MIN(BookID)
    FROM Books
    GROUP BY Title
);

drop table members;


CREATE TABLE Members (
    MemberID INT PRIMARY KEY,                    -- Unique identifier for each library member
    FirstName VARCHAR(50),                       -- Member's first name
    LastName VARCHAR(50),                        -- Member's last name
    Address VARCHAR(150),                        -- Member's address
    PhoneNumber VARCHAR(15),                     -- Member's phone number
    Email VARCHAR(100),                          -- Member's email address
    MembershipDate DATE                          -- Date the member joined the library
);



-- Row 1
INSERT INTO Members (MemberID, FirstName, LastName, Address, PhoneNumber, Email, MembershipDate) 
VALUES (1, 'John', 'Doe', '123 Elm Street, Springfield', '555-1234', 'johndoe@example.com', TO_DATE('2021-01-15', 'YYYY-MM-DD'));

-- Row 2
INSERT INTO Members (MemberID, FirstName, LastName, Address, PhoneNumber, Email, MembershipDate) 
VALUES (2, 'Jane', 'Smith', '456 Oak Avenue, Springfield', '555-5678', 'janesmith@example.com', TO_DATE('2020-03-22', 'YYYY-MM-DD'));

-- Row 3
INSERT INTO Members (MemberID, FirstName, LastName, Address, PhoneNumber, Email, MembershipDate) 
VALUES (3, 'Michael', 'Johnson', '789 Pine Road, Springfield', '555-8765', 'michaelj@example.com', TO_DATE('2019-07-30', 'YYYY-MM-DD'));

-- Row 4
INSERT INTO Members (MemberID, FirstName, LastName, Address, PhoneNumber, Email, MembershipDate) 
VALUES (4, 'Emily', 'Davis', '101 Maple Drive, Springfield', '555-1122', 'emilydavis@example.com', TO_DATE('2022-04-10', 'YYYY-MM-DD'));

-- Row 5
INSERT INTO Members (MemberID, FirstName, LastName, Address, PhoneNumber, Email, MembershipDate) 
VALUES (5, 'James', 'Brown', '202 Birch Lane, Springfield', '555-3344', 'jamesb@example.com', TO_DATE('2023-02-25', 'YYYY-MM-DD'));

-- Row 6
INSERT INTO Members (MemberID, FirstName, LastName, Address, PhoneNumber, Email, MembershipDate) 
VALUES (6, 'Patricia', 'Wilson', '303 Cedar Street, Springfield', '555-5566', 'patriciaw@example.com', TO_DATE('2020-11-05', 'YYYY-MM-DD'));

-- Row 7
INSERT INTO Members (MemberID, FirstName, LastName, Address, PhoneNumber, Email, MembershipDate) 
VALUES (7, 'David', 'Moore', '404 Pine Street, Springfield', '555-7788', 'davidm@example.com', TO_DATE('2018-10-01', 'YYYY-MM-DD'));

-- Row 8
INSERT INTO Members (MemberID, FirstName, LastName, Address, PhoneNumber, Email, MembershipDate) 
VALUES (8, 'Linda', 'Taylor', '505 Elm Road, Springfield', '555-9900', 'lindataylor@example.com', TO_DATE('2021-09-18', 'YYYY-MM-DD'));

-- Row 9
INSERT INTO Members (MemberID, FirstName, LastName, Address, PhoneNumber, Email, MembershipDate) 
VALUES (9, 'Robert', 'Anderson', '606 Oak Street, Springfield', '555-3345', 'roberta@example.com', TO_DATE('2017-05-10', 'YYYY-MM-DD'));

-- Row 10
INSERT INTO Members (MemberID, FirstName, LastName, Address, PhoneNumber, Email, MembershipDate) 
VALUES (10, 'Susan', 'Thomas', '707 Maple Avenue, Springfield', '555-6677', 'susant@example.com', TO_DATE('2022-08-13', 'YYYY-MM-DD'));



-- Row 11
INSERT INTO Members (MemberID, FirstName, LastName, Address, PhoneNumber, Email, MembershipDate) 
VALUES (11, 'William', 'Jackson', '808 Birch Road, Springfield', '555-1123', 'williamj@example.com', TO_DATE('2020-01-10', 'YYYY-MM-DD'));

-- Row 12
INSERT INTO Members (MemberID, FirstName, LastName, Address, PhoneNumber, Email, MembershipDate) 
VALUES (12, 'Elizabeth', 'Harris', '909 Cedar Avenue, Springfield', '555-2233', 'elizabethh@example.com', TO_DATE('2021-03-18', 'YYYY-MM-DD'));

-- Row 13
INSERT INTO Members (MemberID, FirstName, LastName, Address, PhoneNumber, Email, MembershipDate) 
VALUES (13, 'Christopher', 'Martinez', '1010 Elm Street, Springfield', '555-3344', 'christopherm@example.com', TO_DATE('2019-06-21', 'YYYY-MM-DD'));

-- Row 14
INSERT INTO Members (MemberID, FirstName, LastName, Address, PhoneNumber, Email, MembershipDate) 
VALUES (14, 'Sandra', 'Roberts', '1111 Oak Lane, Springfield', '555-4455', 'sandroberts@example.com', TO_DATE('2020-10-29', 'YYYY-MM-DD'));

-- Row 15
INSERT INTO Members (MemberID, FirstName, LastName, Address, PhoneNumber, Email, MembershipDate) 
VALUES (15, 'Matthew', 'Garcia', '1212 Pine Avenue, Springfield', '555-5566', 'matthewg@example.com', TO_DATE('2022-02-05', 'YYYY-MM-DD'));

-- Row 16
INSERT INTO Members (MemberID, FirstName, LastName, Address, PhoneNumber, Email, MembershipDate) 
VALUES (16, 'Ashley', 'Martinez', '1313 Maple Road, Springfield', '555-6677', 'ashleym@example.com', TO_DATE('2021-11-13', 'YYYY-MM-DD'));

-- Row 17
INSERT INTO Members (MemberID, FirstName, LastName, Address, PhoneNumber, Email, MembershipDate) 
VALUES (17, 'Daniel', 'Lee', '1414 Oak Road, Springfield', '555-7788', 'daniellee@example.com', TO_DATE('2023-03-25', 'YYYY-MM-DD'));

-- Row 18
INSERT INTO Members (MemberID, FirstName, LastName, Address, PhoneNumber, Email, MembershipDate) 
VALUES (18, 'Jessica', 'Gonzalez', '1515 Pine Street, Springfield', '555-8899', 'jessicag@example.com', TO_DATE('2020-07-12', 'YYYY-MM-DD'));

-- Row 19
INSERT INTO Members (MemberID, FirstName, LastName, Address, PhoneNumber, Email, MembershipDate) 
VALUES (19, 'Joseph', 'Wilson', '1616 Birch Avenue, Springfield', '555-9900', 'josephw@example.com', TO_DATE('2022-06-20', 'YYYY-MM-DD'));

-- Row 20
INSERT INTO Members (MemberID, FirstName, LastName, Address, PhoneNumber, Email, MembershipDate) 
VALUES (20, 'Rebecca', 'Young', '1717 Cedar Lane, Springfield', '555-1010', 'rebeccay@example.com', TO_DATE('2021-05-09', 'YYYY-MM-DD'));

-- Row 21
INSERT INTO Members (MemberID, FirstName, LastName, Address, PhoneNumber, Email, MembershipDate) 
VALUES (21, 'James', 'Allen', '1818 Maple Street, Springfield', '555-1122', 'jamesa@example.com', TO_DATE('2022-10-30', 'YYYY-MM-DD'));

-- Row 22
INSERT INTO Members (MemberID, FirstName, LastName, Address, PhoneNumber, Email, MembershipDate) 
VALUES (22, 'Olivia', 'King', '1919 Oak Avenue, Springfield', '555-2233', 'oliviak@example.com', TO_DATE('2020-04-15', 'YYYY-MM-DD'));

-- Row 23
INSERT INTO Members (MemberID, FirstName, LastName, Address, PhoneNumber, Email, MembershipDate) 
VALUES (23, 'Benjamin', 'Hernandez', '2020 Pine Lane, Springfield', '555-3344', 'benjaminh@example.com', TO_DATE('2019-12-05', 'YYYY-MM-DD'));

-- Row 24
INSERT INTO Members (MemberID, FirstName, LastName, Address, PhoneNumber, Email, MembershipDate) 
VALUES (24, 'Sophia', 'Carter', '2121 Birch Road, Springfield', '555-4455', 'sophiac@example.com', TO_DATE('2021-08-18', 'YYYY-MM-DD'));

-- Row 25
INSERT INTO Members (MemberID, FirstName, LastName, Address, PhoneNumber, Email, MembershipDate) 
VALUES (25, 'Ethan', 'Mitchell', '2222 Cedar Avenue, Springfield', '555-5566', 'ethanm@example.com', TO_DATE('2022-07-22', 'YYYY-MM-DD'));

-- Row 26
INSERT INTO Members (MemberID, FirstName, LastName, Address, PhoneNumber, Email, MembershipDate) 
VALUES (26, 'Mason', 'Rodriguez', '2323 Pine Street, Springfield', '555-6677', 'masonr@example.com', TO_DATE('2021-01-09', 'YYYY-MM-DD'));

-- Row 27
INSERT INTO Members (MemberID, FirstName, LastName, Address, PhoneNumber, Email, MembershipDate) 
VALUES (27, 'Charlotte', 'Green', '2424 Maple Lane, Springfield', '555-7788', 'charlotteg@example.com', TO_DATE('2022-11-11', 'YYYY-MM-DD'));

-- Row 28
INSERT INTO Members (MemberID, FirstName, LastName, Address, PhoneNumber, Email, MembershipDate) 
VALUES (28, 'Aiden', 'Lopez', '2525 Birch Avenue, Springfield', '555-8899', 'aidenl@example.com', TO_DATE('2021-04-13', 'YYYY-MM-DD'));

-- Row 29
INSERT INTO Members (MemberID, FirstName, LastName, Address, PhoneNumber, Email, MembershipDate) 
VALUES (29, 'Mia', 'Graham', '2626 Cedar Road, Springfield', '555-9900', 'miag@example.com', TO_DATE('2023-01-15', 'YYYY-MM-DD'));

-- Row 30
INSERT INTO Members (MemberID, FirstName, LastName, Address, PhoneNumber, Email, MembershipDate) 
VALUES (30, 'Lucas', 'Lee', '2727 Oak Lane, Springfield', '555-1010', 'lucasl@example.com', TO_DATE('2020-12-19', 'YYYY-MM-DD'));



-- Row 31
INSERT INTO Members (MemberID, FirstName, LastName, Address, PhoneNumber, Email, MembershipDate) 
VALUES (31, 'Alexander', 'Scott', '2828 Pine Avenue, Springfield', '555-1123', 'alexanders@example.com', TO_DATE('2021-05-05', 'YYYY-MM-DD'));

-- Row 32
INSERT INTO Members (MemberID, FirstName, LastName, Address, PhoneNumber, Email, MembershipDate) 
VALUES (32, 'Chloe', 'Adams', '2929 Maple Street, Springfield', '555-2234', 'chloea@example.com', TO_DATE('2022-06-13', 'YYYY-MM-DD'));

-- Row 33
INSERT INTO Members (MemberID, FirstName, LastName, Address, PhoneNumber, Email, MembershipDate) 
VALUES (33, 'Sebastian', 'Baker', '3030 Birch Lane, Springfield', '555-3345', 'sebastianb@example.com', TO_DATE('2020-08-23', 'YYYY-MM-DD'));

-- Row 34
INSERT INTO Members (MemberID, FirstName, LastName, Address, PhoneNumber, Email, MembershipDate) 
VALUES (34, 'Amelia', 'Nelson', '3131 Cedar Road, Springfield', '555-4456', 'amelian@example.com', TO_DATE('2022-12-08', 'YYYY-MM-DD'));

-- Row 35
INSERT INTO Members (MemberID, FirstName, LastName, Address, PhoneNumber, Email, MembershipDate) 
VALUES (35, 'Liam', 'Rivera', '3232 Pine Street, Springfield', '555-5567', 'liamr@example.com', TO_DATE('2021-11-14', 'YYYY-MM-DD'));

-- Row 36
INSERT INTO Members (MemberID, FirstName, LastName, Address, PhoneNumber, Email, MembershipDate) 
VALUES (36, 'Zoe', 'Murphy', '3333 Maple Avenue, Springfield', '555-6678', 'zoem@example.com', TO_DATE('2023-04-12', 'YYYY-MM-DD'));

-- Row 37
INSERT INTO Members (MemberID, FirstName, LastName, Address, PhoneNumber, Email, MembershipDate) 
VALUES (37, 'Isaiah', 'Sullivan', '3434 Birch Road, Springfield', '555-7789', 'isaiahs@example.com', TO_DATE('2020-09-10', 'YYYY-MM-DD'));

-- Row 38
INSERT INTO Members (MemberID, FirstName, LastName, Address, PhoneNumber, Email, MembershipDate) 
VALUES (38, 'Eva', 'Perez', '3535 Cedar Lane, Springfield', '555-8890', 'evap@example.com', TO_DATE('2022-03-21', 'YYYY-MM-DD'));

-- Row 39
INSERT INTO Members (MemberID, FirstName, LastName, Address, PhoneNumber, Email, MembershipDate) 
VALUES (39, 'Oliver', 'Cooper', '3636 Oak Road, Springfield', '555-9901', 'oliverc@example.com', TO_DATE('2021-06-30', 'YYYY-MM-DD'));

-- Row 40
INSERT INTO Members (MemberID, FirstName, LastName, Address, PhoneNumber, Email, MembershipDate) 
VALUES (40, 'Evelyn', 'Ward', '3737 Pine Lane, Springfield', '555-1011', 'evelynw@example.com', TO_DATE('2023-02-19', 'YYYY-MM-DD'));

-- Row 41
INSERT INTO Members (MemberID, FirstName, LastName, Address, PhoneNumber, Email, MembershipDate) 
VALUES (41, 'Henry', 'Caldwell', '3838 Maple Road, Springfield', '555-1124', 'henryc@example.com', TO_DATE('2020-07-01', 'YYYY-MM-DD'));

-- Row 42
INSERT INTO Members (MemberID, FirstName, LastName, Address, PhoneNumber, Email, MembershipDate) 
VALUES (42, 'Charlotte', 'Morris', '3939 Birch Avenue, Springfield', '555-2235', 'charlottem@example.com', TO_DATE('2022-09-11', 'YYYY-MM-DD'));

-- Row 43
INSERT INTO Members (MemberID, FirstName, LastName, Address, PhoneNumber, Email, MembershipDate) 
VALUES (43, 'Jack', 'Parker', '4040 Cedar Road, Springfield', '555-3346', 'jackp@example.com', TO_DATE('2021-10-20', 'YYYY-MM-DD'));

-- Row 44
INSERT INTO Members (MemberID, FirstName, LastName, Address, PhoneNumber, Email, MembershipDate) 
VALUES (44, 'Layla', 'Robinson', '4141 Pine Avenue, Springfield', '555-4457', 'laylar@example.com', TO_DATE('2022-01-15', 'YYYY-MM-DD'));

-- Row 45
INSERT INTO Members (MemberID, FirstName, LastName, Address, PhoneNumber, Email, MembershipDate) 
VALUES (45, 'Leo', 'Reed', '4242 Oak Lane, Springfield', '555-5568', 'leor@example.com', TO_DATE('2021-12-02', 'YYYY-MM-DD'));

-- Row 46
INSERT INTO Members (MemberID, FirstName, LastName, Address, PhoneNumber, Email, MembershipDate) 
VALUES (46, 'Victoria', 'Cook', '4343 Maple Street, Springfield', '555-6679', 'victoriac@example.com', TO_DATE('2020-10-25', 'YYYY-MM-DD'));

-- Row 47
INSERT INTO Members (MemberID, FirstName, LastName, Address, PhoneNumber, Email, MembershipDate) 
VALUES (47, 'Ava', 'Gonzalez', '4444 Birch Lane, Springfield', '555-7789', 'avag@example.com', TO_DATE('2023-05-11', 'YYYY-MM-DD'));

-- Row 48
INSERT INTO Members (MemberID, FirstName, LastName, Address, PhoneNumber, Email, MembershipDate) 
VALUES (48, 'Benjamin', 'King', '4545 Cedar Avenue, Springfield', '555-8891', 'benjamink@example.com', TO_DATE('2021-08-07', 'YYYY-MM-DD'));

-- Row 49
INSERT INTO Members (MemberID, FirstName, LastName, Address, PhoneNumber, Email, MembershipDate) 
VALUES (49, 'Madison', 'Green', '4646 Pine Lane, Springfield', '555-9902', 'madisong@example.com', TO_DATE('2022-02-23', 'YYYY-MM-DD'));

-- Row 50
INSERT INTO Members (MemberID, FirstName, LastName, Address, PhoneNumber, Email, MembershipDate) 
VALUES (50, 'Wyatt', 'Garcia', '4747 Oak Road, Springfield', '555-1012', 'wyattg@example.com', TO_DATE('2020-11-19', 'YYYY-MM-DD'));


-- Row 51
INSERT INTO Members (MemberID, FirstName, LastName, Address, PhoneNumber, Email, MembershipDate) 
VALUES (51, 'Sophia', 'Mitchell', '4848 Maple Avenue, Springfield', '555-1125', 'sophiam@example.com', TO_DATE('2021-07-15', 'YYYY-MM-DD'));

-- Row 52
INSERT INTO Members (MemberID, FirstName, LastName, Address, PhoneNumber, Email, MembershipDate) 
VALUES (52, 'Mason', 'Martinez', '4949 Birch Street, Springfield', '555-2236', 'masonm@example.com', TO_DATE('2022-05-22', 'YYYY-MM-DD'));

-- Row 53
INSERT INTO Members (MemberID, FirstName, LastName, Address, PhoneNumber, Email, MembershipDate) 
VALUES (53, 'Charlotte', 'Allen', '5050 Cedar Lane, Springfield', '555-3347', 'charlottea@example.com', TO_DATE('2020-12-30', 'YYYY-MM-DD'));

-- Row 54
INSERT INTO Members (MemberID, FirstName, LastName, Address, PhoneNumber, Email, MembershipDate) 
VALUES (54, 'James', 'Scott', '5151 Oak Avenue, Springfield', '555-4458', 'jamess@example.com', TO_DATE('2021-02-18', 'YYYY-MM-DD'));

-- Row 55
INSERT INTO Members (MemberID, FirstName, LastName, Address, PhoneNumber, Email, MembershipDate) 
VALUES (55, 'Ella', 'Young', '5252 Pine Street, Springfield', '555-5569', 'ellay@example.com', TO_DATE('2022-03-01', 'YYYY-MM-DD'));

-- Row 56
INSERT INTO Members (MemberID, FirstName, LastName, Address, PhoneNumber, Email, MembershipDate) 
VALUES (56, 'Lucas', 'Harris', '5353 Maple Lane, Springfield', '555-6670', 'lucash@example.com', TO_DATE('2021-09-25', 'YYYY-MM-DD'));

-- Row 57
INSERT INTO Members (MemberID, FirstName, LastName, Address, PhoneNumber, Email, MembershipDate) 
VALUES (57, 'Emily', 'Nelson', '5454 Birch Avenue, Springfield', '555-7780', 'emilyn@example.com', TO_DATE('2020-04-07', 'YYYY-MM-DD'));

-- Row 58
INSERT INTO Members (MemberID, FirstName, LastName, Address, PhoneNumber, Email, MembershipDate) 
VALUES (58, 'Oliver', 'Carter', '5555 Cedar Street, Springfield', '555-8892', 'oliverc@example.com', TO_DATE('2023-01-29', 'YYYY-MM-DD'));

-- Row 59
INSERT INTO Members (MemberID, FirstName, LastName, Address, PhoneNumber, Email, MembershipDate) 
VALUES (59, 'Ava', 'Diaz', '5656 Oak Road, Springfield', '555-9903', 'avad@example.com', TO_DATE('2021-03-22', 'YYYY-MM-DD'));

-- Row 60
INSERT INTO Members (MemberID, FirstName, LastName, Address, PhoneNumber, Email, MembershipDate) 
VALUES (60, 'Matthew', 'Walker', '5757 Pine Avenue, Springfield', '555-1013', 'mattheww@example.com', TO_DATE('2022-06-08', 'YYYY-MM-DD'));

-- Row 61
INSERT INTO Members (MemberID, FirstName, LastName, Address, PhoneNumber, Email, MembershipDate) 
VALUES (61, 'Isabella', 'Lewis', '5858 Maple Avenue, Springfield', '555-1126', 'isabellal@example.com', TO_DATE('2020-11-01', 'YYYY-MM-DD'));

-- Row 62
INSERT INTO Members (MemberID, FirstName, LastName, Address, PhoneNumber, Email, MembershipDate) 
VALUES (62, 'Henry', 'Garcia', '5959 Birch Road, Springfield', '555-2237', 'henryg@example.com', TO_DATE('2021-12-20', 'YYYY-MM-DD'));

-- Row 63
INSERT INTO Members (MemberID, FirstName, LastName, Address, PhoneNumber, Email, MembershipDate) 
VALUES (63, 'Jack', 'Kim', '6060 Cedar Avenue, Springfield', '555-3348', 'jackk@example.com', TO_DATE('2022-09-30', 'YYYY-MM-DD'));

-- Row 64
INSERT INTO Members (MemberID, FirstName, LastName, Address, PhoneNumber, Email, MembershipDate) 
VALUES (64, 'Grace', 'Martinez', '6161 Oak Lane, Springfield', '555-4459', 'gracem@example.com', TO_DATE('2020-02-04', 'YYYY-MM-DD'));

-- Row 65
INSERT INTO Members (MemberID, FirstName, LastName, Address, PhoneNumber, Email, MembershipDate) 
VALUES (65, 'Elijah', 'Hernandez', '6262 Pine Road, Springfield', '555-5561', 'elijahh@example.com', TO_DATE('2021-05-17', 'YYYY-MM-DD'));

-- Row 66
INSERT INTO Members (MemberID, FirstName, LastName, Address, PhoneNumber, Email, MembershipDate) 
VALUES (66, 'Charlotte', 'White', '6363 Maple Street, Springfield', '555-6672', 'charlottew@example.com', TO_DATE('2023-07-02', 'YYYY-MM-DD'));

-- Row 67
INSERT INTO Members (MemberID, FirstName, LastName, Address, PhoneNumber, Email, MembershipDate) 
VALUES (67, 'Leo', 'Young', '6464 Birch Lane, Springfield', '555-7781', 'leoy@example.com', TO_DATE('2021-10-19', 'YYYY-MM-DD'));

-- Row 68
INSERT INTO Members (MemberID, FirstName, LastName, Address, PhoneNumber, Email, MembershipDate) 
VALUES (68, 'Lily', 'Adams', '6565 Cedar Lane, Springfield', '555-8893', 'lilya@example.com', TO_DATE('2020-08-04', 'YYYY-MM-DD'));

-- Row 69
INSERT INTO Members (MemberID, FirstName, LastName, Address, PhoneNumber, Email, MembershipDate) 
VALUES (69, 'Michael', 'Lewis', '6666 Oak Avenue, Springfield', '555-9904', 'michaell@example.com', TO_DATE('2022-01-06', 'YYYY-MM-DD'));

-- Row 70
INSERT INTO Members (MemberID, FirstName, LastName, Address, PhoneNumber, Email, MembershipDate) 
VALUES (70, 'Sophie', 'King', '6767 Pine Street, Springfield', '555-1014', 'sophiek@example.com', TO_DATE('2021-07-09', 'YYYY-MM-DD'));

-- Row 71
INSERT INTO Members (MemberID, FirstName, LastName, Address, PhoneNumber, Email, MembershipDate) 
VALUES (71, 'David', 'Walker', '6868 Maple Road, Springfield', '555-1127', 'davidw@example.com', TO_DATE('2022-11-28', 'YYYY-MM-DD'));

-- Row 72
INSERT INTO Members (MemberID, FirstName, LastName, Address, PhoneNumber, Email, MembershipDate) 
VALUES (72, 'Grace', 'Young', '6969 Birch Avenue, Springfield', '555-2238', 'gracey@example.com', TO_DATE('2020-05-13', 'YYYY-MM-DD'));

-- Row 73
INSERT INTO Members (MemberID, FirstName, LastName, Address, PhoneNumber, Email, MembershipDate) 
VALUES (73, 'Emma', 'Parker', '7070 Cedar Road, Springfield', '555-3349', 'emmap@example.com', TO_DATE('2022-02-15', 'YYYY-MM-DD'));

-- Row 74
INSERT INTO Members (MemberID, FirstName, LastName, Address, PhoneNumber, Email, MembershipDate) 
VALUES (74, 'James', 'Evans', '7171 Oak Lane, Springfield', '555-4450', 'jamese@example.com', TO_DATE('2020-01-22', 'YYYY-MM-DD'));

-- Row 75
INSERT INTO Members (MemberID, FirstName, LastName, Address, PhoneNumber, Email, MembershipDate) 
VALUES (75, 'Elizabeth', 'Taylor', '7272 Pine Avenue, Springfield', '555-5562', 'elizabetht@example.com', TO_DATE('2023-09-11', 'YYYY-MM-DD'));



-- Row 76
INSERT INTO Members (MemberID, FirstName, LastName, Address, PhoneNumber, Email, MembershipDate) 
VALUES (76, 'Henry', 'Lopez', '7373 Maple Street, Springfield', '555-6673', 'henryl@example.com', TO_DATE('2021-10-13', 'YYYY-MM-DD'));

-- Row 77
INSERT INTO Members (MemberID, FirstName, LastName, Address, PhoneNumber, Email, MembershipDate) 
VALUES (77, 'Madeline', 'Lee', '7474 Birch Lane, Springfield', '555-7782', 'madelinel@example.com', TO_DATE('2020-11-20', 'YYYY-MM-DD'));

-- Row 78
INSERT INTO Members (MemberID, FirstName, LastName, Address, PhoneNumber, Email, MembershipDate) 
VALUES (78, 'Benjamin', 'Gonzalez', '7575 Cedar Avenue, Springfield', '555-8894', 'benjaming@example.com', TO_DATE('2022-06-30', 'YYYY-MM-DD'));

-- Row 79
INSERT INTO Members (MemberID, FirstName, LastName, Address, PhoneNumber, Email, MembershipDate) 
VALUES (79, 'Samantha', 'Harris', '7676 Oak Road, Springfield', '555-9905', 'samanthah@example.com', TO_DATE('2021-03-17', 'YYYY-MM-DD'));

-- Row 80
INSERT INTO Members (MemberID, FirstName, LastName, Address, PhoneNumber, Email, MembershipDate) 
VALUES (80, 'Lucas', 'Wright', '7777 Pine Lane, Springfield', '555-1015', 'lucasw@example.com', TO_DATE('2023-04-26', 'YYYY-MM-DD'));

-- Row 81
INSERT INTO Members (MemberID, FirstName, LastName, Address, PhoneNumber, Email, MembershipDate) 
VALUES (81, 'Sophia', 'Nelson', '7878 Maple Lane, Springfield', '555-1128', 'sophian@example.com', TO_DATE('2022-08-14', 'YYYY-MM-DD'));

-- Row 82
INSERT INTO Members (MemberID, FirstName, LastName, Address, PhoneNumber, Email, MembershipDate) 
VALUES (82, 'Liam', 'Walker', '7979 Birch Street, Springfield', '555-2239', 'liamw@example.com', TO_DATE('2020-06-11', 'YYYY-MM-DD'));

-- Row 83
INSERT INTO Members (MemberID, FirstName, LastName, Address, PhoneNumber, Email, MembershipDate) 
VALUES (83, 'Zoe', 'Martinez', '8080 Cedar Lane, Springfield', '555-3340', 'zoem@example.com', TO_DATE('2022-04-18', 'YYYY-MM-DD'));

-- Row 84
INSERT INTO Members (MemberID, FirstName, LastName, Address, PhoneNumber, Email, MembershipDate) 
VALUES (84, 'Matthew', 'Lopez', '8181 Oak Avenue, Springfield', '555-4451', 'matthewl@example.com', TO_DATE('2023-05-30', 'YYYY-MM-DD'));

-- Row 85
INSERT INTO Members (MemberID, FirstName, LastName, Address, PhoneNumber, Email, MembershipDate) 
VALUES (85, 'Ella', 'Clark', '8282 Pine Street, Springfield', '555-5563', 'ellac@example.com', TO_DATE('2021-12-01', 'YYYY-MM-DD'));

-- Row 86
INSERT INTO Members (MemberID, FirstName, LastName, Address, PhoneNumber, Email, MembershipDate) 
VALUES (86, 'Michael', 'Wilson', '8383 Maple Road, Springfield', '555-6674', 'michaelw@example.com', TO_DATE('2020-04-19', 'YYYY-MM-DD'));

-- Row 87
INSERT INTO Members (MemberID, FirstName, LastName, Address, PhoneNumber, Email, MembershipDate) 
VALUES (87, 'Emily', 'Thomas', '8484 Birch Lane, Springfield', '555-7783', 'emilyt@example.com', TO_DATE('2022-07-22', 'YYYY-MM-DD'));

-- Row 88
INSERT INTO Members (MemberID, FirstName, LastName, Address, PhoneNumber, Email, MembershipDate) 
VALUES (88, 'Aiden', 'Hernandez', '8585 Cedar Road, Springfield', '555-8895', 'aidenh@example.com', TO_DATE('2021-10-02', 'YYYY-MM-DD'));

-- Row 89
INSERT INTO Members (MemberID, FirstName, LastName, Address, PhoneNumber, Email, MembershipDate) 
VALUES (89, 'Grace', 'Lopez', '8686 Oak Avenue, Springfield', '555-9906', 'gracel@example.com', TO_DATE('2023-02-03', 'YYYY-MM-DD'));

-- Row 90
INSERT INTO Members (MemberID, FirstName, LastName, Address, PhoneNumber, Email, MembershipDate) 
VALUES (90, 'Ethan', 'Young', '8787 Pine Road, Springfield', '555-1016', 'ethany@example.com', TO_DATE('2022-11-05', 'YYYY-MM-DD'));

-- Row 91
INSERT INTO Members (MemberID, FirstName, LastName, Address, PhoneNumber, Email, MembershipDate) 
VALUES (91, 'Charlotte', 'Martin', '8888 Maple Street, Springfield', '555-1129', 'charlottem@example.com', TO_DATE('2020-02-09', 'YYYY-MM-DD'));

-- Row 92
INSERT INTO Members (MemberID, FirstName, LastName, Address, PhoneNumber, Email, MembershipDate) 
VALUES (92, 'Oliver', 'Miller', '8989 Birch Avenue, Springfield', '555-2230', 'oliverm@example.com', TO_DATE('2023-10-16', 'YYYY-MM-DD'));

-- Row 93
INSERT INTO Members (MemberID, FirstName, LastName, Address, PhoneNumber, Email, MembershipDate) 
VALUES (93, 'Ava', 'Davis', '9090 Cedar Lane, Springfield', '555-3341', 'avad@example.com', TO_DATE('2022-01-29', 'YYYY-MM-DD'));

-- Row 94
INSERT INTO Members (MemberID, FirstName, LastName, Address, PhoneNumber, Email, MembershipDate) 
VALUES (94, 'Elijah', 'Jackson', '9191 Oak Road, Springfield', '555-4452', 'elijahj@example.com', TO_DATE('2021-08-13', 'YYYY-MM-DD'));

-- Row 95
INSERT INTO Members (MemberID, FirstName, LastName, Address, PhoneNumber, Email, MembershipDate) 
VALUES (95, 'Benjamin', 'Lee', '9292 Pine Lane, Springfield', '555-5564', 'benjaminl@example.com', TO_DATE('2020-10-23', 'YYYY-MM-DD'));

-- Row 96
INSERT INTO Members (MemberID, FirstName, LastName, Address, PhoneNumber, Email, MembershipDate) 
VALUES (96, 'Henry', 'Taylor', '9393 Maple Avenue, Springfield', '555-6675', 'henryt@example.com', TO_DATE('2023-03-12', 'YYYY-MM-DD'));

-- Row 97
INSERT INTO Members (MemberID, FirstName, LastName, Address, PhoneNumber, Email, MembershipDate) 
VALUES (97, 'Olivia', 'Roberts', '9494 Birch Road, Springfield', '555-7784', 'oliviar@example.com', TO_DATE('2021-06-07', 'YYYY-MM-DD'));

-- Row 98
INSERT INTO Members (MemberID, FirstName, LastName, Address, PhoneNumber, Email, MembershipDate) 
VALUES (98, 'Lucas', 'Wilson', '9595 Cedar Avenue, Springfield', '555-8896', 'lucasw@example.com', TO_DATE('2022-04-19', 'YYYY-MM-DD'));

-- Row 99
INSERT INTO Members (MemberID, FirstName, LastName, Address, PhoneNumber, Email, MembershipDate) 
VALUES (99, 'Ella', 'Taylor', '9696 Oak Lane, Springfield', '555-9907', 'ellat@example.com', TO_DATE('2023-07-01', 'YYYY-MM-DD'));

-- Row 100
INSERT INTO Members (MemberID, FirstName, LastName, Address, PhoneNumber, Email, MembershipDate) 
VALUES (100, 'Oliver', 'Lee', '9797 Pine Avenue, Springfield', '555-1017', 'oliverl@example.com', TO_DATE('2020-01-11', 'YYYY-MM-DD'));


-- Row 101
INSERT INTO Members (MemberID, FirstName, LastName, Address, PhoneNumber, Email, MembershipDate) 
VALUES (101, 'Aiden', 'Martinez', '9898 Maple Lane, Springfield', '555-1129', 'aidenm@example.com', TO_DATE('2022-03-14', 'YYYY-MM-DD'));

-- Row 102
INSERT INTO Members (MemberID, FirstName, LastName, Address, PhoneNumber, Email, MembershipDate) 
VALUES (102, 'Isabella', 'Morris', '9999 Birch Avenue, Springfield', '555-2230', 'isabellam@example.com', TO_DATE('2021-12-15', 'YYYY-MM-DD'));

-- Row 103
INSERT INTO Members (MemberID, FirstName, LastName, Address, PhoneNumber, Email, MembershipDate) 
VALUES (103, 'Lucas', 'Hernandez', '10000 Cedar Street, Springfield', '555-3342', 'lucash@example.com', TO_DATE('2022-10-28', 'YYYY-MM-DD'));

-- Row 104
INSERT INTO Members (MemberID, FirstName, LastName, Address, PhoneNumber, Email, MembershipDate) 
VALUES (104, 'Mia', 'Scott', '10101 Oak Avenue, Springfield', '555-4453', 'mias@example.com', TO_DATE('2020-05-09', 'YYYY-MM-DD'));

-- Row 105
INSERT INTO Members (MemberID, FirstName, LastName, Address, PhoneNumber, Email, MembershipDate) 
VALUES (105, 'Alexander', 'Anderson', '10202 Pine Lane, Springfield', '555-5565', 'alexandera@example.com', TO_DATE('2023-08-19', 'YYYY-MM-DD'));

-- Row 106
INSERT INTO Members (MemberID, FirstName, LastName, Address, PhoneNumber, Email, MembershipDate) 
VALUES (106, 'Charlotte', 'Thomas', '10303 Maple Avenue, Springfield', '555-6676', 'charlottet@example.com', TO_DATE('2021-09-03', 'YYYY-MM-DD'));

-- Row 107
INSERT INTO Members (MemberID, FirstName, LastName, Address, PhoneNumber, Email, MembershipDate) 
VALUES (107, 'William', 'Taylor', '10404 Birch Road, Springfield', '555-7785', 'williamt@example.com', TO_DATE('2022-09-15', 'YYYY-MM-DD'));

-- Row 108
INSERT INTO Members (MemberID, FirstName, LastName, Address, PhoneNumber, Email, MembershipDate) 
VALUES (108, 'Olivia', 'Young', '10505 Cedar Lane, Springfield', '555-8897', 'oliviay@example.com', TO_DATE('2021-01-22', 'YYYY-MM-DD'));

-- Row 109
INSERT INTO Members (MemberID, FirstName, LastName, Address, PhoneNumber, Email, MembershipDate) 
VALUES (109, 'Elijah', 'Moore', '10606 Oak Road, Springfield', '555-9908', 'elijahm@example.com', TO_DATE('2022-02-04', 'YYYY-MM-DD'));

-- Row 110
INSERT INTO Members (MemberID, FirstName, LastName, Address, PhoneNumber, Email, MembershipDate) 
VALUES (110, 'Sophia', 'Williams', '10707 Pine Avenue, Springfield', '555-1018', 'sophiaw@example.com', TO_DATE('2020-07-16', 'YYYY-MM-DD'));

-- Row 111
INSERT INTO Members (MemberID, FirstName, LastName, Address, PhoneNumber, Email, MembershipDate) 
VALUES (111, 'Liam', 'Jackson', '10808 Maple Road, Springfield', '555-1120', 'liamj@example.com', TO_DATE('2023-01-25', 'YYYY-MM-DD'));

-- Row 112
INSERT INTO Members (MemberID, FirstName, LastName, Address, PhoneNumber, Email, MembershipDate) 
VALUES (112, 'Grace', 'Martinez', '10909 Birch Lane, Springfield', '555-2231', 'gracem@example.com', TO_DATE('2020-03-04', 'YYYY-MM-DD'));

-- Row 113
INSERT INTO Members (MemberID, FirstName, LastName, Address, PhoneNumber, Email, MembershipDate) 
VALUES (113, 'James', 'Roberts', '11010 Cedar Avenue, Springfield', '555-3343', 'jamesr@example.com', TO_DATE('2022-11-11', 'YYYY-MM-DD'));

-- Row 114
INSERT INTO Members (MemberID, FirstName, LastName, Address, PhoneNumber, Email, MembershipDate) 
VALUES (114, 'Benjamin', 'Lee', '11111 Oak Street, Springfield', '555-4454', 'benjaminl@example.com', TO_DATE('2021-12-22', 'YYYY-MM-DD'));

-- Row 115
INSERT INTO Members (MemberID, FirstName, LastName, Address, PhoneNumber, Email, MembershipDate) 
VALUES (115, 'Madeline', 'Young', '11212 Pine Road, Springfield', '555-5566', 'madeliney@example.com', TO_DATE('2023-02-18', 'YYYY-MM-DD'));

-- Row 116
INSERT INTO Members (MemberID, FirstName, LastName, Address, PhoneNumber, Email, MembershipDate) 
VALUES (116, 'David', 'Scott', '11313 Maple Avenue, Springfield', '555-6677', 'davids@example.com', TO_DATE('2020-04-27', 'YYYY-MM-DD'));

-- Row 117
INSERT INTO Members (MemberID, FirstName, LastName, Address, PhoneNumber, Email, MembershipDate) 
VALUES (117, 'Megan', 'Hernandez', '11414 Birch Lane, Springfield', '555-7786', 'meganh@example.com', TO_DATE('2022-06-09', 'YYYY-MM-DD'));

-- Row 118
INSERT INTO Members (MemberID, FirstName, LastName, Address, PhoneNumber, Email, MembershipDate) 
VALUES (118, 'Isaac', 'Wilson', '11515 Cedar Road, Springfield', '555-8898', 'isaacw@example.com', TO_DATE('2021-08-20', 'YYYY-MM-DD'));

-- Row 119
INSERT INTO Members (MemberID, FirstName, LastName, Address, PhoneNumber, Email, MembershipDate) 
VALUES (119, 'Mia', 'Anderson', '11616 Oak Avenue, Springfield', '555-9909', 'miaa@example.com', TO_DATE('2023-01-05', 'YYYY-MM-DD'));

-- Row 120
INSERT INTO Members (MemberID, FirstName, LastName, Address, PhoneNumber, Email, MembershipDate) 
VALUES (120, 'Charlotte', 'Thomas', '11717 Pine Lane, Springfield', '555-1019', 'charlottet@example.com', TO_DATE('2020-09-01', 'YYYY-MM-DD'));

-- Row 121
INSERT INTO Members (MemberID, FirstName, LastName, Address, PhoneNumber, Email, MembershipDate) 
VALUES (121, 'Michael', 'Wilson', '11818 Maple Road, Springfield', '555-1121', 'michaelw@example.com', TO_DATE('2022-04-25', 'YYYY-MM-DD'));

-- Row 122
INSERT INTO Members (MemberID, FirstName, LastName, Address, PhoneNumber, Email, MembershipDate) 
VALUES (122, 'Benjamin', 'Moore', '11919 Birch Street, Springfield', '555-2232', 'benjaminm@example.com', TO_DATE('2021-05-07', 'YYYY-MM-DD'));

-- Row 123
INSERT INTO Members (MemberID, FirstName, LastName, Address, PhoneNumber, Email, MembershipDate) 
VALUES (123, 'Emily', 'Jackson', '12020 Cedar Lane, Springfield', '555-3344', 'emilyj@example.com', TO_DATE('2023-02-09', 'YYYY-MM-DD'));

-- Row 124
INSERT INTO Members (MemberID, FirstName, LastName, Address, PhoneNumber, Email, MembershipDate) 
VALUES (124, 'Daniel', 'Clark', '12121 Oak Avenue, Springfield', '555-4455', 'danielc@example.com', TO_DATE('2022-07-23', 'YYYY-MM-DD'));

-- Row 125
INSERT INTO Members (MemberID, FirstName, LastName, Address, PhoneNumber, Email, MembershipDate) 
VALUES (125, 'Lily', 'Roberts', '12222 Pine Street, Springfield', '555-5567', 'lilyr@example.com', TO_DATE('2021-06-28', 'YYYY-MM-DD'));

-- Row 126
INSERT INTO Members (MemberID, FirstName, LastName, Address, PhoneNumber, Email, MembershipDate) 
VALUES (126, 'Oliver', 'Nelson', '12323 Maple Lane, Springfield', '555-6678', 'olivern@example.com', TO_DATE('2020-07-07', 'YYYY-MM-DD'));

-- Row 127
INSERT INTO Members (MemberID, FirstName, LastName, Address, PhoneNumber, Email, MembershipDate) 
VALUES (127, 'Emily', 'Wilson', '12424 Birch Road, Springfield', '555-7787', 'emilyw@example.com', TO_DATE('2023-06-15', 'YYYY-MM-DD'));

-- Row 128
INSERT INTO Members (MemberID, FirstName, LastName, Address, PhoneNumber, Email, MembershipDate) 
VALUES (128, 'Liam', 'Scott', '12525 Cedar Street, Springfield', '555-8899', 'liams@example.com', TO_DATE('2022-11-30', 'YYYY-MM-DD'));

-- Row 129
INSERT INTO Members (MemberID, FirstName, LastName, Address, PhoneNumber, Email, MembershipDate) 
VALUES (129, 'Sophia', 'Young', '12626 Oak Road, Springfield', '555-9900', 'sophiay@example.com', TO_DATE('2021-10-18', 'YYYY-MM-DD'));

-- Row 130
INSERT INTO Members (MemberID, FirstName, LastName, Address, PhoneNumber, Email, MembershipDate) 
VALUES (130, 'Aiden', 'Taylor', '12727 Pine Avenue, Springfield', '555-1010', 'aident@example.com', TO_DATE('2023-03-28', 'YYYY-MM-DD'));



-- Row 131
INSERT INTO Members (MemberID, FirstName, LastName, Address, PhoneNumber, Email, MembershipDate) 
VALUES (131, 'Harper', 'Moore', '12828 Maple Road, Springfield', '555-1122', 'harperm@example.com', TO_DATE('2022-05-15', 'YYYY-MM-DD'));

-- Row 132
INSERT INTO Members (MemberID, FirstName, LastName, Address, PhoneNumber, Email, MembershipDate) 
VALUES (132, 'Jack', 'Lee', '12929 Birch Avenue, Springfield', '555-2233', 'jackl@example.com', TO_DATE('2020-10-10', 'YYYY-MM-DD'));

-- Row 133
INSERT INTO Members (MemberID, FirstName, LastName, Address, PhoneNumber, Email, MembershipDate) 
VALUES (133, 'Amelia', 'Hernandez', '13030 Cedar Lane, Springfield', '555-3345', 'ameliah@example.com', TO_DATE('2021-12-01', 'YYYY-MM-DD'));

-- Row 134
INSERT INTO Members (MemberID, FirstName, LastName, Address, PhoneNumber, Email, MembershipDate) 
VALUES (134, 'Leo', 'Williams', '13131 Oak Street, Springfield', '555-4456', 'leow@example.com', TO_DATE('2022-01-30', 'YYYY-MM-DD'));

-- Row 135
INSERT INTO Members (MemberID, FirstName, LastName, Address, PhoneNumber, Email, MembershipDate) 
VALUES (135, 'Ella', 'Taylor', '13232 Pine Road, Springfield', '555-5568', 'ellat@example.com', TO_DATE('2020-11-21', 'YYYY-MM-DD'));

-- Row 136
INSERT INTO Members (MemberID, FirstName, LastName, Address, PhoneNumber, Email, MembershipDate) 
VALUES (136, 'Sebastian', 'Clark', '13333 Maple Lane, Springfield', '555-6679', 'sebastianc@example.com', TO_DATE('2022-09-22', 'YYYY-MM-DD'));

-- Row 137
INSERT INTO Members (MemberID, FirstName, LastName, Address, PhoneNumber, Email, MembershipDate) 
VALUES (137, 'Zoe', 'Nelson', '13434 Birch Lane, Springfield', '555-7788', 'zoen@example.com', TO_DATE('2021-07-16', 'YYYY-MM-DD'));

-- Row 138
INSERT INTO Members (MemberID, FirstName, LastName, Address, PhoneNumber, Email, MembershipDate) 
VALUES (138, 'Jacob', 'Scott', '13535 Cedar Road, Springfield', '555-8890', 'jacobs@example.com', TO_DATE('2022-10-09', 'YYYY-MM-DD'));

-- Row 139
INSERT INTO Members (MemberID, FirstName, LastName, Address, PhoneNumber, Email, MembershipDate) 
VALUES (139, 'Chloe', 'Martin', '13636 Oak Avenue, Springfield', '555-9901', 'chloem@example.com', TO_DATE('2023-05-30', 'YYYY-MM-DD'));

-- Row 140
INSERT INTO Members (MemberID, FirstName, LastName, Address, PhoneNumber, Email, MembershipDate) 
VALUES (140, 'Lucas', 'Roberts', '13737 Pine Avenue, Springfield', '555-1011', 'lucasr@example.com', TO_DATE('2021-04-14', 'YYYY-MM-DD'));

-- Row 141
INSERT INTO Members (MemberID, FirstName, LastName, Address, PhoneNumber, Email, MembershipDate) 
VALUES (141, 'Mia', 'Young', '13838 Maple Street, Springfield', '555-1123', 'miay@example.com', TO_DATE('2020-02-09', 'YYYY-MM-DD'));

-- Row 142
INSERT INTO Members (MemberID, FirstName, LastName, Address, PhoneNumber, Email, MembershipDate) 
VALUES (142, 'Elijah', 'King', '13939 Birch Road, Springfield', '555-2234', 'elijahk@example.com', TO_DATE('2022-03-19', 'YYYY-MM-DD'));

-- Row 143
INSERT INTO Members (MemberID, FirstName, LastName, Address, PhoneNumber, Email, MembershipDate) 
VALUES (143, 'Ava', 'Nelson', '14040 Cedar Avenue, Springfield', '555-3346', 'avan@example.com', TO_DATE('2023-07-11', 'YYYY-MM-DD'));

-- Row 144
INSERT INTO Members (MemberID, FirstName, LastName, Address, PhoneNumber, Email, MembershipDate) 
VALUES (144, 'Mason', 'Wilson', '14141 Oak Road, Springfield', '555-4457', 'masonw@example.com', TO_DATE('2021-02-01', 'YYYY-MM-DD'));

-- Row 145
INSERT INTO Members (MemberID, FirstName, LastName, Address, PhoneNumber, Email, MembershipDate) 
VALUES (145, 'Harper', 'Taylor', '14242 Pine Lane, Springfield', '555-5569', 'harpert@example.com', TO_DATE('2023-04-22', 'YYYY-MM-DD'));

-- Row 146
INSERT INTO Members (MemberID, FirstName, LastName, Address, PhoneNumber, Email, MembershipDate) 
VALUES (146, 'Jack', 'Anderson', '14343 Maple Lane, Springfield', '555-6670', 'jacka@example.com', TO_DATE('2022-12-10', 'YYYY-MM-DD'));

-- Row 147
INSERT INTO Members (MemberID, FirstName, LastName, Address, PhoneNumber, Email, MembershipDate) 
VALUES (147, 'Amelia', 'Roberts', '14444 Birch Avenue, Springfield', '555-7789', 'ameliar@example.com', TO_DATE('2023-06-13', 'YYYY-MM-DD'));

-- Row 148
INSERT INTO Members (MemberID, FirstName, LastName, Address, PhoneNumber, Email, MembershipDate) 
VALUES (148, 'Leo', 'Wilson', '14545 Cedar Street, Springfield', '555-8891', 'leowilson@example.com', TO_DATE('2020-01-10', 'YYYY-MM-DD'));

-- Row 149
INSERT INTO Members (MemberID, FirstName, LastName, Address, PhoneNumber, Email, MembershipDate) 
VALUES (149, 'Sophia', 'Clark', '14646 Oak Avenue, Springfield', '555-9902', 'sophiac@example.com', TO_DATE('2021-03-12', 'YYYY-MM-DD'));

-- Row 150
INSERT INTO Members (MemberID, FirstName, LastName, Address, PhoneNumber, Email, MembershipDate) 
VALUES (150, 'Benjamin', 'Scott', '14747 Pine Road, Springfield', '555-1012', 'benjamins@example.com', TO_DATE('2022-05-08', 'YYYY-MM-DD'));



-- Row 151
INSERT INTO Members (MemberID, FirstName, LastName, Address, PhoneNumber, Email, MembershipDate) 
VALUES (151, 'Aiden', 'Martinez', '14848 Maple Road, Springfield', '555-1124', 'aidenm@example.com', TO_DATE('2023-08-01', 'YYYY-MM-DD'));

-- Row 152
INSERT INTO Members (MemberID, FirstName, LastName, Address, PhoneNumber, Email, MembershipDate) 
VALUES (152, 'Mia', 'Lopez', '14949 Birch Avenue, Springfield', '555-2235', 'mial@example.com', TO_DATE('2022-07-20', 'YYYY-MM-DD'));

-- Row 153
INSERT INTO Members (MemberID, FirstName, LastName, Address, PhoneNumber, Email, MembershipDate) 
VALUES (153, 'Jacob', 'Rodriguez', '15050 Oak Street, Springfield', '555-3347', 'jacobr@example.com', TO_DATE('2021-09-18', 'YYYY-MM-DD'));

-- Row 154
INSERT INTO Members (MemberID, FirstName, LastName, Address, PhoneNumber, Email, MembershipDate) 
VALUES (154, 'Charlotte', 'Walker', '15151 Pine Lane, Springfield', '555-4458', 'charlottew@example.com', TO_DATE('2022-08-10', 'YYYY-MM-DD'));

-- Row 155
INSERT INTO Members (MemberID, FirstName, LastName, Address, PhoneNumber, Email, MembershipDate) 
VALUES (155, 'Zoe', 'Harris', '15252 Cedar Street, Springfield', '555-5560', 'zoeh@example.com', TO_DATE('2020-06-09', 'YYYY-MM-DD'));

-- Row 156
INSERT INTO Members (MemberID, FirstName, LastName, Address, PhoneNumber, Email, MembershipDate) 
VALUES (156, 'Oliver', 'Baker', '15353 Oak Lane, Springfield', '555-6671', 'oliverb@example.com', TO_DATE('2022-01-22', 'YYYY-MM-DD'));

-- Row 157
INSERT INTO Members (MemberID, FirstName, LastName, Address, PhoneNumber, Email, MembershipDate) 
VALUES (157, 'Harper', 'Gonzalez', '15454 Pine Avenue, Springfield', '555-7780', 'harperg@example.com', TO_DATE('2023-02-14', 'YYYY-MM-DD'));

-- Row 158
INSERT INTO Members (MemberID, FirstName, LastName, Address, PhoneNumber, Email, MembershipDate) 
VALUES (158, 'Ethan', 'Miller', '15555 Maple Road, Springfield', '555-8892', 'ethanm@example.com', TO_DATE('2020-11-30', 'YYYY-MM-DD'));

-- Row 159
INSERT INTO Members (MemberID, FirstName, LastName, Address, PhoneNumber, Email, MembershipDate) 
VALUES (159, 'Mason', 'Garcia', '15656 Cedar Lane, Springfield', '555-9903', 'masong@example.com', TO_DATE('2022-12-01', 'YYYY-MM-DD'));

-- Row 160
INSERT INTO Members (MemberID, FirstName, LastName, Address, PhoneNumber, Email, MembershipDate) 
VALUES (160, 'Liam', 'King', '15757 Birch Road, Springfield', '555-1013', 'liamk@example.com', TO_DATE('2021-04-22', 'YYYY-MM-DD'));

-- Row 161
INSERT INTO Members (MemberID, FirstName, LastName, Address, PhoneNumber, Email, MembershipDate) 
VALUES (161, 'Sophia', 'Wilson', '15858 Oak Road, Springfield', '555-1125', 'sophiaw@example.com', TO_DATE('2022-09-05', 'YYYY-MM-DD'));

-- Row 162
INSERT INTO Members (MemberID, FirstName, LastName, Address, PhoneNumber, Email, MembershipDate) 
VALUES (162, 'Ethan', 'Lopez', '15959 Pine Street, Springfield', '555-2236', 'ethanl@example.com', TO_DATE('2023-03-23', 'YYYY-MM-DD'));

-- Row 163
INSERT INTO Members (MemberID, FirstName, LastName, Address, PhoneNumber, Email, MembershipDate) 
VALUES (163, 'Amelia', 'Martinez', '16060 Maple Avenue, Springfield', '555-3348', 'ameliam@example.com', TO_DATE('2020-07-15', 'YYYY-MM-DD'));

-- Row 164
INSERT INTO Members (MemberID, FirstName, LastName, Address, PhoneNumber, Email, MembershipDate) 
VALUES (164, 'Lucas', 'Brown', '16161 Cedar Avenue, Springfield', '555-4459', 'lucasb@example.com', TO_DATE('2021-10-03', 'YYYY-MM-DD'));

-- Row 165
INSERT INTO Members (MemberID, FirstName, LastName, Address, PhoneNumber, Email, MembershipDate) 
VALUES (165, 'Chloe', 'Taylor', '16262 Oak Lane, Springfield', '555-5561', 'chloet@example.com', TO_DATE('2022-06-12', 'YYYY-MM-DD'));

-- Row 166
INSERT INTO Members (MemberID, FirstName, LastName, Address, PhoneNumber, Email, MembershipDate) 
VALUES (166, 'Aiden', 'Garcia', '16363 Pine Road, Springfield', '555-6672', 'aideng@example.com', TO_DATE('2020-12-20', 'YYYY-MM-DD'));

-- Row 167
INSERT INTO Members (MemberID, FirstName, LastName, Address, PhoneNumber, Email, MembershipDate) 
VALUES (167, 'Harper', 'Roberts', '16464 Maple Lane, Springfield', '555-7781', 'harperr@example.com', TO_DATE('2023-08-20', 'YYYY-MM-DD'));

-- Row 168
INSERT INTO Members (MemberID, FirstName, LastName, Address, PhoneNumber, Email, MembershipDate) 
VALUES (168, 'Mia', 'Harris', '16565 Oak Road, Springfield', '555-8893', 'miah@example.com', TO_DATE('2022-04-11', 'YYYY-MM-DD'));

-- Row 169
INSERT INTO Members (MemberID, FirstName, LastName, Address, PhoneNumber, Email, MembershipDate) 
VALUES (169, 'Zoe', 'Evans', '16666 Pine Lane, Springfield', '555-9904', 'zoee@example.com', TO_DATE('2021-09-29', 'YYYY-MM-DD'));

-- Row 170
INSERT INTO Members (MemberID, FirstName, LastName, Address, PhoneNumber, Email, MembershipDate) 
VALUES (170, 'Liam', 'Taylor', '16767 Maple Avenue, Springfield', '555-1014', 'liamt@example.com', TO_DATE('2023-02-22', 'YYYY-MM-DD'));

-- Row 171
INSERT INTO Members (MemberID, FirstName, LastName, Address, PhoneNumber, Email, MembershipDate) 
VALUES (171, 'Jacob', 'Walker', '16868 Birch Road, Springfield', '555-1126', 'jacobw@example.com', TO_DATE('2021-05-10', 'YYYY-MM-DD'));

-- Row 172
INSERT INTO Members (MemberID, FirstName, LastName, Address, PhoneNumber, Email, MembershipDate) 
VALUES (172, 'Amelia', 'Evans', '16969 Oak Street, Springfield', '555-2237', 'ameliae@example.com', TO_DATE('2023-01-17', 'YYYY-MM-DD'));

-- Row 173
INSERT INTO Members (MemberID, FirstName, LastName, Address, PhoneNumber, Email, MembershipDate) 
VALUES (173, 'Ethan', 'Taylor', '17070 Pine Avenue, Springfield', '555-3349', 'ethant@example.com', TO_DATE('2020-08-27', 'YYYY-MM-DD'));

-- Row 174
INSERT INTO Members (MemberID, FirstName, LastName, Address, PhoneNumber, Email, MembershipDate) 
VALUES (174, 'Sophia', 'King', '17171 Cedar Lane, Springfield', '555-4450', 'sophiak@example.com', TO_DATE('2021-06-23', 'YYYY-MM-DD'));

-- Row 175
INSERT INTO Members (MemberID, FirstName, LastName, Address, PhoneNumber, Email, MembershipDate) 
VALUES (175, 'Olivia', 'Nelson', '17272 Birch Avenue, Springfield', '555-5562', 'olivian@example.com', TO_DATE('2022-09-17', 'YYYY-MM-DD'));

-- Row 176
INSERT INTO Members (MemberID, FirstName, LastName, Address, PhoneNumber, Email, MembershipDate) 
VALUES (176, 'Ava', 'Brown', '17373 Oak Road, Springfield', '555-6673', 'avab@example.com', TO_DATE('2023-04-07', 'YYYY-MM-DD'));



-- Row 177
INSERT INTO Members (MemberID, FirstName, LastName, Address, PhoneNumber, Email, MembershipDate) 
VALUES (177, 'Mason', 'Mitchell', '17474 Pine Street, Springfield', '555-7782', 'masonm@example.com', TO_DATE('2022-03-11', 'YYYY-MM-DD'));

-- Row 178
INSERT INTO Members (MemberID, FirstName, LastName, Address, PhoneNumber, Email, MembershipDate) 
VALUES (178, 'Charlotte', 'Young', '17575 Cedar Avenue, Springfield', '555-8894', 'charlottery@example.com', TO_DATE('2021-07-04', 'YYYY-MM-DD'));

-- Row 179
INSERT INTO Members (MemberID, FirstName, LastName, Address, PhoneNumber, Email, MembershipDate) 
VALUES (179, 'Henry', 'Clark', '17676 Birch Street, Springfield', '555-9905', 'henryc@example.com', TO_DATE('2022-11-03', 'YYYY-MM-DD'));

-- Row 180
INSERT INTO Members (MemberID, FirstName, LastName, Address, PhoneNumber, Email, MembershipDate) 
VALUES (180, 'Isabella', 'Rodriguez', '17777 Oak Lane, Springfield', '555-1015', 'isabellar@example.com', TO_DATE('2023-02-01', 'YYYY-MM-DD'));

-- Row 181
INSERT INTO Members (MemberID, FirstName, LastName, Address, PhoneNumber, Email, MembershipDate) 
VALUES (181, 'Elijah', 'Walker', '17878 Pine Road, Springfield', '555-1127', 'elijahw@example.com', TO_DATE('2021-10-16', 'YYYY-MM-DD'));

-- Row 182
INSERT INTO Members (MemberID, FirstName, LastName, Address, PhoneNumber, Email, MembershipDate) 
VALUES (182, 'Scarlett', 'Martinez', '17979 Maple Avenue, Springfield', '555-2238', 'scarlettm@example.com', TO_DATE('2022-04-26', 'YYYY-MM-DD'));

-- Row 183
INSERT INTO Members (MemberID, FirstName, LastName, Address, PhoneNumber, Email, MembershipDate) 
VALUES (183, 'Maverick', 'Evans', '18080 Cedar Street, Springfield', '555-3340', 'mavericke@example.com', TO_DATE('2023-05-09', 'YYYY-MM-DD'));

-- Row 184
INSERT INTO Members (MemberID, FirstName, LastName, Address, PhoneNumber, Email, MembershipDate) 
VALUES (184, 'Ella', 'White', '18181 Oak Avenue, Springfield', '555-4451', 'ellaw@example.com', TO_DATE('2020-09-17', 'YYYY-MM-DD'));

-- Row 185
INSERT INTO Members (MemberID, FirstName, LastName, Address, PhoneNumber, Email, MembershipDate) 
VALUES (185, 'James', 'Jackson', '18282 Birch Lane, Springfield', '555-5563', 'jamesj@example.com', TO_DATE('2021-05-22', 'YYYY-MM-DD'));

-- Row 186
INSERT INTO Members (MemberID, FirstName, LastName, Address, PhoneNumber, Email, MembershipDate) 
VALUES (186, 'Harper', 'Lewis', '18383 Maple Lane, Springfield', '555-6674', 'harperl@example.com', TO_DATE('2023-07-29', 'YYYY-MM-DD'));

-- Row 187
INSERT INTO Members (MemberID, FirstName, LastName, Address, PhoneNumber, Email, MembershipDate) 
VALUES (187, 'Jack', 'Gonzalez', '18484 Oak Street, Springfield', '555-7783', 'jackg@example.com', TO_DATE('2021-12-13', 'YYYY-MM-DD'));

-- Row 188
INSERT INTO Members (MemberID, FirstName, LastName, Address, PhoneNumber, Email, MembershipDate) 
VALUES (188, 'Lucy', 'Hernandez', '18585 Pine Road, Springfield', '555-8895', 'lucyh@example.com', TO_DATE('2022-10-05', 'YYYY-MM-DD'));

-- Row 189
INSERT INTO Members (MemberID, FirstName, LastName, Address, PhoneNumber, Email, MembershipDate) 
VALUES (189, 'William', 'Kim', '18686 Cedar Avenue, Springfield', '555-9906', 'williamk@example.com', TO_DATE('2020-05-25', 'YYYY-MM-DD'));

-- Row 190
INSERT INTO Members (MemberID, FirstName, LastName, Address, PhoneNumber, Email, MembershipDate) 
VALUES (190, 'Benjamin', 'Lopez', '18787 Birch Avenue, Springfield', '555-1016', 'benjaminl@example.com', TO_DATE('2022-02-14', 'YYYY-MM-DD'));

-- Row 191
INSERT INTO Members (MemberID, FirstName, LastName, Address, PhoneNumber, Email, MembershipDate) 
VALUES (191, 'Carter', 'Martinez', '18888 Oak Lane, Springfield', '555-1128', 'carterm@example.com', TO_DATE('2021-09-22', 'YYYY-MM-DD'));

-- Row 192
INSERT INTO Members (MemberID, FirstName, LastName, Address, PhoneNumber, Email, MembershipDate) 
VALUES (192, 'Sophie', 'Allen', '18989 Maple Road, Springfield', '555-2239', 'sophiea@example.com', TO_DATE('2020-08-14', 'YYYY-MM-DD'));

-- Row 193
INSERT INTO Members (MemberID, FirstName, LastName, Address, PhoneNumber, Email, MembershipDate) 
VALUES (193, 'Isaac', 'Baker', '19090 Cedar Lane, Springfield', '555-3341', 'isaacb@example.com', TO_DATE('2023-01-25', 'YYYY-MM-DD'));

-- Row 194
INSERT INTO Members (MemberID, FirstName, LastName, Address, PhoneNumber, Email, MembershipDate) 
VALUES (194, 'Harley', 'Gonzalez', '19191 Oak Street, Springfield', '555-4452', 'harleyg@example.com', TO_DATE('2022-07-05', 'YYYY-MM-DD'));

-- Row 195
INSERT INTO Members (MemberID, FirstName, LastName, Address, PhoneNumber, Email, MembershipDate) 
VALUES (195, 'Grace', 'Hughes', '19292 Birch Road, Springfield', '555-5564', 'graceh@example.com', TO_DATE('2020-12-13', 'YYYY-MM-DD'));

-- Row 196
INSERT INTO Members (MemberID, FirstName, LastName, Address, PhoneNumber, Email, MembershipDate) 
VALUES (196, 'Leo', 'Carter', '19393 Oak Road, Springfield', '555-6675', 'leoc@example.com', TO_DATE('2023-09-19', 'YYYY-MM-DD'));

-- Row 197
INSERT INTO Members (MemberID, FirstName, LastName, Address, PhoneNumber, Email, MembershipDate) 
VALUES (197, 'Jack', 'Lee', '19494 Pine Lane, Springfield', '555-7784', 'jackl@example.com', TO_DATE('2021-03-30', 'YYYY-MM-DD'));

-- Row 198
INSERT INTO Members (MemberID, FirstName, LastName, Address, PhoneNumber, Email, MembershipDate) 
VALUES (198, 'Anna', 'King', '19595 Birch Avenue, Springfield', '555-8896', 'annak@example.com', TO_DATE('2022-01-19', 'YYYY-MM-DD'));

-- Row 199
INSERT INTO Members (MemberID, FirstName, LastName, Address, PhoneNumber, Email, MembershipDate) 
VALUES (199, 'Henry', 'Williams', '19696 Cedar Avenue, Springfield', '555-9907', 'henryw@example.com', TO_DATE('2020-11-01', 'YYYY-MM-DD'));

-- Row 200
INSERT INTO Members (MemberID, FirstName, LastName, Address, PhoneNumber, Email, MembershipDate) 
VALUES (200, 'Charlotte', 'Rodriguez', '19797 Oak Lane, Springfield', '555-1017', 'charlotter@example.com', TO_DATE('2023-03-18', 'YYYY-MM-DD'));

CREATE TABLE Borrow (
    BorrowID INT PRIMARY KEY,                    -- Unique identifier for each borrow record
    BookID INT,                                  -- Foreign key referencing Books table
    MemberID INT,                                -- Foreign key referencing Members table
    BorrowDate DATE,                             -- Date the book was borrowed
    DueDate DATE,                                -- Due date for returning the book
    ReturnDate DATE,                             -- Date the book was returned (nullable)
    CONSTRAINT FK_BookID FOREIGN KEY (BookID) REFERENCES Books(BookID),
    CONSTRAINT FK_MemberID FOREIGN KEY (MemberID) REFERENCES Members(MemberID)
);



-- Row 1
INSERT INTO Borrow (BorrowID, BookID, MemberID, BorrowDate, DueDate, ReturnDate)
VALUES (1, 12, 45, TO_DATE('2024-01-10', 'YYYY-MM-DD'), TO_DATE('2024-02-10', 'YYYY-MM-DD'), NULL);

-- Row 2
INSERT INTO Borrow (BorrowID, BookID, MemberID, BorrowDate, DueDate, ReturnDate)
VALUES (2, 35, 87, TO_DATE('2024-01-15', 'YYYY-MM-DD'), TO_DATE('2024-02-15', 'YYYY-MM-DD'), NULL);

-- Row 3
INSERT INTO Borrow (BorrowID, BookID, MemberID, BorrowDate, DueDate, ReturnDate)
VALUES (3, 45, 91, TO_DATE('2024-01-20', 'YYYY-MM-DD'), TO_DATE('2024-02-20', 'YYYY-MM-DD'), NULL);

-- Row 4
INSERT INTO Borrow (BorrowID, BookID, MemberID, BorrowDate, DueDate, ReturnDate)
VALUES (4, 88, 130, TO_DATE('2024-01-22', 'YYYY-MM-DD'), TO_DATE('2024-02-22', 'YYYY-MM-DD'), NULL);

-- Row 5
INSERT INTO Borrow (BorrowID, BookID, MemberID, BorrowDate, DueDate, ReturnDate)
VALUES (5, 120, 160, TO_DATE('2024-01-25', 'YYYY-MM-DD'), TO_DATE('2024-02-25', 'YYYY-MM-DD'), NULL);

-- Row 6
INSERT INTO Borrow (BorrowID, BookID, MemberID, BorrowDate, DueDate, ReturnDate)
VALUES (6, 150, 101, TO_DATE('2024-02-01', 'YYYY-MM-DD'), TO_DATE('2024-03-01', 'YYYY-MM-DD'), NULL);

-- Row 7
INSERT INTO Borrow (BorrowID, BookID, MemberID, BorrowDate, DueDate, ReturnDate)
VALUES (7, 200, 45, TO_DATE('2024-02-03', 'YYYY-MM-DD'), TO_DATE('2024-03-03', 'YYYY-MM-DD'), NULL);

-- Row 8
INSERT INTO Borrow (BorrowID, BookID, MemberID, BorrowDate, DueDate, ReturnDate)
VALUES (8, 220, 182, TO_DATE('2024-02-05', 'YYYY-MM-DD'), TO_DATE('2024-03-05', 'YYYY-MM-DD'), NULL);

-- Row 9
INSERT INTO Borrow (BorrowID, BookID, MemberID, BorrowDate, DueDate, ReturnDate)
VALUES (9, 245, 70, TO_DATE('2024-02-10', 'YYYY-MM-DD'), TO_DATE('2024-03-10', 'YYYY-MM-DD'), NULL);

-- Row 10
INSERT INTO Borrow (BorrowID, BookID, MemberID, BorrowDate, DueDate, ReturnDate)
VALUES (10, 267, 156, TO_DATE('2024-02-15', 'YYYY-MM-DD'), TO_DATE('2024-03-15', 'YYYY-MM-DD'), NULL);

-- Row 11
INSERT INTO Borrow (BorrowID, BookID, MemberID, BorrowDate, DueDate, ReturnDate)
VALUES (11, 289, 72, TO_DATE('2024-02-17', 'YYYY-MM-DD'), TO_DATE('2024-03-17', 'YYYY-MM-DD'), NULL);

-- Row 12
INSERT INTO Borrow (BorrowID, BookID, MemberID, BorrowDate, DueDate, ReturnDate)
VALUES (12, 314, 110, TO_DATE('2024-02-20', 'YYYY-MM-DD'), TO_DATE('2024-03-20', 'YYYY-MM-DD'), NULL);

-- Row 13
INSERT INTO Borrow (BorrowID, BookID, MemberID, BorrowDate, DueDate, ReturnDate)
VALUES (13, 350, 129, TO_DATE('2024-02-22', 'YYYY-MM-DD'), TO_DATE('2024-03-22', 'YYYY-MM-DD'), NULL);

-- Row 14
INSERT INTO Borrow (BorrowID, BookID, MemberID, BorrowDate, DueDate, ReturnDate)
VALUES (14, 378, 177, TO_DATE('2024-02-25', 'YYYY-MM-DD'), TO_DATE('2024-03-25', 'YYYY-MM-DD'), NULL);

-- Row 15
INSERT INTO Borrow (BorrowID, BookID, MemberID, BorrowDate, DueDate, ReturnDate)
VALUES (15, 325, 29, TO_DATE('2024-03-01', 'YYYY-MM-DD'), TO_DATE('2024-04-01', 'YYYY-MM-DD'), NULL);

-- Row 16
INSERT INTO Borrow (BorrowID, BookID, MemberID, BorrowDate, DueDate, ReturnDate)
VALUES (16, 23, 46, TO_DATE('2024-03-03', 'YYYY-MM-DD'), TO_DATE('2024-04-03', 'YYYY-MM-DD'), NULL);

-- Row 17
INSERT INTO Borrow (BorrowID, BookID, MemberID, BorrowDate, DueDate, ReturnDate)
VALUES (17, 56, 53, TO_DATE('2024-03-07', 'YYYY-MM-DD'), TO_DATE('2024-04-07', 'YYYY-MM-DD'), NULL);

-- Row 18
INSERT INTO Borrow (BorrowID, BookID, MemberID, BorrowDate, DueDate, ReturnDate)
VALUES (18, 68, 70, TO_DATE('2024-03-10', 'YYYY-MM-DD'), TO_DATE('2024-04-10', 'YYYY-MM-DD'), NULL);

-- Row 19
INSERT INTO Borrow (BorrowID, BookID, MemberID, BorrowDate, DueDate, ReturnDate)
VALUES (19, 89, 95, TO_DATE('2024-03-12', 'YYYY-MM-DD'), TO_DATE('2024-04-12', 'YYYY-MM-DD'), NULL);

-- Row 20
INSERT INTO Borrow (BorrowID, BookID, MemberID, BorrowDate, DueDate, ReturnDate)
VALUES (20, 112, 110, TO_DATE('2024-03-15', 'YYYY-MM-DD'), TO_DATE('2024-04-15', 'YYYY-MM-DD'), NULL);

-- Row 21
INSERT INTO Borrow (BorrowID, BookID, MemberID, BorrowDate, DueDate, ReturnDate)
VALUES (21, 130, 134, TO_DATE('2024-03-18', 'YYYY-MM-DD'), TO_DATE('2024-04-18', 'YYYY-MM-DD'), NULL);

-- Row 22
INSERT INTO Borrow (BorrowID, BookID, MemberID, BorrowDate, DueDate, ReturnDate)
VALUES (22, 155, 137, TO_DATE('2024-03-20', 'YYYY-MM-DD'), TO_DATE('2024-04-20', 'YYYY-MM-DD'), NULL);

-- Row 23
INSERT INTO Borrow (BorrowID, BookID, MemberID, BorrowDate, DueDate, ReturnDate)
VALUES (23, 177, 158, TO_DATE('2024-03-22', 'YYYY-MM-DD'), TO_DATE('2024-04-22', 'YYYY-MM-DD'), NULL);

-- Row 24
INSERT INTO Borrow (BorrowID, BookID, MemberID, BorrowDate, DueDate, ReturnDate)
VALUES (24, 182, 180, TO_DATE('2024-03-25', 'YYYY-MM-DD'), TO_DATE('2024-04-25', 'YYYY-MM-DD'), NULL);

-- Row 25
INSERT INTO Borrow (BorrowID, BookID, MemberID, BorrowDate, DueDate, ReturnDate)
VALUES (25, 201, 173, TO_DATE('2024-03-28', 'YYYY-MM-DD'), TO_DATE('2024-04-28', 'YYYY-MM-DD'), NULL);

-- Row 26
INSERT INTO Borrow (BorrowID, BookID, MemberID, BorrowDate, DueDate, ReturnDate)
VALUES (26, 220, 140, TO_DATE('2024-03-30', 'YYYY-MM-DD'), TO_DATE('2024-04-30', 'YYYY-MM-DD'), NULL);

-- Row 27
INSERT INTO Borrow (BorrowID, BookID, MemberID, BorrowDate, DueDate, ReturnDate)
VALUES (27, 232, 103, TO_DATE('2024-04-02', 'YYYY-MM-DD'), TO_DATE('2024-05-02', 'YYYY-MM-DD'), NULL);

-- Row 28
INSERT INTO Borrow (BorrowID, BookID, MemberID, BorrowDate, DueDate, ReturnDate)
VALUES (28, 245, 121, TO_DATE('2024-04-05', 'YYYY-MM-DD'), TO_DATE('2024-05-05', 'YYYY-MM-DD'), NULL);

-- Row 29
INSERT INTO Borrow (BorrowID, BookID, MemberID, BorrowDate, DueDate, ReturnDate)
VALUES (29, 278, 135, TO_DATE('2024-04-08', 'YYYY-MM-DD'), TO_DATE('2024-05-08', 'YYYY-MM-DD'), NULL);

-- Row 30
INSERT INTO Borrow (BorrowID, BookID, MemberID, BorrowDate, DueDate, ReturnDate)
VALUES (30, 290, 167, TO_DATE('2024-04-10', 'YYYY-MM-DD'), TO_DATE('2024-05-10', 'YYYY-MM-DD'), NULL);


-- Row 31
INSERT INTO Borrow (BorrowID, BookID, MemberID, BorrowDate, DueDate, ReturnDate)
VALUES (31, 300, 188, TO_DATE('2024-04-12', 'YYYY-MM-DD'), TO_DATE('2024-05-12', 'YYYY-MM-DD'), NULL);

-- Row 32
INSERT INTO Borrow (BorrowID, BookID, MemberID, BorrowDate, DueDate, ReturnDate)
VALUES (32, 317, 55, TO_DATE('2024-04-15', 'YYYY-MM-DD'), TO_DATE('2024-05-15', 'YYYY-MM-DD'), NULL);

-- Row 33
INSERT INTO Borrow (BorrowID, BookID, MemberID, BorrowDate, DueDate, ReturnDate)
VALUES (33, 325, 88, TO_DATE('2024-04-18', 'YYYY-MM-DD'), TO_DATE('2024-05-18', 'YYYY-MM-DD'), NULL);

-- Row 34
INSERT INTO Borrow (BorrowID, BookID, MemberID, BorrowDate, DueDate, ReturnDate)
VALUES (34, 338, 77, TO_DATE('2024-04-20', 'YYYY-MM-DD'), TO_DATE('2024-05-20', 'YYYY-MM-DD'), NULL);

-- Row 35
INSERT INTO Borrow (BorrowID, BookID, MemberID, BorrowDate, DueDate, ReturnDate)
VALUES (35, 350, 19, TO_DATE('2024-04-22', 'YYYY-MM-DD'), TO_DATE('2024-05-22', 'YYYY-MM-DD'), NULL);

-- Row 36
INSERT INTO Borrow (BorrowID, BookID, MemberID, BorrowDate, DueDate, ReturnDate)
VALUES (36, 368, 94, TO_DATE('2024-04-25', 'YYYY-MM-DD'), TO_DATE('2024-05-25', 'YYYY-MM-DD'), NULL);

-- Row 37
INSERT INTO Borrow (BorrowID, BookID, MemberID, BorrowDate, DueDate, ReturnDate)
VALUES (37, 372, 167, TO_DATE('2024-04-28', 'YYYY-MM-DD'), TO_DATE('2024-05-28', 'YYYY-MM-DD'), NULL);

-- Row 38
INSERT INTO Borrow (BorrowID, BookID, MemberID, BorrowDate, DueDate, ReturnDate)
VALUES (38, 385, 21, TO_DATE('2024-04-30', 'YYYY-MM-DD'), TO_DATE('2024-05-30', 'YYYY-MM-DD'), NULL);

-- Row 39
INSERT INTO Borrow (BorrowID, BookID, MemberID, BorrowDate, DueDate, ReturnDate)
VALUES (39, 390, 144, TO_DATE('2024-05-03', 'YYYY-MM-DD'), TO_DATE('2024-06-03', 'YYYY-MM-DD'), NULL);

-- Row 40
INSERT INTO Borrow (BorrowID, BookID, MemberID, BorrowDate, DueDate, ReturnDate)
VALUES (40, 376, 128, TO_DATE('2024-05-05', 'YYYY-MM-DD'), TO_DATE('2024-06-05', 'YYYY-MM-DD'), NULL);

-- Row 41
INSERT INTO Borrow (BorrowID, BookID, MemberID, BorrowDate, DueDate, ReturnDate)
VALUES (41, 5, 10, TO_DATE('2024-05-07', 'YYYY-MM-DD'), TO_DATE('2024-06-07', 'YYYY-MM-DD'), NULL);

-- Row 42
INSERT INTO Borrow (BorrowID, BookID, MemberID, BorrowDate, DueDate, ReturnDate)
VALUES (42, 33, 62, TO_DATE('2024-05-10', 'YYYY-MM-DD'), TO_DATE('2024-06-10', 'YYYY-MM-DD'), NULL);

-- Row 43
INSERT INTO Borrow (BorrowID, BookID, MemberID, BorrowDate, DueDate, ReturnDate)
VALUES (43, 47, 131, TO_DATE('2024-05-13', 'YYYY-MM-DD'), TO_DATE('2024-06-13', 'YYYY-MM-DD'), NULL);

-- Row 44
INSERT INTO Borrow (BorrowID, BookID, MemberID, BorrowDate, DueDate, ReturnDate)
VALUES (44, 55, 102, TO_DATE('2024-05-15', 'YYYY-MM-DD'), TO_DATE('2024-06-15', 'YYYY-MM-DD'), NULL);

-- Row 45
INSERT INTO Borrow (BorrowID, BookID, MemberID, BorrowDate, DueDate, ReturnDate)
VALUES (45, 78, 85, TO_DATE('2024-05-18', 'YYYY-MM-DD'), TO_DATE('2024-06-18', 'YYYY-MM-DD'), NULL);

-- Row 46
INSERT INTO Borrow (BorrowID, BookID, MemberID, BorrowDate, DueDate, ReturnDate)
VALUES (46, 109, 160, TO_DATE('2024-05-20', 'YYYY-MM-DD'), TO_DATE('2024-06-20', 'YYYY-MM-DD'), NULL);

-- Row 47
INSERT INTO Borrow (BorrowID, BookID, MemberID, BorrowDate, DueDate, ReturnDate)
VALUES (47, 112, 143, TO_DATE('2024-05-22', 'YYYY-MM-DD'), TO_DATE('2024-06-22', 'YYYY-MM-DD'), NULL);

-- Row 48
INSERT INTO Borrow (BorrowID, BookID, MemberID, BorrowDate, DueDate, ReturnDate)
VALUES (48, 125, 99, TO_DATE('2024-05-25', 'YYYY-MM-DD'), TO_DATE('2024-06-25', 'YYYY-MM-DD'), NULL);

-- Row 49
INSERT INTO Borrow (BorrowID, BookID, MemberID, BorrowDate, DueDate, ReturnDate)
VALUES (49, 145, 118, TO_DATE('2024-05-28', 'YYYY-MM-DD'), TO_DATE('2024-06-28', 'YYYY-MM-DD'), NULL);

-- Row 50
INSERT INTO Borrow (BorrowID, BookID, MemberID, BorrowDate, DueDate, ReturnDate)
VALUES (50, 157, 54, TO_DATE('2024-06-01', 'YYYY-MM-DD'), TO_DATE('2024-07-01', 'YYYY-MM-DD'), NULL);

-- Row 51
INSERT INTO Borrow (BorrowID, BookID, MemberID, BorrowDate, DueDate, ReturnDate)
VALUES (51, 173, 38, TO_DATE('2024-06-03', 'YYYY-MM-DD'), TO_DATE('2024-07-03', 'YYYY-MM-DD'), NULL);

-- Row 52
INSERT INTO Borrow (BorrowID, BookID, MemberID, BorrowDate, DueDate, ReturnDate)
VALUES (52, 187, 154, TO_DATE('2024-06-05', 'YYYY-MM-DD'), TO_DATE('2024-07-05', 'YYYY-MM-DD'), NULL);

-- Row 53
INSERT INTO Borrow (BorrowID, BookID, MemberID, BorrowDate, DueDate, ReturnDate)
VALUES (53, 200, 127, TO_DATE('2024-06-07', 'YYYY-MM-DD'), TO_DATE('2024-07-07', 'YYYY-MM-DD'), NULL);

-- Row 54
INSERT INTO Borrow (BorrowID, BookID, MemberID, BorrowDate, DueDate, ReturnDate)
VALUES (54, 210, 175, TO_DATE('2024-06-10', 'YYYY-MM-DD'), TO_DATE('2024-07-10', 'YYYY-MM-DD'), NULL);

-- Row 55
INSERT INTO Borrow (BorrowID, BookID, MemberID, BorrowDate, DueDate, ReturnDate)
VALUES (55, 222, 92, TO_DATE('2024-06-12', 'YYYY-MM-DD'), TO_DATE('2024-07-12', 'YYYY-MM-DD'), NULL);

-- Row 56
INSERT INTO Borrow (BorrowID, BookID, MemberID, BorrowDate, DueDate, ReturnDate)
VALUES (56, 240, 139, TO_DATE('2024-06-15', 'YYYY-MM-DD'), TO_DATE('2024-07-15', 'YYYY-MM-DD'), NULL);

-- Row 57
INSERT INTO Borrow (BorrowID, BookID, MemberID, BorrowDate, DueDate, ReturnDate)
VALUES (57, 250, 158, TO_DATE('2024-06-17', 'YYYY-MM-DD'), TO_DATE('2024-07-17', 'YYYY-MM-DD'), NULL);

-- Row 58
INSERT INTO Borrow (BorrowID, BookID, MemberID, BorrowDate, DueDate, ReturnDate)
VALUES (58, 265, 160, TO_DATE('2024-06-20', 'YYYY-MM-DD'), TO_DATE('2024-07-20', 'YYYY-MM-DD'), NULL);

-- Row 59
INSERT INTO Borrow (BorrowID, BookID, MemberID, BorrowDate, DueDate, ReturnDate)
VALUES (59, 279, 106, TO_DATE('2024-06-22', 'YYYY-MM-DD'), TO_DATE('2024-07-22', 'YYYY-MM-DD'), NULL);

-- Row 60
INSERT INTO Borrow (BorrowID, BookID, MemberID, BorrowDate, DueDate, ReturnDate)
VALUES (60, 295, 198, TO_DATE('2024-06-25', 'YYYY-MM-DD'), TO_DATE('2024-07-25', 'YYYY-MM-DD'), NULL);



-- Row 61
INSERT INTO Borrow (BorrowID, BookID, MemberID, BorrowDate, DueDate, ReturnDate)
VALUES (61, 310, 82, TO_DATE('2024-06-27', 'YYYY-MM-DD'), TO_DATE('2024-07-27', 'YYYY-MM-DD'), NULL);

-- Row 62
INSERT INTO Borrow (BorrowID, BookID, MemberID, BorrowDate, DueDate, ReturnDate)
VALUES (62, 325, 79, TO_DATE('2024-06-30', 'YYYY-MM-DD'), TO_DATE('2024-07-30', 'YYYY-MM-DD'), NULL);

-- Row 63
INSERT INTO Borrow (BorrowID, BookID, MemberID, BorrowDate, DueDate, ReturnDate)
VALUES (63, 340, 106, TO_DATE('2024-07-02', 'YYYY-MM-DD'), TO_DATE('2024-08-02', 'YYYY-MM-DD'), NULL);

-- Row 64
INSERT INTO Borrow (BorrowID, BookID, MemberID, BorrowDate, DueDate, ReturnDate)
VALUES (64, 350, 123, TO_DATE('2024-07-04', 'YYYY-MM-DD'), TO_DATE('2024-08-04', 'YYYY-MM-DD'), NULL);

-- Row 65
INSERT INTO Borrow (BorrowID, BookID, MemberID, BorrowDate, DueDate, ReturnDate)
VALUES (65, 368, 139, TO_DATE('2024-07-07', 'YYYY-MM-DD'), TO_DATE('2024-08-07', 'YYYY-MM-DD'), NULL);

-- Row 66
INSERT INTO Borrow (BorrowID, BookID, MemberID, BorrowDate, DueDate, ReturnDate)
VALUES (66, 375, 84, TO_DATE('2024-07-10', 'YYYY-MM-DD'), TO_DATE('2024-08-10', 'YYYY-MM-DD'), NULL);

-- Row 67
INSERT INTO Borrow (BorrowID, BookID, MemberID, BorrowDate, DueDate, ReturnDate)
VALUES (67, 380, 151, TO_DATE('2024-07-12', 'YYYY-MM-DD'), TO_DATE('2024-08-12', 'YYYY-MM-DD'), NULL);

-- Row 68
INSERT INTO Borrow (BorrowID, BookID, MemberID, BorrowDate, DueDate, ReturnDate)
VALUES (68, 390, 116, TO_DATE('2024-07-15', 'YYYY-MM-DD'), TO_DATE('2024-08-15', 'YYYY-MM-DD'), NULL);

-- Row 69
INSERT INTO Borrow (BorrowID, BookID, MemberID, BorrowDate, DueDate, ReturnDate)
VALUES (69, 300, 71, TO_DATE('2024-07-18', 'YYYY-MM-DD'), TO_DATE('2024-08-18', 'YYYY-MM-DD'), NULL);

-- Row 70
INSERT INTO Borrow (BorrowID, BookID, MemberID, BorrowDate, DueDate, ReturnDate)
VALUES (70, 5, 168, TO_DATE('2024-07-20', 'YYYY-MM-DD'), TO_DATE('2024-08-20', 'YYYY-MM-DD'), NULL);

-- Row 71
INSERT INTO Borrow (BorrowID, BookID, MemberID, BorrowDate, DueDate, ReturnDate)
VALUES (71, 20, 145, TO_DATE('2024-07-22', 'YYYY-MM-DD'), TO_DATE('2024-08-22', 'YYYY-MM-DD'), NULL);

-- Row 72
INSERT INTO Borrow (BorrowID, BookID, MemberID, BorrowDate, DueDate, ReturnDate)
VALUES (72, 35, 53, TO_DATE('2024-07-25', 'YYYY-MM-DD'), TO_DATE('2024-08-25', 'YYYY-MM-DD'), NULL);

-- Row 73
INSERT INTO Borrow (BorrowID, BookID, MemberID, BorrowDate, DueDate, ReturnDate)
VALUES (73, 49, 78, TO_DATE('2024-07-27', 'YYYY-MM-DD'), TO_DATE('2024-08-27', 'YYYY-MM-DD'), NULL);

-- Row 74
INSERT INTO Borrow (BorrowID, BookID, MemberID, BorrowDate, DueDate, ReturnDate)
VALUES (74, 60, 198, TO_DATE('2024-07-30', 'YYYY-MM-DD'), TO_DATE('2024-08-30', 'YYYY-MM-DD'), NULL);

-- Row 75
INSERT INTO Borrow (BorrowID, BookID, MemberID, BorrowDate, DueDate, ReturnDate)
VALUES (75, 72, 174, TO_DATE('2024-08-02', 'YYYY-MM-DD'), TO_DATE('2024-09-02', 'YYYY-MM-DD'), NULL);

-- Row 76
INSERT INTO Borrow (BorrowID, BookID, MemberID, BorrowDate, DueDate, ReturnDate)
VALUES (76, 85, 33, TO_DATE('2024-08-04', 'YYYY-MM-DD'), TO_DATE('2024-09-04', 'YYYY-MM-DD'), NULL);

-- Row 77
INSERT INTO Borrow (BorrowID, BookID, MemberID, BorrowDate, DueDate, ReturnDate)
VALUES (77, 95, 29, TO_DATE('2024-08-06', 'YYYY-MM-DD'), TO_DATE('2024-09-06', 'YYYY-MM-DD'), NULL);

-- Row 78
INSERT INTO Borrow (BorrowID, BookID, MemberID, BorrowDate, DueDate, ReturnDate)
VALUES (78, 105, 171, TO_DATE('2024-08-09', 'YYYY-MM-DD'), TO_DATE('2024-09-09', 'YYYY-MM-DD'), NULL);

-- Row 79
INSERT INTO Borrow (BorrowID, BookID, MemberID, BorrowDate, DueDate, ReturnDate)
VALUES (79, 115, 147, TO_DATE('2024-08-11', 'YYYY-MM-DD'), TO_DATE('2024-09-11', 'YYYY-MM-DD'), NULL);

-- Row 80
INSERT INTO Borrow (BorrowID, BookID, MemberID, BorrowDate, DueDate, ReturnDate)
VALUES (80, 125, 118, TO_DATE('2024-08-13', 'YYYY-MM-DD'), TO_DATE('2024-09-13', 'YYYY-MM-DD'), NULL);

-- Row 81
INSERT INTO Borrow (BorrowID, BookID, MemberID, BorrowDate, DueDate, ReturnDate)
VALUES (81, 135, 157, TO_DATE('2024-08-16', 'YYYY-MM-DD'), TO_DATE('2024-09-16', 'YYYY-MM-DD'), NULL);

-- Row 82
INSERT INTO Borrow (BorrowID, BookID, MemberID, BorrowDate, DueDate, ReturnDate)
VALUES (82, 140, 103, TO_DATE('2024-08-18', 'YYYY-MM-DD'), TO_DATE('2024-09-18', 'YYYY-MM-DD'), NULL);

-- Row 83
INSERT INTO Borrow (BorrowID, BookID, MemberID, BorrowDate, DueDate, ReturnDate)
VALUES (83, 150, 62, TO_DATE('2024-08-20', 'YYYY-MM-DD'), TO_DATE('2024-09-20', 'YYYY-MM-DD'), NULL);

-- Row 84
INSERT INTO Borrow (BorrowID, BookID, MemberID, BorrowDate, DueDate, ReturnDate)
VALUES (84, 160, 22, TO_DATE('2024-08-23', 'YYYY-MM-DD'), TO_DATE('2024-09-23', 'YYYY-MM-DD'), NULL);

-- Row 85
INSERT INTO Borrow (BorrowID, BookID, MemberID, BorrowDate, DueDate, ReturnDate)
VALUES (85, 170, 175, TO_DATE('2024-08-25', 'YYYY-MM-DD'), TO_DATE('2024-09-25', 'YYYY-MM-DD'), NULL);

-- Row 86
INSERT INTO Borrow (BorrowID, BookID, MemberID, BorrowDate, DueDate, ReturnDate)
VALUES (86, 180, 34, TO_DATE('2024-08-27', 'YYYY-MM-DD'), TO_DATE('2024-09-27', 'YYYY-MM-DD'), NULL);

-- Row 87
INSERT INTO Borrow (BorrowID, BookID, MemberID, BorrowDate, DueDate, ReturnDate)
VALUES (87, 190, 109, TO_DATE('2024-08-30', 'YYYY-MM-DD'), TO_DATE('2024-09-30', 'YYYY-MM-DD'), NULL);

-- Row 88
INSERT INTO Borrow (BorrowID, BookID, MemberID, BorrowDate, DueDate, ReturnDate)
VALUES (88, 200, 136, TO_DATE('2024-09-02', 'YYYY-MM-DD'), TO_DATE('2024-10-02', 'YYYY-MM-DD'), NULL);

-- Row 89
INSERT INTO Borrow (BorrowID, BookID, MemberID, BorrowDate, DueDate, ReturnDate)
VALUES (89, 210, 75, TO_DATE('2024-09-04', 'YYYY-MM-DD'), TO_DATE('2024-10-04', 'YYYY-MM-DD'), NULL);

-- Row 90
INSERT INTO Borrow (BorrowID, BookID, MemberID, BorrowDate, DueDate, ReturnDate)
VALUES (90, 220, 85, TO_DATE('2024-09-06', 'YYYY-MM-DD'), TO_DATE('2024-10-06', 'YYYY-MM-DD'), NULL);

-- Row 91
INSERT INTO Borrow (BorrowID, BookID, MemberID, BorrowDate, DueDate, ReturnDate)
VALUES (91, 230, 112, TO_DATE('2024-09-09', 'YYYY-MM-DD'), TO_DATE('2024-10-09', 'YYYY-MM-DD'), NULL);

-- Row 92
INSERT INTO Borrow (BorrowID, BookID, MemberID, BorrowDate, DueDate, ReturnDate)
VALUES (92, 240, 128, TO_DATE('2024-09-11', 'YYYY-MM-DD'), TO_DATE('2024-10-11', 'YYYY-MM-DD'), NULL);


-- Row 93
INSERT INTO Borrow (BorrowID, BookID, MemberID, BorrowDate, DueDate, ReturnDate)
VALUES (93, 250, 121, TO_DATE('2024-09-13', 'YYYY-MM-DD'), TO_DATE('2024-10-13', 'YYYY-MM-DD'), NULL);

-- Row 94
INSERT INTO Borrow (BorrowID, BookID, MemberID, BorrowDate, DueDate, ReturnDate)
VALUES (94, 260, 42, TO_DATE('2024-09-15', 'YYYY-MM-DD'), TO_DATE('2024-10-15', 'YYYY-MM-DD'), NULL);

-- Row 95
INSERT INTO Borrow (BorrowID, BookID, MemberID, BorrowDate, DueDate, ReturnDate)
VALUES (95, 270, 161, TO_DATE('2024-09-17', 'YYYY-MM-DD'), TO_DATE('2024-10-17', 'YYYY-MM-DD'), NULL);

-- Row 96
INSERT INTO Borrow (BorrowID, BookID, MemberID, BorrowDate, DueDate, ReturnDate)
VALUES (96, 266, 106, TO_DATE('2024-09-19', 'YYYY-MM-DD'), TO_DATE('2024-10-19', 'YYYY-MM-DD'), NULL);

-- Row 97
INSERT INTO Borrow (BorrowID, BookID, MemberID, BorrowDate, DueDate, ReturnDate)
VALUES (97, 290, 156, TO_DATE('2024-09-21', 'YYYY-MM-DD'), TO_DATE('2024-10-21', 'YYYY-MM-DD'), NULL);

-- Row 98
INSERT INTO Borrow (BorrowID, BookID, MemberID, BorrowDate, DueDate, ReturnDate)
VALUES (98, 300, 23, TO_DATE('2024-09-23', 'YYYY-MM-DD'), TO_DATE('2024-10-23', 'YYYY-MM-DD'), NULL);

-- Row 99
INSERT INTO Borrow (BorrowID, BookID, MemberID, BorrowDate, DueDate, ReturnDate)
VALUES (99, 310, 170, TO_DATE('2024-09-25', 'YYYY-MM-DD'), TO_DATE('2024-10-25', 'YYYY-MM-DD'), NULL);

-- Row 100
INSERT INTO Borrow (BorrowID, BookID, MemberID, BorrowDate, DueDate, ReturnDate)
VALUES (100, 320, 118, TO_DATE('2024-09-27', 'YYYY-MM-DD'), TO_DATE('2024-10-27', 'YYYY-MM-DD'), NULL);




CREATE TABLE Transaction (
    TransactionID INT PRIMARY KEY,  -- Unique identifier for each transaction
    MemberID INT,  -- Links to MemberID in the Members table
    TransactionDate DATE,  -- Date the transaction took place
    Amount DECIMAL(10, 2),  -- Amount involved in the transaction
    TransactionType VARCHAR(50) CHECK (TransactionType IN ('Membership Fee', 'Late Fine', 'Donation', 'Other')),  -- Type of transaction
    Description VARCHAR(255),  -- Brief description of the transaction
    FOREIGN KEY (MemberID) REFERENCES Members(MemberID)  -- Foreign key constraint to Members table
);


-- Row 1
INSERT INTO Transaction (TransactionID, MemberID, TransactionDate, Amount, TransactionType, Description)
VALUES (1, 1, TO_DATE('2024-01-15', 'YYYY-MM-DD'), 50.00, 'Membership Fee', 'Annual membership fee');

-- Row 2
INSERT INTO Transaction (TransactionID, MemberID, TransactionDate, Amount, TransactionType, Description)
VALUES (2, 2, TO_DATE('2024-01-17', 'YYYY-MM-DD'), 30.00, 'Late Fine', 'Late fee for overdue book');

-- Row 3
INSERT INTO Transaction (TransactionID, MemberID, TransactionDate, Amount, TransactionType, Description)
VALUES (3, 3, TO_DATE('2024-01-20', 'YYYY-MM-DD'), 100.00, 'Donation', 'Donation to the library');

-- Row 4
INSERT INTO Transaction (TransactionID, MemberID, TransactionDate, Amount, TransactionType, Description)
VALUES (4, 4, TO_DATE('2024-01-22', 'YYYY-MM-DD'), 15.00, 'Late Fine', 'Late fee for overdue book');

-- Row 5
INSERT INTO Transaction (TransactionID, MemberID, TransactionDate, Amount, TransactionType, Description)
VALUES (5, 5, TO_DATE('2024-01-23', 'YYYY-MM-DD'), 50.00, 'Membership Fee', 'Annual membership fee');

-- Row 6
INSERT INTO Transaction (TransactionID, MemberID, TransactionDate, Amount, TransactionType, Description)
VALUES (6, 6, TO_DATE('2024-01-25', 'YYYY-MM-DD'), 25.00, 'Other', 'Purchase of library supplies');

-- Row 7
INSERT INTO Transaction (TransactionID, MemberID, TransactionDate, Amount, TransactionType, Description)
VALUES (7, 7, TO_DATE('2024-01-27', 'YYYY-MM-DD'), 60.00, 'Membership Fee', 'Annual membership fee');

-- Row 8
INSERT INTO Transaction (TransactionID, MemberID, TransactionDate, Amount, TransactionType, Description)
VALUES (8, 8, TO_DATE('2024-02-01', 'YYYY-MM-DD'), 12.00, 'Late Fine', 'Late fee for overdue book');

-- Row 9
INSERT INTO Transaction (TransactionID, MemberID, TransactionDate, Amount, TransactionType, Description)
VALUES (9, 9, TO_DATE('2024-02-05', 'YYYY-MM-DD'), 20.00, 'Donation', 'Donation for new books');

-- Row 10
INSERT INTO Transaction (TransactionID, MemberID, TransactionDate, Amount, TransactionType, Description)
VALUES (10, 10, TO_DATE('2024-02-10', 'YYYY-MM-DD'), 40.00, 'Membership Fee', 'Annual membership fee');

-- Row 11
INSERT INTO Transaction (TransactionID, MemberID, TransactionDate, Amount, TransactionType, Description)
VALUES (11, 11, TO_DATE('2024-02-12', 'YYYY-MM-DD'), 5.00, 'Late Fine', 'Late fee for overdue book');

-- Row 12
INSERT INTO Transaction (TransactionID, MemberID, TransactionDate, Amount, TransactionType, Description)
VALUES (12, 12, TO_DATE('2024-02-14', 'YYYY-MM-DD'), 50.00, 'Membership Fee', 'Annual membership fee');

-- Row 13
INSERT INTO Transaction (TransactionID, MemberID, TransactionDate, Amount, TransactionType, Description)
VALUES (13, 13, TO_DATE('2024-02-16', 'YYYY-MM-DD'), 70.00, 'Late Fine', 'Late fee for overdue book');

-- Row 14
INSERT INTO Transaction (TransactionID, MemberID, TransactionDate, Amount, TransactionType, Description)
VALUES (14, 14, TO_DATE('2024-02-18', 'YYYY-MM-DD'), 50.00, 'Donation', 'Donation for library events');

-- Row 15
INSERT INTO Transaction (TransactionID, MemberID, TransactionDate, Amount, TransactionType, Description)
VALUES (15, 15, TO_DATE('2024-02-20', 'YYYY-MM-DD'), 30.00, 'Membership Fee', 'Annual membership fee');

-- Row 16
INSERT INTO Transaction (TransactionID, MemberID, TransactionDate, Amount, TransactionType, Description)
VALUES (16, 16, TO_DATE('2024-02-22', 'YYYY-MM-DD'), 10.00, 'Late Fine', 'Late fee for overdue book');

-- Row 17
INSERT INTO Transaction (TransactionID, MemberID, TransactionDate, Amount, TransactionType, Description)
VALUES (17, 17, TO_DATE('2024-02-24', 'YYYY-MM-DD'), 100.00, 'Membership Fee', 'Annual membership fee');

-- Row 18
INSERT INTO Transaction (TransactionID, MemberID, TransactionDate, Amount, TransactionType, Description)
VALUES (18, 18, TO_DATE('2024-02-26', 'YYYY-MM-DD'), 15.00, 'Late Fine', 'Late fee for overdue book');

-- Row 19
INSERT INTO Transaction (TransactionID, MemberID, TransactionDate, Amount, TransactionType, Description)
VALUES (19, 19, TO_DATE('2024-02-28', 'YYYY-MM-DD'), 50.00, 'Donation', 'Donation for library renovation');

-- Row 20
INSERT INTO Transaction (TransactionID, MemberID, TransactionDate, Amount, TransactionType, Description)
VALUES (20, 20, TO_DATE('2024-03-01', 'YYYY-MM-DD'), 25.00, 'Membership Fee', 'Annual membership fee');

-- Row 21
INSERT INTO Transaction (TransactionID, MemberID, TransactionDate, Amount, TransactionType, Description)
VALUES (21, 21, TO_DATE('2024-03-03', 'YYYY-MM-DD'), 30.00, 'Late Fine', 'Late fee for overdue book');

-- Row 22
INSERT INTO Transaction (TransactionID, MemberID, TransactionDate, Amount, TransactionType, Description)
VALUES (22, 22, TO_DATE('2024-03-05', 'YYYY-MM-DD'), 60.00, 'Membership Fee', 'Annual membership fee');

-- Row 23
INSERT INTO Transaction (TransactionID, MemberID, TransactionDate, Amount, TransactionType, Description)
VALUES (23, 23, TO_DATE('2024-03-07', 'YYYY-MM-DD'), 20.00, 'Donation', 'Donation for library events');

-- Row 24
INSERT INTO Transaction (TransactionID, MemberID, TransactionDate, Amount, TransactionType, Description)
VALUES (24, 24, TO_DATE('2024-03-09', 'YYYY-MM-DD'), 45.00, 'Membership Fee', 'Annual membership fee');

-- Row 25
INSERT INTO Transaction (TransactionID, MemberID, TransactionDate, Amount, TransactionType, Description)
VALUES (25, 25, TO_DATE('2024-03-11', 'YYYY-MM-DD'), 15.00, 'Late Fine', 'Late fee for overdue book');

-- Row 26
INSERT INTO Transaction (TransactionID, MemberID, TransactionDate, Amount, TransactionType, Description)
VALUES (26, 26, TO_DATE('2024-03-13', 'YYYY-MM-DD'), 50.00, 'Membership Fee', 'Annual membership fee');

-- Row 27
INSERT INTO Transaction (TransactionID, MemberID, TransactionDate, Amount, TransactionType, Description)
VALUES (27, 27, TO_DATE('2024-03-15', 'YYYY-MM-DD'), 25.00, 'Donation', 'Donation for library expansion');

-- Row 28
INSERT INTO Transaction (TransactionID, MemberID, TransactionDate, Amount, TransactionType, Description)
VALUES (28, 28, TO_DATE('2024-03-17', 'YYYY-MM-DD'), 40.00, 'Membership Fee', 'Annual membership fee');

-- Row 29
INSERT INTO Transaction (TransactionID, MemberID, TransactionDate, Amount, TransactionType, Description)
VALUES (29, 29, TO_DATE('2024-03-19', 'YYYY-MM-DD'), 5.00, 'Late Fine', 'Late fee for overdue book');

-- Row 30
INSERT INTO Transaction (TransactionID, MemberID, TransactionDate, Amount, TransactionType, Description)
VALUES (30, 30, TO_DATE('2024-03-21', 'YYYY-MM-DD'), 50.00, 'Membership Fee', 'Annual membership fee');

-- Row 31
INSERT INTO Transaction (TransactionID, MemberID, TransactionDate, Amount, TransactionType, Description)
VALUES (31, 31, TO_DATE('2024-03-23', 'YYYY-MM-DD'), 20.00, 'Donation', 'Donation for book restoration');

-- Row 32
INSERT INTO Transaction (TransactionID, MemberID, TransactionDate, Amount, TransactionType, Description)
VALUES (32, 32, TO_DATE('2024-03-25', 'YYYY-MM-DD'), 15.00, 'Late Fine', 'Late fee for overdue book');

-- Row 33
INSERT INTO Transaction (TransactionID, MemberID, TransactionDate, Amount, TransactionType, Description)
VALUES (33, 33, TO_DATE('2024-10-20', 'YYYY-MM-DD'), 100.00, 'Donation', 'Donated for library expansion');

-- Row 34
INSERT INTO Transaction (TransactionID, MemberID, TransactionDate, Amount, TransactionType, Description)
VALUES (34, 34, TO_DATE('2024-11-01', 'YYYY-MM-DD'), 40.00, 'Membership Fee', 'Payment for new membership');

-- Row 35
INSERT INTO Transaction (TransactionID, MemberID, TransactionDate, Amount, TransactionType, Description)
VALUES (35, 35, TO_DATE('2024-11-05', 'YYYY-MM-DD'), 80.00, 'Late Fine', 'Late return fine');

-- Row 36
INSERT INTO Transaction (TransactionID, MemberID, TransactionDate, Amount, TransactionType, Description)
VALUES (36, 36, TO_DATE('2024-11-08', 'YYYY-MM-DD'), 250.00, 'Donation', 'Major donation for library construction');

-- Row 37
INSERT INTO Transaction (TransactionID, MemberID, TransactionDate, Amount, TransactionType, Description)
VALUES (37, 37, TO_DATE('2024-11-10', 'YYYY-MM-DD'), 60.00, 'Membership Fee', 'Fee for membership renewal');

-- Row 38
INSERT INTO Transaction (TransactionID, MemberID, TransactionDate, Amount, TransactionType, Description)
VALUES (38, 38, TO_DATE('2024-11-15', 'YYYY-MM-DD'), 120.00, 'Donation', 'Library fund donation');

-- Row 39
INSERT INTO Transaction (TransactionID, MemberID, TransactionDate, Amount, TransactionType, Description)
VALUES (39, 39, TO_DATE('2024-11-20', 'YYYY-MM-DD'), 30.00, 'Late Fine', 'Late fee for returning books');

-- Row 40
INSERT INTO Transaction (TransactionID, MemberID, TransactionDate, Amount, TransactionType, Description)
VALUES (40, 40, TO_DATE('2024-11-25', 'YYYY-MM-DD'), 80.00, 'Late Fine', 'Late return fine for borrowed books');

rename Transaction to shiv2_transaction;
rename Members to shiv2_members;
rename books to shiv2_books;
rename author to shiv2_authors;

ALTER TABLE shiv2_Borrow
ADD Fine DECIMAL(10, 2);

RENAME MEMBER_ARCHIVE TO SHIV2_MEMBER_ARCHIVE;
CREATE TABLE MEMBER_ARCHIVE(memberid NUMBER,firstname VARCHAR(50),LASTNAME VARCHAR(50),DELETED_AT DATE DEFAULT SYSDATE)

DROP TABLE SHIV2_MEMBER_ARCHIVE;

CREATE TABLE SHIV2_BORROW_ARCHIVE(BORROWID NUMBER, BOOKID NUMBER,MEMBERID NUMBER, BORROWDATE DATE,DUEDATE DATE,RETURNDATE DATE,FINE NUMBER)



ALTER TABLE SHIV2_MEMBERS
ADD EXPIRYDATE DATE;

UPDATE SHIV2_MEMBERS
SET EXPIRYDATE = ADD_MONTHS(MEMBERSHIPDATE,12);
*/
