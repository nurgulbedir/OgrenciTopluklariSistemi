
CREATE TABLE Organizatörler (
    Or_id INT PRIMARY KEY,           
    O_id INT,                        
    E_id INT,                        
    FOREIGN KEY (O_id) REFERENCES Uyeler(O_id),  
    FOREIGN KEY (E_id) REFERENCES Etkinlikler(E_id)  
);