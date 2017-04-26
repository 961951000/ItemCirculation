﻿using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;
using ItemCirculation.Views.Loan;
using ItemCirculation.Views.Return;

namespace ItemCirculation
{
    public partial class FrmMain : Form
    {
        public FrmMain()
        {
            InitializeComponent();
        }

        private void FrmMain_Load(object sender, EventArgs e)
        {

        }
        /// <summary>
        /// 借书
        /// </summary>
        private void button1_Click(object sender, EventArgs e)
        {
            var son = new FrmLoanBegin { Owner = this };
            this.Hide();
            son.Show();
        }
        /// <summary>
        /// 还书
        /// </summary>
        private void button2_Click(object sender, EventArgs e)
        {
            var son = new FrmReturnBegin { Owner = this };
            this.Hide();
            son.Show();
        }
    }
}
