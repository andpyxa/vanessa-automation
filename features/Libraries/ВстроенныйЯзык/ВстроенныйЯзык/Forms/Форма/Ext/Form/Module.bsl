﻿//начало текста модуля
&НаКлиенте
Перем Ванесса;

&НаКлиенте
// Структура, в которой хранится состояние сценария между выполнением шагов. Очищается перед выполнением каждого сценария.
Перем Контекст Экспорт;
 
&НаКлиенте
// Структура, в которой можно хранить служебные данные между запусками сценариев. Существует, пока открыта форма Vanessa-Behavior.
Перем КонтекстСохраняемый Экспорт;


&НаКлиенте
Функция ДобавитьШагВМассивТестов(МассивТестов,Снипет,ИмяПроцедуры,ПредставлениеТеста = Неопределено,Транзакция = Неопределено,Параметр = Неопределено)
	Структура = Новый Структура;
	Структура.Вставить("Снипет",Снипет);
	Структура.Вставить("ИмяПроцедуры",ИмяПроцедуры);
	Структура.Вставить("ИмяПроцедуры",ИмяПроцедуры);
	Структура.Вставить("ПредставлениеТеста",ПредставлениеТеста);
	Структура.Вставить("Транзакция",Транзакция);
	Структура.Вставить("Параметр",Параметр);
	МассивТестов.Добавить(Структура);
КонецФункции

&НаКлиенте
Функция ПолучитьСписокТестов(КонтекстФреймворкаBDD) Экспорт
	Ванесса = КонтекстФреймворкаBDD;
	
	ВсеТесты = Новый Массив;

	//описание параметров
	//Ванесса.ДобавитьШагВМассивТестов(ВсеТесты,Снипет,ИмяПроцедуры,ПредставлениеТеста,ОписаниеШага,ТипШага,Транзакция,Параметр);
	
	Ванесса.ДобавитьШагВМассивТестов(ВсеТесты,"ВыражениеВнутреннегоЯзыкаИстинно(Парам01)","ВыражениеВнутреннегоЯзыкаИстинно","И выражение внутреннего языка 'Выражение' Истинно","Позволяет проверить произвольное выражение встроенного языка.","Встроенный язык");
	Ванесса.ДобавитьШагВМассивТестов(ВсеТесты,"ЯЗапоминаюЗначениеВыраженияВПеременную(Парам01,Парам02)","ЯЗапоминаюЗначениеВыраженияВПеременную","И Я запоминаю значение выражения 'ВыражениеВстроенногоЯзыка' в переменную ""ИмяПеременной""","Позволяет сохранить в переменную Контекст произвольное выражение встроенного языка","Встроенный язык");
	Ванесса.ДобавитьШагВМассивТестов(ВсеТесты,"ЯЗапоминаюЗначениеВыраженияВПеременнуюГлобально(Парам01,Парам02)","ЯЗапоминаюЗначениеВыраженияВПеременнуюГлобально","И Я запоминаю значение выражения 'ВыражениеВстроенногоЯзыка' в переменную ""ИмяПеременной"" глобально","Позволяет сохранить в переменную КонтекстСохраняемый произвольное выражение встроенного языка","Встроенный язык.Устаревшее");
	Ванесса.ДобавитьШагВМассивТестов(ВсеТесты,"ЗатемЯВыполняюКодВстроенногоЯзыка(ТабПарам)","ЗатемЯВыполняюКодВстроенногоЯзыка","И затем я выполняю код встроенного языка" + Символы.ПС + "	| 'Сообщить(""Hellow world."")' |");
	Ванесса.ДобавитьШагВМассивТестов(ВсеТесты,"ЯВыполняюКодВстроенногоЯзыка(ТабПарам)","ЯВыполняюКодВстроенногоЯзыка","И я выполняю код встроенного языка" + Символы.ПС + "	| 'Сообщить(""Hellow world."")' |","Позволяет выполнить произвольный код на встроенном языке. Код передаётся через таблицу Gherkin.","Встроенный язык");
	Ванесса.ДобавитьШагВМассивТестов(ВсеТесты,"ЯВыполняюКодВстроенногоЯзыкаНаСервере(ТабПарам)","ЯВыполняюКодВстроенногоЯзыкаНаСервере","И я выполняю код встроенного языка на сервере" + Символы.ПС + "	| 'Сообщить(""Hellow world."")' |","Позволяет выполнить произвольный код на встроенном языке на сервере. При этом можно вызвать метод Объект(), чтобы обратиться к объекту VA. Код передаётся через таблицу Gherkin.","Встроенный язык");
	Ванесса.ДобавитьШагВМассивТестов(ВсеТесты,"ЯВыполняюКодВстроенногоЯзыкаНаСервереБезКонтекста(ТабПарам)","ЯВыполняюКодВстроенногоЯзыкаНаСервереБезКонтекста","И я выполняю код встроенного языка на сервере без контекста" + Символы.ПС + "	| 'Сообщить(""Hellow world."")' |","Позволяет выполнить произвольный код на встроенном языке на сервере без контекста. Код передаётся через таблицу Gherkin.","Встроенный язык");
	Ванесса.ДобавитьШагВМассивТестов(ВсеТесты,"ЯЗапоминаюСтрокуВПеременную(Парам01,Парам02)","ЯЗапоминаюСтрокуВПеременную","И я запоминаю строку ""НужнаяСтрока"" в переменную ""ИмяПеременной""","Запоминает значение строки в переменную.","Встроенный язык");

	Возврат ВсеТесты;
КонецФункции

&НаКлиенте
Процедура ПередНачаломСценария() Экспорт
КонецПроцедуры

&НаКлиенте
Процедура ПередОкончаниемСценария() Экспорт
КонецПроцедуры

&НаКлиенте
Функция Контекст() Экспорт
	Возврат Ванесса;
КонецФункции	 

&НаКлиенте
Функция Context() Экспорт
	Возврат Ванесса;
КонецФункции	 

&НаКлиенте
//И выражение внутреннего языка "Контекст.КоличествоНачальноеПлюсОдин - Контекст.КоличествоНачальное = 1" Истинно
//@ВыражениеВнутреннегоЯзыкаИстинно(Парам01)
Процедура ВыражениеВнутреннегоЯзыкаИстинно(Выражение) Экспорт
	Попытка
		ЗначениеВыражения = Ванесса.ВычислитьВнутреннееВыражение(Выражение);
	Исключение
		ЗначениеВыражения = Выражение;
	КонецПопытки;
	
	Если ЗначениеВыражения <> Истина Тогда
		ТекстСообщения = Ванесса.ПолучитьТекстСообщенияПользователю("Выражение <%1> оказалось равно <%2>, а ожидали <%3>.");
		ТекстСообщения = СтрЗаменить(ТекстСообщения,"%1",Выражение);
		ТекстСообщения = СтрЗаменить(ТекстСообщения,"%2",ЗначениеВыражения);
		ТекстСообщения = СтрЗаменить(ТекстСообщения,"%3",Строка(Истина));
		ВызватьИсключение ТекстСообщения;
	КонецЕсли;	 
КонецПроцедуры

&НаКлиенте
//И Я запоминаю выражение внутреннего языка "Ванесса.ПолучитьМассивPIDОкон1С().Количество()" в переменную "КоличествоНачальноеПлюсОдинВторойРаз"
//@ЯЗапоминаюЗначениеВыраженияВПеременную(Парам01,Парам02)
Процедура ЯЗапоминаюЗначениеВыраженияВПеременную(Знач Выражение,ИмяПеременной) Экспорт
	Попытка
		ЗначениеВыражения = Ванесса.ВычислитьВнутреннееВыражение(Выражение);
	Исключение
		Сообщить(ОписаниеОшибки());
		ЗначениеВыражения = Выражение;
	КонецПопытки;
	Ванесса.СохранитьЗначениеПеременнойВКонтекст(ИмяПеременной,ЗначениеВыражения);
КонецПроцедуры

&НаКлиенте
//И Я запоминаю выражение внутреннего языка "Ванесса.ПолучитьМассивPIDОкон1С().Количество()" в переменную "КоличествоНачальноеПлюсОдинВторойРаз" глобально
//@ЯЗапоминаюЗначениеВыраженияВПеременнуюГлобально(Парам01,Парам02)
Процедура ЯЗапоминаюЗначениеВыраженияВПеременнуюГлобально(Выражение,ИмяПеременной) Экспорт
	Попытка
		ЗначениеВыражения = Ванесса.ВычислитьВнутреннееВыражение(Выражение);
	Исключение
		ЗначениеВыражения = Выражение;
	КонецПопытки;
	
	Попытка
		КонтекстСохраняемый.Вставить(ИмяПеременной,ЗначениеВыражения);
	Исключение
		Ванесса.СохранитьЗначениеВКонтекстСохраняемый(ИмяПеременной,ЗначениеВыражения);
	КонецПопытки;
КонецПроцедуры

&НаКлиенте
//И я выполняю код встроенного языка
//@ЯВыполняюКодВстроенногоЯзыка(ТабПарам)
Процедура ЯВыполняюКодВстроенногоЯзыка(ТабПарам) Экспорт
	ЗатемЯВыполняюКодВстроенногоЯзыка(ТабПарам);
КонецПроцедуры

&НаКлиенте
//И затем я выполняю код встроенного языка
//@ЗатемЯВыполняюКодВстроенногоЯзыка(ТабПарам)
Процедура ЗатемЯВыполняюКодВстроенногоЯзыка(ТабПарам) Экспорт
	Текст = "";
	Для Каждого СтрокаТабПарам Из ТабПарам Цикл
		Текст = Текст + СтрокаТабПарам.Кол1;
		Если СтрокаТабПарам.Свойство("Кол2") Тогда
			Текст = Текст + СтрокаТабПарам.Кол2;
		КонецЕсли;
		Если СтрокаТабПарам.Свойство("Кол3") Тогда
			Текст = Текст + СтрокаТабПарам.Кол3;
		КонецЕсли;
		Если СтрокаТабПарам.Свойство("Кол4") Тогда
			Текст = Текст + СтрокаТабПарам.Кол4;
		КонецЕсли;
		Если СтрокаТабПарам.Свойство("Кол5") Тогда
			Текст = Текст + СтрокаТабПарам.Кол5;
		КонецЕсли;
		Если СтрокаТабПарам.Свойство("Кол6") Тогда
			Текст = Текст + СтрокаТабПарам.Кол6;
		КонецЕсли;
		Если СтрокаТабПарам.Свойство("Кол7") Тогда
			Текст = Текст + СтрокаТабПарам.Кол7;
		КонецЕсли;		
		Текст = Текст + Символы.ПС;
	КонецЦикла;	
	
	Выполнить(Текст);
КонецПроцедуры

&НаСервереБезКонтекста
Процедура ЯВыполняюКодВстроенногоЯзыкаНаСервереСервер(Текст)
	Выполнить(Текст);
КонецПроцедуры 

&НаКлиенте
//И я выполняю код встроенного языка на сервере без контекста
//@ЯВыполняюКодВстроенногоЯзыкаНаСервереБезКонтекста(ТабПарам)
Процедура ЯВыполняюКодВстроенногоЯзыкаНаСервереБезКонтекста(ТабПарам) Экспорт
	Текст = "";
	Для Каждого СтрокаТабПарам Из ТабПарам Цикл
		Текст = Текст + СтрокаТабПарам.Кол1 + Символы.ПС;
	КонецЦикла;	
	
	ЯВыполняюКодВстроенногоЯзыкаНаСервереСервер(Текст);
КонецПроцедуры

&НаКлиенте
//И я выполняю код встроенного языка на сервере
//@ЯВыполняюКодВстроенногоЯзыкаНаСервере(ТабПарам)
Процедура ЯВыполняюКодВстроенногоЯзыкаНаСервере(ТабПарам) Экспорт
	Текст = "";
	Для Каждого СтрокаТабПарам Из ТабПарам Цикл
		Текст = Текст + СтрокаТабПарам.Кол1 + Символы.ПС;
	КонецЦикла;	
	
	Ванесса.ЯВыполняюКодВстроенногоЯзыкаНаСервереСервер(Текст);
КонецПроцедуры

&НаКлиенте
//И я запоминаю строку "НужнаяСтрока" в переменную "ИмяПеременной"
//@ЯЗапоминаюСтрокуВПеременную(Парам01,Парам02)
Процедура ЯЗапоминаюСтрокуВПеременную(НужнаяСтрока,ИмяПеременной) Экспорт
	Попытка
		Ванесса.СохранитьЗначениеПеременнойВКонтекст(ИмяПеременной,НужнаяСтрока);
	Исключение
		ТекстСообщения = Ванесса.ПолучитьТекстСообщенияПользователю("Не получилось сохранить строку <%1> в переменную <%2>.");
		ТекстСообщения = СтрЗаменить(ТекстСообщения,"%1",НужнаяСтрока);
		ТекстСообщения = СтрЗаменить(ТекстСообщения,"%2",ИмяПеременной);
		ВызватьИсключение ТекстСообщения;
	КонецПопытки;
КонецПроцедуры
