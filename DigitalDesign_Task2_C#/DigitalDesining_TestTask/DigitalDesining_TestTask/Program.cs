using System;
using System.IO;
using System.Collections.Generic;
using System.Linq;


namespace DigitalDesining_TestTask
{
    class Program
    {

        static void Main(string[] args)
        {
           
            try
            { 
                 Console.WriteLine("Укажите путь к файлу");
                 string? file = Console.ReadLine();
                var res = Calc($"{file}");
                foreach (var pair in res)
                    Console.WriteLine("{0} : {1}", pair.Key, pair.Value);
              


                Console.ReadLine();
            


        static Dictionary<string, int> Calc(string filePath)
            {
                var res = new Dictionary<string, int>();

                    foreach (var line in File.ReadLines(filePath))
                        foreach (var word in line.Split(';', ' ', ',', '-', '.', '_', '\0').Skip(1))
                    {
                        var count = 0;
                        res.TryGetValue(word, out count);
                        res[word] = count + 1;
                    }

                return res;
            }

        }
            catch
            {
                Console.WriteLine(" Файл не найден");
            }


        }
    }
}
