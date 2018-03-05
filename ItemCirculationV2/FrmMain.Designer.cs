﻿namespace ItemCirculationV2
{
    partial class FrmMain
    {
        /// <summary>
        /// Required designer variable.
        /// </summary>
        private System.ComponentModel.IContainer components = null;

        /// <summary>
        /// Clean up any resources being used.
        /// </summary>
        /// <param name="disposing">true if managed resources should be disposed; otherwise, false.</param>
        protected override void Dispose(bool disposing)
        {
            if (disposing && (components != null))
            {
                components.Dispose();
            }
            base.Dispose(disposing);
        }

        #region Windows Form Designer generated code

        /// <summary>
        /// Required method for Designer support - do not modify
        /// the contents of this method with the code editor.
        /// </summary>
        private void InitializeComponent()
        {
            this.components = new System.ComponentModel.Container();
            this.dgvAction = new System.Windows.Forms.DataGridView();
            this.colItemName = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.colItemType = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.colRfid = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.colActionResult = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.btnStart = new System.Windows.Forms.Button();
            this.btnEnd = new System.Windows.Forms.Button();
            this.rdoIn = new System.Windows.Forms.RadioButton();
            this.rdoOut = new System.Windows.Forms.RadioButton();
            this.tmrTimeOut = new System.Windows.Forms.Timer(this.components);
            this.lblTime = new System.Windows.Forms.Label();
            this.btnSubmit = new System.Windows.Forms.Button();
            this.label1 = new System.Windows.Forms.Label();
            this.lblName = new System.Windows.Forms.Label();
            this.label3 = new System.Windows.Forms.Label();
            this.lblGrade = new System.Windows.Forms.Label();
            this.label5 = new System.Windows.Forms.Label();
            this.lblClass = new System.Windows.Forms.Label();
            ((System.ComponentModel.ISupportInitialize)(this.dgvAction)).BeginInit();
            this.SuspendLayout();
            // 
            // dgvAction
            // 
            this.dgvAction.ColumnHeadersHeightSizeMode = System.Windows.Forms.DataGridViewColumnHeadersHeightSizeMode.AutoSize;
            this.dgvAction.Columns.AddRange(new System.Windows.Forms.DataGridViewColumn[] {
            this.colItemName,
            this.colItemType,
            this.colRfid,
            this.colActionResult});
            this.dgvAction.Location = new System.Drawing.Point(60, 127);
            this.dgvAction.Name = "dgvAction";
            this.dgvAction.RowTemplate.Height = 23;
            this.dgvAction.Size = new System.Drawing.Size(1042, 286);
            this.dgvAction.TabIndex = 0;
            this.dgvAction.CellPainting += new System.Windows.Forms.DataGridViewCellPaintingEventHandler(this.dgvAction_CellPainting);
            this.dgvAction.RowPostPaint += new System.Windows.Forms.DataGridViewRowPostPaintEventHandler(this.dgvAction_RowPostPaint);
            // 
            // colItemName
            // 
            this.colItemName.HeaderText = "物品名称";
            this.colItemName.Name = "colItemName";
            this.colItemName.Width = 250;
            // 
            // colItemType
            // 
            this.colItemType.HeaderText = "物品型号";
            this.colItemType.Name = "colItemType";
            this.colItemType.Width = 250;
            // 
            // colRfid
            // 
            this.colRfid.HeaderText = "标识码";
            this.colRfid.Name = "colRfid";
            this.colRfid.Width = 250;
            // 
            // colActionResult
            // 
            this.colActionResult.HeaderText = "操作结果";
            this.colActionResult.Name = "colActionResult";
            this.colActionResult.Width = 250;
            // 
            // btnStart
            // 
            this.btnStart.Font = new System.Drawing.Font("SimSun", 18F);
            this.btnStart.Location = new System.Drawing.Point(60, 46);
            this.btnStart.Name = "btnStart";
            this.btnStart.Size = new System.Drawing.Size(150, 46);
            this.btnStart.TabIndex = 1;
            this.btnStart.Text = "开始";
            this.btnStart.UseVisualStyleBackColor = true;
            this.btnStart.Click += new System.EventHandler(this.btnStart_Click);
            // 
            // btnEnd
            // 
            this.btnEnd.Font = new System.Drawing.Font("SimSun", 18F);
            this.btnEnd.Location = new System.Drawing.Point(255, 46);
            this.btnEnd.Name = "btnEnd";
            this.btnEnd.Size = new System.Drawing.Size(150, 46);
            this.btnEnd.TabIndex = 2;
            this.btnEnd.Text = "结束";
            this.btnEnd.UseVisualStyleBackColor = true;
            this.btnEnd.Click += new System.EventHandler(this.btnEnd_Click);
            // 
            // rdoIn
            // 
            this.rdoIn.AutoSize = true;
            this.rdoIn.Checked = true;
            this.rdoIn.Font = new System.Drawing.Font("SimSun", 18F);
            this.rdoIn.Location = new System.Drawing.Point(466, 473);
            this.rdoIn.Name = "rdoIn";
            this.rdoIn.Size = new System.Drawing.Size(76, 28);
            this.rdoIn.TabIndex = 4;
            this.rdoIn.TabStop = true;
            this.rdoIn.Text = "借出";
            this.rdoIn.UseVisualStyleBackColor = true;
            // 
            // rdoOut
            // 
            this.rdoOut.AutoSize = true;
            this.rdoOut.Font = new System.Drawing.Font("SimSun", 18F);
            this.rdoOut.Location = new System.Drawing.Point(633, 473);
            this.rdoOut.Name = "rdoOut";
            this.rdoOut.Size = new System.Drawing.Size(76, 28);
            this.rdoOut.TabIndex = 5;
            this.rdoOut.TabStop = true;
            this.rdoOut.Text = "归还";
            this.rdoOut.UseVisualStyleBackColor = true;
            // 
            // tmrTimeOut
            // 
            this.tmrTimeOut.Interval = 1000;
            this.tmrTimeOut.Tick += new System.EventHandler(this.tmrTimeOut_Tick);
            // 
            // lblTime
            // 
            this.lblTime.AutoSize = true;
            this.lblTime.Font = new System.Drawing.Font("SimSun", 18F);
            this.lblTime.Location = new System.Drawing.Point(1159, 46);
            this.lblTime.Name = "lblTime";
            this.lblTime.Size = new System.Drawing.Size(34, 24);
            this.lblTime.TabIndex = 6;
            this.lblTime.Text = "60";
            // 
            // btnSubmit
            // 
            this.btnSubmit.Font = new System.Drawing.Font("SimSun", 18F);
            this.btnSubmit.Location = new System.Drawing.Point(802, 441);
            this.btnSubmit.Name = "btnSubmit";
            this.btnSubmit.Size = new System.Drawing.Size(300, 92);
            this.btnSubmit.TabIndex = 7;
            this.btnSubmit.Text = "确认";
            this.btnSubmit.UseVisualStyleBackColor = true;
            this.btnSubmit.Click += new System.EventHandler(this.btnSubmit_Click);
            // 
            // label1
            // 
            this.label1.AutoSize = true;
            this.label1.Font = new System.Drawing.Font("SimSun", 18F);
            this.label1.Location = new System.Drawing.Point(466, 57);
            this.label1.Name = "label1";
            this.label1.Size = new System.Drawing.Size(82, 24);
            this.label1.TabIndex = 8;
            this.label1.Text = "姓名：";
            // 
            // lblName
            // 
            this.lblName.AutoSize = true;
            this.lblName.Font = new System.Drawing.Font("SimSun", 18F);
            this.lblName.Location = new System.Drawing.Point(533, 57);
            this.lblName.Name = "lblName";
            this.lblName.Size = new System.Drawing.Size(0, 24);
            this.lblName.TabIndex = 9;
            // 
            // label3
            // 
            this.label3.AutoSize = true;
            this.label3.Font = new System.Drawing.Font("SimSun", 18F);
            this.label3.Location = new System.Drawing.Point(721, 57);
            this.label3.Name = "label3";
            this.label3.Size = new System.Drawing.Size(82, 24);
            this.label3.TabIndex = 10;
            this.label3.Text = "年级：";
            // 
            // lblGrade
            // 
            this.lblGrade.AutoSize = true;
            this.lblGrade.Font = new System.Drawing.Font("SimSun", 18F);
            this.lblGrade.Location = new System.Drawing.Point(809, 57);
            this.lblGrade.Name = "lblGrade";
            this.lblGrade.Size = new System.Drawing.Size(0, 24);
            this.lblGrade.TabIndex = 11;
            // 
            // label5
            // 
            this.label5.AutoSize = true;
            this.label5.Font = new System.Drawing.Font("SimSun", 18F);
            this.label5.Location = new System.Drawing.Point(932, 57);
            this.label5.Name = "label5";
            this.label5.Size = new System.Drawing.Size(82, 24);
            this.label5.TabIndex = 12;
            this.label5.Text = "班级：";
            // 
            // lblClass
            // 
            this.lblClass.AutoSize = true;
            this.lblClass.Font = new System.Drawing.Font("SimSun", 18F);
            this.lblClass.Location = new System.Drawing.Point(1020, 57);
            this.lblClass.Name = "lblClass";
            this.lblClass.Size = new System.Drawing.Size(0, 24);
            this.lblClass.TabIndex = 13;
            // 
            // FrmMain
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 12F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(1264, 681);
            this.Controls.Add(this.lblClass);
            this.Controls.Add(this.label5);
            this.Controls.Add(this.lblGrade);
            this.Controls.Add(this.label3);
            this.Controls.Add(this.lblName);
            this.Controls.Add(this.label1);
            this.Controls.Add(this.btnSubmit);
            this.Controls.Add(this.lblTime);
            this.Controls.Add(this.rdoOut);
            this.Controls.Add(this.rdoIn);
            this.Controls.Add(this.btnEnd);
            this.Controls.Add(this.btnStart);
            this.Controls.Add(this.dgvAction);
            this.Name = "FrmMain";
            this.Text = "自助借还平台";
            this.FormClosing += new System.Windows.Forms.FormClosingEventHandler(this.FrmMain_FormClosing);
            this.Load += new System.EventHandler(this.FrmMain_Load);
            ((System.ComponentModel.ISupportInitialize)(this.dgvAction)).EndInit();
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private System.Windows.Forms.DataGridView dgvAction;
        private System.Windows.Forms.Button btnStart;
        private System.Windows.Forms.Button btnEnd;
        private System.Windows.Forms.RadioButton rdoIn;
        private System.Windows.Forms.RadioButton rdoOut;
        private System.Windows.Forms.Timer tmrTimeOut;
        private System.Windows.Forms.Label lblTime;
        private System.Windows.Forms.Button btnSubmit;
        private System.Windows.Forms.DataGridViewTextBoxColumn colItemName;
        private System.Windows.Forms.DataGridViewTextBoxColumn colItemType;
        private System.Windows.Forms.DataGridViewTextBoxColumn colRfid;
        private System.Windows.Forms.DataGridViewTextBoxColumn colActionResult;
        private System.Windows.Forms.Label label1;
        private System.Windows.Forms.Label lblName;
        private System.Windows.Forms.Label label3;
        private System.Windows.Forms.Label lblGrade;
        private System.Windows.Forms.Label label5;
        private System.Windows.Forms.Label lblClass;
    }
}

