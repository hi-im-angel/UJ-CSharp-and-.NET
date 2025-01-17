﻿using System;
using System.Collections.Generic;

namespace Zadanie5
{
    public interface IDiscountFromPeselComputer
    {
        bool HasDiscount(string pesel);
    }

    public class InvalidPeselException : Exception
    {
        public InvalidPeselException(string message) : base(message) { }
    }
    
    public class DiscountFromPeselComputer : IDiscountFromPeselComputer
    {
        public bool HasDiscount(string pesel)
        {
            try 
            {
                int year = Int32.Parse(pesel.Substring(0, 2));
                int Month = Int32.Parse(pesel.Substring(2, 2));
                int day = Int32.Parse(pesel.Substring(4, 2));
                DateTime birthDate = new DateTime(DateTime.Now.Year - year > 2000 ? 2000 + year : 1900 + year, Month, day);

                if (!Math.Floor(DateTime.Now.Subtract(birthDate).TotalDays / 365.2425).IsBetween(18, 65))
                {
                    return true;
                }

                return false;
            }
            catch (Exception e)
            {
                throw new InvalidPeselException(e.Message);
            }
        }
    }

    public static class ExtensionsNumeric
    {
        public static bool IsBetween<T>(this T item, T start, T end)
        {
            return Comparer<T>.Default.Compare(item, start) >= 0 && Comparer<T>.Default.Compare(item, end) <= 0;
        }
    }
    public class MyPESELDiscount : IDiscountFromPeselComputer {
        public bool HasDiscount(string PESEL)
        {
            if (string.IsNullOrEmpty(PESEL))
                throw new ArgumentNullException();

            var year = Int32.Parse(PESEL.Substring(0, 2));
            var month = Int32.Parse(PESEL.Substring(2, 2));
            var day = Int32.Parse(PESEL.Substring(4, 2));

            year = year >= 0 && year <= 21 ? year + 2000 : year + 1900;
            month = month/10 == 2 || month/10 == 3 ? month - 20 : month;

            var birthDate = new DateTime(year, month, day);
            var currentDate = DateTime.Now;

            if (currentDate.Year - birthDate.Year >= 18)
                return true;

            return false;
        }
    }
}