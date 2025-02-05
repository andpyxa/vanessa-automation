﻿# language: ru
# encoding: utf-8
#parent ua:
@UA17_что_нового_в_версии
#parent uf:
@UF6_текстовые_и_видео_инструкции

@IgnoreOnCIMainBuild



Функциональность: Что нового в релизе 1.2.037

 
//Контекст:
	//Дано я запускаю SikuliX сервер

	
	

Сценарий: Что нового в релизе 1.2.037



	Дано видеовставка картинки 'ЛогоДляПервогоКадра' 'Привет! Я - Ванесса. В этом видео я расскажу, об основных изменениях в моём новом релизе: 1.2.037.'
	
	
	#[autodoc.ignorestep]	Расширение VAExtension, которое позволяет: #1194
	
	*Давайте пройдёмся по файлу истории и посмотрим, что там нового.
		Дано я нажимаю хоткей "r" "win"
		И Пауза 1
		И я набираю текст "code"
		Дано я нажимаю ENTER
		И я жду картинки "VSC открылся" в течение 10 секунд
		Дано я нажимаю хоткей "o" "ctrl"
		И я жду картинки "All files" в течение 10 секунд
		И я набираю текст "C:\Temp\Changelog.md"
		И я нажимаю ENTER
		И Пауза 1
		Дано я нажимаю хоткей "home" "ctrl"
		Затем клик на картинку "OpenPreviewVSCode"
		Затем клик на картинку "ЗакрытьФайлChangelog"
		Попытка
			Затем клик на картинку "ЗакрытьПустойФайлVSCode"
		Исключение	
		Затем клик на картинку "ТекстИстория"
		

		
	* В этом релизе очень много изменений, поэтому я расскажу только об основных.
		И Пауза 0.1
		И прокрутка текста редактора вниз для инструкции
		И Пауза 0.1
		И прокрутка текста редактора вниз для инструкции
		И Пауза 0.1
		И прокрутка текста редактора вниз для инструкции
		И Пауза 0.1
		И прокрутка текста редактора вниз для инструкции
		И Пауза 0.1
		И прокрутка текста редактора вниз для инструкции
		И Пауза 0.1
		И прокрутка текста редактора вниз для инструкции
		И Пауза 0.1
		И прокрутка текста редактора вниз для инструкции
		И Пауза 0.1
		И прокрутка текста редактора вниз для инструкции
		И Пауза 0.1
		И прокрутка текста редактора вниз для инструкции
		И Пауза 4


		
	
	#[autodoc.ignorestep]	
	И пауза 2
	
	
	//Новые возможности	
	
	И видеовставка 'Новое расширение'
	* Появился новый инструмент. Расширение ви ей экстеншен.
		Дано поиск строки в редакторе через буфер обмена 'Расширение VAExtension, которое позволяет: #1194'
	Дано текст диктора "Этот инструмент позволяет решать задачи, которые до этого не получалось решить. Такие как открытие окн^а все функции, ожидание завершения фоновых заданий."
	Дано текст диктора "Выполнение произвольного кода на стороне клиента тестирования и многих других."
	Дано текст диктора "Расширение можно скачать отдельно в разделе релизов на гитх^абе."

	И видеовставка 'Allure'
	* Появилась возможность прикреплять к отчету Allure данные печатных форм и макетов как в формате mxl так и в формате html.
		Дано поиск строки в редакторе через буфер обмена 'Allure. Возможность сохранять данные mxl файлов (отчетов, печатных форма) в формате HTML, чтобы их можно было удобно просматривать в браузере. #1195'
	* Появилась возможность прикреплять к отчету Allure файлы анимации, в которых показана разница между эталоном печатной формы и её текущим значением.
		Дано поиск строки в редакторе через буфер обмена 'Allure. Отображение файла эталона и текущего значения печатной форме в виде изображений (анимации) и их разницы. #1209'
	* Также теперь можно показать отчет Allure после локального запуска тестов на своём ПК. 
		Дано поиск строки в редакторе через буфер обмена 'Возможность показать отчет Allure по результату локального выполнения тестов. #1233'

	И видеовставка 'Автоинструкции'
	* Теперь можно подключать произвольный голосовой движок для озвучки текста. 
		Дано поиск строки в редакторе через буфер обмена 'Возможность подключать произвольный голосовой движок с помощью внешней обработки. #1222'
	Дано текст диктора "Это делается с помощью внешней обработки, которая реализует взаимодействие с сервисом генерации речи."
	* Также теперь можно озвучить произвольную строку в тексте фича файла диктором, в соответствии с текущими настройками генерации речи.
		Дано поиск строки в редакторе через буфер обмена 'Возможность озвучить произвольную строку в тексте фича файла диктором. Есть иконка во всплывающем окошке редактора плюс есть команда с хоткеем Alt+S #1284'
	* Ещё можно включить специальный режим, когда во время выполнения сценария диктор будет озвучивать ход выполнения шагов.
		Дано поиск строки в редакторе через буфер обмена 'Возможность озвучивать выполнения сценария диктором во время обычного запуска. #1274'
	Дано текст диктора "Это позволит упростить отладку во время создания ^авто инструкций."


	И видеовставка 'UI Automation'
	* Теперь Vanessa умеет использовать механизм Windows, который называется UI Automation.
		Дано поиск строки в редакторе через буфер обмена 'Поддержка работы механизма UI Automation. #1246 Спасибо @lintest'
	Дано текст диктора "Этот механизм позволяет искать произвольные пол^я, кнопки, элементы любых окон, причём не только один эс, а любых приложений, и взаимодействовать с ними."
	Дано текст диктора "Также его можно использовать для создания качественных автоинструкций в 1С, используя тонкий или толстый клиент."
	И видеовставка "Спасибо Денису Кандрашину за эту, и множество других доработок!"


	И видеовставка 'Клиент тестирования'
	* Появилась возможность перезапускать клиент тестирования автоматически в случае, если его не получилось запустить.
		Дано поиск строки в редакторе через буфер обмена 'Возможность запустить сеанс клиента тестирования повторно, если процесс не клиента тестирования не запустился. #1245'
	Дано текст диктора "Это бывает полезно тогда, когда например, сервер лицензирования разово не выдал лицензию сеансу 1С."


	И видеовставка 'Расширение языка Gherkin'
	Дано текст диктора "В этом релизе были расширены возможности языка сценариев. "
	* Появилась новая секция, где можно объявлять статические или динамически вычисляемые переменные.
		Дано поиск строки в редакторе через буфер обмена 'Расширение синтаксиса языка Gherkin. Новая секция в фиче - Переменные #1278 Спасибо @lintest'
	* Также теперь выражения в фигурных скобках будут автоматически вычисляться.
		Дано поиск строки в редакторе через буфер обмена 'Расширение синтаксиса языка Gherkin. В параметрах шагов можно использовать символы \{\} для вычисления выражений #1279 Спасибо @lintest'


	И видеовставка 'jUnit'
	* Появилась возможность прикреплять скринш^оты к отчету в формате jUnit.
		Дано поиск строки в редакторе через буфер обмена 'Возможность прикладывать скриншоты в формате отчетов junit #1162 Спасибо @KrapivinAndrey'
	Дано текст диктора "Это позволит расширить возможности данного формата отчета о прохождении тестов."
	И видеовставка "Спасибо Андрею Крапивину за эту доработку!"


	И видеовставка 'Состояние формы клиента тестирования'
	* Появилась возможность сохранить состояние текущей формы клиента тестирования в файл или сразу состояние всех форм в файл.
		Дано я нажимаю хоткей "f" "ctrl"
		И я помещаю в буфер обмена строку 'Возможность сохранить состояние текущей формы клиента тестирования в файл mxl. #1229'
		Дано я нажимаю хоткей "v" "ctrl"
		Дано я нажимаю хоткей "f" "ctrl"
		И я помещаю в буфер обмена строку 'Возможность сохранить состояние всех форм клиента тестирования в файл mxl. #1229'
		Дано я нажимаю хоткей "v" "ctrl"
	Дано текст диктора "Это даёт возможность сравнить сериализованное значение формы, которое было получено при локальном запуске с значением из системы непрерывного тестирования."
	Дано текст диктора "Что опять даёт новые возможности для быстрого расследования причин падения тестов."

	* Также появилась возможность сравнить состояние текущего фича файла, открытого в редакторе, с другим фича файлом, чтобы посмотреть изменения.
		Дано поиск строки в редакторе через буфер обмена 'Возможность сравнить текущий фича файл с произвольным файлом #1220'
	* Была выполнена работа по универсализации параметров Vanessa Automation. Теперь параметры, которые раньше можно было передать только в командной строке можно также передать и в json файле VAParams.
		Дано поиск строки в редакторе через буфер обмена 'Универсализация работы с параметрами из VAParams. #1254 Спасибо @nixel2007 '
	Дано текст диктора "Подробности смотрите в разделе документации на гитх^абе."
	И видеовставка "Спасибо Ник^ите Грызлову за работу по этой задаче!"
	* Появилась поддержка кликов по гиперссылкам в редакторе. Теперь можно открывать объекты базы данных или выполнять переход к секции переменных.
		Дано поиск строки в редакторе через буфер обмена 'При клике в редакторе по гиперссылке вида e1cib/data/Справочник.Номенклатура?ref=81534cedfb43b6d111ebca83d636a512 открывать форму объекта из базы. #1275'
	* В табло переменных теперь показывается более подробная информация о значениях переменных, включая сложные типы, такие как Структуры, Массивы и так далее.
		Дано поиск строки в редакторе через буфер обмена 'Показывать в табло переменных содержимое Структур, Соответствий и Массивов. #1293'


	Дано текст диктора "Ещё были исправлены ошибки и сделано много других полезных доработок."
	И видеовставка "Подробности, как обычно, можно найти в файле Changelog.MD"
	
								
	Дано текст диктора "На этом всё. Подписывайтесь, ставьте лайки, до новых встреч!"
	Дано видеовставка "Ванесса! Тесты - есть!"
	
	#[autodoc.ignorestep]
	И я закрываю текстовый редактор
	
					