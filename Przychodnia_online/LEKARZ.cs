//------------------------------------------------------------------------------
// <auto-generated>
//    Ten kod źródłowy został wygenerowany na podstawie szablonu.
//
//    Ręczne modyfikacje tego pliku mogą spowodować nieoczekiwane zachowanie aplikacji.
//    Ręczne modyfikacje tego pliku zostaną zastąpione w przypadku ponownego wygenerowania kodu.
// </auto-generated>
//------------------------------------------------------------------------------

namespace Przychodnia_online
{
    using System;
    using System.Collections.Generic;
    
    public partial class LEKARZ
    {
        public LEKARZ()
        {
            this.RECEPTA = new HashSet<RECEPTA>();
            this.WIZYTA = new HashSet<WIZYTA>();
        }
    
        public decimal ID_LEKARZ { get; set; }
        public string LEK_IMIE { get; set; }
        public string LEK_NAZWISKO { get; set; }
        public System.DateTime LEK_DATAUR { get; set; }
        public string LEK_PESEL { get; set; }
        public decimal LEK_NRTELEFONU { get; set; }
        public string LEK_MAIL { get; set; }
        public string LEK_ADRES { get; set; }
        public string LEK_HASLO { get; set; }
    
        public virtual ICollection<RECEPTA> RECEPTA { get; set; }
        public virtual ICollection<WIZYTA> WIZYTA { get; set; }
    }
}
