#Использовать "model"

Процедура ПриНачалеРаботыСистемы()
	ИспользоватьСтатическиеФайлы();
	ИспользоватьМаршруты("ОпределениеМаршрутов");
	// МенеджерБазДанных.Инициализировать();
КонецПроцедуры


Процедура ОпределениеМаршрутов(КоллекцияМаршрутов)
	КоллекцияМаршрутов.Добавить("ГлавнаяСтраница", "{controller=home}/{action=index}");
	КоллекцияМаршрутов.Добавить("ОбщийМаршрут", "{controller}/{action}");
	КоллекцияМаршрутов.Добавить("СписокПоХранилищу", "{repo}/{controller}/{action=index}");
	ПараметрыМаршрута = Новый Соответствие;
	ПараметрыМаршрута.Вставить("action", "element");
	КоллекцияМаршрутов.Добавить("ЭлементыПоХранилищу", "{repo}/{controller}/{id?}", ПараметрыМаршрута);
КонецПроцедуры