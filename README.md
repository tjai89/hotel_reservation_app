
ТЕСТОВОЕ ЗАДАНИЕ 

Разработать сервис по бронированию гостиниц.

Сервис содержит в себе список гостиниц с номерами. Номера могут быть как свободными, так и забронированными. В данной задаче срок бронирования номеров и даты заездов не учитываем, просто либо номер свободен, либо нет. 
Продумать систему аутентификации и авторизации. Пользователи делятся на три типа: гость, аутентифицированный пользователь и администратор.


Как гость я могу:

   * видеть только главную страницу (ГС)
   * в шапке ГС видеть название сервиса и кнопки LogIn и SignUp
   * на ГС вижу список гостиниц отсортированных по кол-ву свободных номеров (от большего к меньшему)
   * у каждой гостиницы отображается число занятых и свободных номеров
   * при клике на гостиницу получаю редирект на форму аутентификации


Как аутентифицированный пользователь я могу:

    видеть главную страницу (ГС) с названием сервиса и кнопкой LogOut
    на ГС видеть список гостиниц, отсортированных по кол-ву свободных номеров (от большего к меньшему), у каждой гостиницы отображается число занятых и свободных номеров
    кликнуть на гостиницу, провалиться в неё и увидеть список номеров (cначала свободные номера, затем забронированные), забронированные номера помечаются как недоступные (например, просто надписью под ним)
    кликнуть на номер, провалиться в него, и там забронировать этот номер, кликнув по соответствующей кнопке (при условии, что номер свободен)
    находясь в разделе номера, видеть список комментариев, оставленных клиентами, которые в нем жили
    после бронирования номера я могу оставить комментарий про него
    могу отредактировать свой комментарий или удалить


Как администратор я могу:

    видеть главную страницу (ГС) с названием сервиса и кнопкой LogOut
    на ГС видеть список гостиниц, отсортированных по кол-ву свободных номеров (от большего к меньшему), у каждой гостиницы отображается число занятых и свободных номеров
    удалить гостиницу соответствующей кнопкой
    добавить новую гостиницу соответствующей кнопкой на ГС, при нажатии на кнопку открывается форма, в которой указывается название гостиницы и кол-во номеров
    снимать бронь с любого номера
    создавать / редактировать / удалять любые комментарии для любого номера
