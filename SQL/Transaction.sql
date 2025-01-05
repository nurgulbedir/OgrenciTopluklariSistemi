BEGIN TRANSACTION;

-- 1. Etkinlik ekleme
BEGIN TRY
    INSERT INTO Etkinlikler (E_id, E_ad, Ot_id)
    VALUES (101, 'Yazýlým Geliþtirme Atölyesi', 24); 

    -- 2. Topluluk üye sayýsýný güncelleme
    DECLARE @UyeSayisi INT;

    -- Bu topluluðun (Ot_id = 24) üye sayýsýný alýyoruz
    SELECT @UyeSayisi = COUNT(*) 
    FROM ToplulukUyeler 
    WHERE Ot_id = 24;

    -- Topluluklarýn üye sayýsýný güncelleme
    UPDATE OgrenciTopluluklari
    SET Uye_Sayisi = @UyeSayisi
    WHERE Ot_id = 24; -- Topluluðun üye sayýsý güncelleniyor

    -- 3. Ýþlem baþarýlýysa commit
    COMMIT;
    
END TRY
BEGIN CATCH
    -- Bir hata durumunda rollback yapýlýr
    ROLLBACK;

    -- Hata bilgisi döndürülür
    SELECT ERROR_MESSAGE() AS ErrorMessage;
END CATCH;