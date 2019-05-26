Create Trigger Discounts
After Insert On Contributor
For Each Row
--When New.GPA> 3.3 AND New.GPA <= 3.6
Begin
    Insert into Vet values(New.sID, ‘Stanford’, ‘geology’, null);
    Insert into Apply values(New.sID, ‘MIT’, ‘biology’, null);
End;