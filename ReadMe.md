### Финальная контрольная работа
### "Система учёта для питомника"
#### Цель контрольной работы: 
- Организация системы учёта для питомника в ктором живут домашние и вьючные животные.

 #### Задачи контрольной работы: 
 1. Операционные системы и виртуализация (Linux):
    1. Использование команды cat в Linux:
       - Создать два текстовых файла: "Pets"(Домашние животные) и "Pack animals"(вьючные животные), используя команду `cat` 
       в терминале Linux. В первом файле перечислить собак, кошек и хомяков. Во втором — лошадей, верблюдов и ослов;

                aleksei@Aleksei:~$ cat > Pets.txt
                Dogs
                Cats
                Hamsters
                aleksei@Aleksei:~$ cat > PackAnimals.txt
                Horses
                Camels
                Donkeys

- Объединить содержимое этих двух файлов в один и просмотреть его содержимое;
 
         aleksei@Aleksei:~$ cat Pets.txt >> PackAnimals.txt`
         aleksei@Aleksei:~$ cat PackAnimals.txt`


- Переименовать получившийся файл в "Human Friends";
        
        aleksei@Aleksei:~$ mv PackAnimals.txt HumanFriends.txt
       
2.   Работа с директориями Linux:
    - Создать новую директорию и переместить туда файл "Human Friends".
       
 
       mkdir Документы/Итоговая Работа/
       mv HumanFriends.txt Документы/Итоговая Работа/
    
3. Работа с MySQL в Linux. “Установить MySQL на вашу вычислительную машину”:
    - Подключить дополнительный репозиторий MySQL и установить один из пакетов из этого репозитория.
   

        wget -c https://dev.mysql.com/get/mysql-apt-config_0.8.29-1_all.deb 
        sudo dpkg -i mysql-apt-config_0.8.29-1_all.deb
        sudo apt update
        sudo apt-get install mysql-server

4. Управление deb-пакетами:
    - Установить и затем удалить deb-пакет, используя команду `dpkg`.

`        

        sudo dpkg -i steam.deb
        apt --fix-broken install

        sudo dpkg -r steam-launcher`

5. История команд в терминале Ubuntu:
    - Сохранить и выложить историю ваших терминальных команд в Ubuntu.

   [https://github.com/ZelyaninAleksei/Final-control-work/tree/master/Task%201%20(%D0%9E%D0%BF%D0%B5%D1%80%D0%B0%D1%86%D0%B8%D0%BE%D0%BD%D0%BD%D1%8B%D0%B5%20%D1%81%D0%B8%D1%81%D1%82%D0%B5%D0%BC%D1%8B%20%D0%B8%20%D0%B2%D0%B8%D1%80%D1%82%D1%83%D0%B0%D0%BB%D0%B8%D0%B7%D0%B0%D1%86%D0%B8%D1%8F%20(Linux))](https://github.com/ZelyaninAleksei/Final-control-work/tree/master/Task1(Terminal%20command%20history))

 Final-control-work/Task 1 (Операционные системы и виртуализация (Linux))/


2. ООП:
   1. Диаграмма классов:
       - Создать диаграмму классов с родительским классом "Животные", и двумя подклассами: "Pets" и "Pack animals". 
       В составы классов которых в случае Pets войдут классы: собаки, кошки, хомяки, а в класс Pack animals войдут: 
       Лошади, верблюды и ослы). Каждый тип животных будет характеризоваться (например, имена, даты рождения, 
       выполняемые команды и т.д).

    https://github.com/ZelyaninAleksei/Final-control-work/tree/master/Task2(chart)

 3. Работа с MySQL:
    1. После создания диаграммы классов база данных "Human Friends" должна быть структурирована 
    в соответствии с этой диаграммой. Например, можно создать таблицы, которые будут соответствовать классам "Pets" и 
    "Pack animals", и в этих таблицах будут поля, которые характеризуют каждый тип животных (например, имена, даты рождения, 
    выполняемые команды и т.д.). 
    2. В ранее подключенном MySQL создать базу данных с названием "Human Friends".
       - Создать таблицы, соответствующие иерархии из вашей диаграммы классов.
       - Заполнить таблицы данными о животных, их командах и датами рождения.
       - Удалить записи о верблюдах и объединить таблицы лошадей и ослов.
       - Создать новую таблицу для животных в возрасте от 1 до 3 лет и вычислить их возраст с точностью до месяца.
       - Объединить все созданные таблицы в одну, сохраняя информацию о принадлежности к исходным таблицам.

4. ООП и JAVA:
    - Создать иерархию классов в Java, который будет повторять диаграмму классов созданную ранее (Диаграмма классов).

5. Программа-реестр домашних животных:
   https://github.com/ZelyaninAleksei/animalSystem
  
 
