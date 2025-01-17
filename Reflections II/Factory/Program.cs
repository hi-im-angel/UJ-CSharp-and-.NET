﻿using System;
using System.IO;
using System.Reflection;

namespace Factory
{
    public class Program
    {
        static string ParseFilePath(string filePath)
        {
            int pointer = filePath.Length;

            for (int i = filePath.Length - 1; i > 0; i--)
            {
                if (filePath[i] == '\\')
                {
                    return filePath.Substring(pointer);
                }
                pointer--;
            }
            return filePath;
        }
        
        public static void Main(string[] args)
        {

            for (int i = 0; i < args.Length; i++)
            {
                string filePath = args[i];
                
                //C:\\Users\\jansk\\OneDrive\\Documents\\UJ\\C# i .NET\\7\\Zadanie7Solution\\BeerProcessor\\bin\\Debug\\net5.0\\BeerProcessor.dll
                //C:\\Users\\jansk\\OneDrive\\Documents\\UJ\\C# i .NET\\7\\Zadanie7Solution\\SandwichProcessor\\bin\\Debug\\net5.0\\SandwichProcessor.dll
                if(ParseFilePath(filePath) == "SandwichProcessor.dll")
                {
                    string sandwichName = args[i+1];
                    FileInfo sandwichFile = new FileInfo(filePath); //plik z assembly
                    Assembly sandwichAssembly = Assembly.LoadFrom(sandwichFile.FullName); // Wczytywanie assembly. 
                    //Nastepnie musimy pobrac typ klasu jaki chemy wiciągnąc z assemlby. 
                    Type sandwichType = sandwichAssembly.GetType("SandwichProcessor.Sandwich");
                    PropertyInfo sandwichProperty = sandwichType.GetProperty("Tytul");
                    MethodInfo sandwichProcessMethod = sandwichType.GetMethod("Process");
                    object o = Activator.CreateInstance(sandwichType);
                    sandwichProperty.SetValue(o, sandwichName);
                    sandwichProcessMethod.Invoke(o, null); //wywoływanie
                }
            
                else if (ParseFilePath(filePath) == "BeerProcessor.dll")
                {
                    string beerName = args[i+1];
                    FileInfo beerFile = new FileInfo(filePath);
                    Assembly beerAssembly = Assembly.LoadFrom(beerFile.FullName); // Wczytywanie assembly. 
                    Type beerType = beerAssembly.GetType("BeerProcessor.Beer");
                    PropertyInfo beerProperty = beerType.GetProperty("Tytul");
                    MethodInfo beerProcessMethod = beerType.GetMethod("Process");
                    object o = Activator.CreateInstance(beerType);
                    beerProperty.SetValue(o, beerName);
                    beerProcessMethod.Invoke(o, null); //wywoływanie hello
                }
            }

            Console.ReadKey();
        }
    }
}
