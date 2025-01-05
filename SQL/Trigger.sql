-- Etkinlik eklendiðinde, topluluðun üye sayýsýný güncelleyen trigger
CREATE TRIGGER UpdateCommunityMemberCount
ON Etkinlikler
AFTER INSERT
AS
BEGIN
    DECLARE @Ot_id INT;

    SELECT @Ot_id = Ot_id FROM INSERTED;

    UPDATE OgrenciTopluluklari
    SET Uye_Sayisi = (SELECT COUNT(*) FROM ToplulukUyeler WHERE Ot_id = @Ot_id)
    WHERE Ot_id = @Ot_id;
END;