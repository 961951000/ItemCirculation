namespace ItemCirculationV2
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
            this.lblClass = new System.Windows.Forms.Label();
            this.lblGrade = new System.Windows.Forms.Label();
            this.lblName = new System.Windows.Forms.Label();
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
            this.dgvAction.Location = new System.Drawing.Point(12, 129);
            this.dgvAction.Name = "dgvAction";
            this.dgvAction.RowTemplate.Height = 23;
            this.dgvAction.Size = new System.Drawing.Size(984, 480);
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
            this.btnStart.Font = new System.Drawing.Font("宋体", 22.2F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(134)));
            this.btnStart.Location = new System.Drawing.Point(22, 40);
            this.btnStart.Name = "btnStart";
            this.btnStart.Size = new System.Drawing.Size(150, 46);
            this.btnStart.TabIndex = 1;
            this.btnStart.Text = "开始";
            this.btnStart.UseVisualStyleBackColor = true;
            this.btnStart.Click += new System.EventHandler(this.btnStart_Click);
            // 
            // btnEnd
            // 
            this.btnEnd.Font = new System.Drawing.Font("宋体", 22.2F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(134)));
            this.btnEnd.Location = new System.Drawing.Point(195, 40);
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
            this.rdoIn.Font = new System.Drawing.Font("宋体", 22.2F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(134)));
            this.rdoIn.Location = new System.Drawing.Point(360, 657);
            this.rdoIn.Name = "rdoIn";
            this.rdoIn.Size = new System.Drawing.Size(91, 34);
            this.rdoIn.TabIndex = 4;
            this.rdoIn.TabStop = true;
            this.rdoIn.Text = "借出";
            this.rdoIn.UseVisualStyleBackColor = true;
            // 
            // rdoOut
            // 
            this.rdoOut.AutoSize = true;
            this.rdoOut.Font = new System.Drawing.Font("宋体", 22.2F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(134)));
            this.rdoOut.Location = new System.Drawing.Point(527, 657);
            this.rdoOut.Name = "rdoOut";
            this.rdoOut.Size = new System.Drawing.Size(91, 34);
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
            this.lblTime.Font = new System.Drawing.Font("宋体", 26.25F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(134)));
            this.lblTime.Location = new System.Drawing.Point(945, 9);
            this.lblTime.Name = "lblTime";
            this.lblTime.Size = new System.Drawing.Size(51, 35);
            this.lblTime.TabIndex = 6;
            this.lblTime.Text = "60";
            // 
            // btnSubmit
            // 
            this.btnSubmit.Font = new System.Drawing.Font("宋体", 22.2F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(134)));
            this.btnSubmit.Location = new System.Drawing.Point(696, 625);
            this.btnSubmit.Name = "btnSubmit";
            this.btnSubmit.Size = new System.Drawing.Size(300, 92);
            this.btnSubmit.TabIndex = 7;
            this.btnSubmit.Text = "确认";
            this.btnSubmit.UseVisualStyleBackColor = true;
            this.btnSubmit.Click += new System.EventHandler(this.btnSubmit_Click);
            // 
            // lblClass
            // 
            this.lblClass.AutoSize = true;
            this.lblClass.Font = new System.Drawing.Font("宋体", 21.75F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(134)));
            this.lblClass.Location = new System.Drawing.Point(666, 74);
            this.lblClass.Name = "lblClass";
            this.lblClass.Size = new System.Drawing.Size(100, 29);
            this.lblClass.TabIndex = 13;
            this.lblClass.Text = "班级：";
            // 
            // lblGrade
            // 
            this.lblGrade.AutoSize = true;
            this.lblGrade.Font = new System.Drawing.Font("宋体", 21.75F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(134)));
            this.lblGrade.Location = new System.Drawing.Point(423, 74);
            this.lblGrade.Name = "lblGrade";
            this.lblGrade.Size = new System.Drawing.Size(100, 29);
            this.lblGrade.TabIndex = 11;
            this.lblGrade.Text = "年级：";
            // 
            // lblName
            // 
            this.lblName.AutoSize = true;
            this.lblName.Font = new System.Drawing.Font("宋体", 21.75F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(134)));
            this.lblName.Location = new System.Drawing.Point(423, 26);
            this.lblName.Name = "lblName";
            this.lblName.Size = new System.Drawing.Size(100, 29);
            this.lblName.TabIndex = 9;
            this.lblName.Text = "姓名：";
            // 
            // FrmMain
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 12F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(1008, 729);
            this.Controls.Add(this.lblClass);
            this.Controls.Add(this.lblGrade);
            this.Controls.Add(this.lblName);
            this.Controls.Add(this.btnSubmit);
            this.Controls.Add(this.lblTime);
            this.Controls.Add(this.rdoOut);
            this.Controls.Add(this.rdoIn);
            this.Controls.Add(this.btnEnd);
            this.Controls.Add(this.btnStart);
            this.Controls.Add(this.dgvAction);
            this.Name = "FrmMain";
            this.Text = "自助借还平台";
            this.WindowState = System.Windows.Forms.FormWindowState.Maximized;
            this.FormClosing += new System.Windows.Forms.FormClosingEventHandler(this.FrmMain_FormClosing);
            this.Load += new System.EventHandler(this.FrmMain_Load);
            this.Shown += new System.EventHandler(this.FrmMain_Shown);
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
        private System.Windows.Forms.Label lblClass;
        private System.Windows.Forms.Label lblGrade;
        private System.Windows.Forms.Label lblName;
    }
}

