﻿using System;
using System.Collections.Generic;

namespace agenda.Models
{
    public partial class Contato
    {
        public int Id { get; set; }
        public string Nome { get; set; }
        public string Email { get; set; }
        public string Telefone { get; set; }
    }
}
