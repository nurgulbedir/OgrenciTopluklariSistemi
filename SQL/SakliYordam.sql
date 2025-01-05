-- Üye eklemek için saklý yordam
CREATE PROCEDURE AddMemberToCommunity
    @O_id INT,  
    @Ot_id INT  
AS
BEGIN
    INSERT INTO ToplulukUyeler (Ot_id, O_id)
    VALUES (@Ot_id, @O_id);
    UPDATE OgrenciTopluluklari
    SET Uye_Sayisi = (SELECT COUNT(*) FROM ToplulukUyeler WHERE Ot_id = @Ot_id)
    WHERE Ot_id = @Ot_id;
END;