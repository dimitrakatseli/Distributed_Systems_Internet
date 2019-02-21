-- User Dummy Values
INSERT INTO User VALUES ('admin', 'passadmin', 'admin');
INSERT INTO User VALUES ('johndohn', 'passjohndohn', 'comprepre');
INSERT INTO User VALUES ('mariasmith', 'passmariasmith', 'secretary');
INSERT INTO User VALUES ('it21518', '1997', 'student');

-- Internship Dummy Values
INSERT INTO Internship VALUES (
    'Google', 'larry@google.com', 'Larry Page', 3, 'AI', 'approved');
INSERT INTO Internship VALUES (
    'Facebook', 'mark@facebook.com', 'Mark Zuckenberg', 5, 'Customer Surveilance', 'approved');
INSERT INTO Internship VALUES (
    'Microsoft', 'bill@microsoft.com', 'Bill Gates', 10, 'DevOps', 'rejected');
    
-- Student Dummy Values
INSERT INTO Student VALUES (
    'it215120', 'Giorgos', 'Georgiou', 8.25, 2015, 5, 'approved', 'Facebook');
INSERT INTO Student VALUES (
    'it216134', 'Ilias', 'Iliou', 5.18, 2016, 4, 'pending', 'Google');
INSERT INTO Student VALUES (
    'it217178', 'Stavros', 'Stavrou', 9.1, 2017, 0, 'rejected', 'Microsoft');
INSERT INTO Student VALUES (
    'it21518', 'Dimitra', 'Katseli', 8.25, 2015, 2, 'approved', 'Facebook');    

-- Application Dummy Values
INSERT INTO Application VALUES ('it215120', 'Facebook', 'approved');
INSERT INTO Application VALUES ('it216134', 'Google', 'pending');
INSERT INTO Application VALUES ('it217178', 'Microsoft', 'rejected');
