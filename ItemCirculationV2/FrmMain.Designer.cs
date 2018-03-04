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
            this.dgvAction = new System.Windows.Forms.DataGridView();
            this.colItemName = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.colItemType = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.colRfid = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.colActionResult = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.btnStart = new System.Windows.Forms.Button();
            this.btnEnd = new System.Windows.Forms.Button();
            this.btnSubmit = new System.Windows.Forms.Button();
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
            this.dgvAction.Location = new System.Drawing.Point(118, 202);
            this.dgvAction.Name = "dgvAction";
            this.dgvAction.RowTemplate.Height = 23;
            this.dgvAction.Size = new System.Drawing.Size(442, 150);
            this.dgvAction.TabIndex = 0;
            // 
            // colItemName
            // 
            this.colItemName.HeaderText = "物品名称";
            this.colItemName.Name = "colItemName";
            // 
            // colItemType
            // 
            this.colItemType.HeaderText = "物品型号";
            this.colItemType.Name = "colItemType";
            // 
            // colRfid
            // 
            this.colRfid.HeaderText = "标识码";
            this.colRfid.Name = "colRfid";
            // 
            // colActionResult
            // 
            this.colActionResult.HeaderText = "操作结果";
            this.colActionResult.Name = "colActionResult";
            // 
            // btnStart
            // 
            this.btnStart.Location = new System.Drawing.Point(118, 47);
            this.btnStart.Name = "btnStart";
            this.btnStart.Size = new System.Drawing.Size(75, 23);
            this.btnStart.TabIndex = 1;
            this.btnStart.Text = "开始";
            this.btnStart.UseVisualStyleBackColor = true;
            // 
            // btnEnd
            // 
            this.btnEnd.Location = new System.Drawing.Point(299, 46);
            this.btnEnd.Name = "btnEnd";
            this.btnEnd.Size = new System.Drawing.Size(75, 23);
            this.btnEnd.TabIndex = 2;
            this.btnEnd.Text = "结束";
            this.btnEnd.UseVisualStyleBackColor = true;
            // 
            // btnSubmit
            // 
            this.btnSubmit.Location = new System.Drawing.Point(673, 407);
            this.btnSubmit.Name = "btnSubmit";
            this.btnSubmit.Size = new System.Drawing.Size(75, 23);
            this.btnSubmit.TabIndex = 3;
            this.btnSubmit.Text = "确认";
            this.btnSubmit.UseVisualStyleBackColor = true;
            // 
            // FrmMain
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 12F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(1089, 558);
            this.Controls.Add(this.btnSubmit);
            this.Controls.Add(this.btnEnd);
            this.Controls.Add(this.btnStart);
            this.Controls.Add(this.dgvAction);
            this.Name = "FrmMain";
            this.Text = "自助借还平台";
            ((System.ComponentModel.ISupportInitialize)(this.dgvAction)).EndInit();
            this.ResumeLayout(false);

        }

        #endregion

        private System.Windows.Forms.DataGridView dgvAction;
        private System.Windows.Forms.Button btnStart;
        private System.Windows.Forms.Button btnEnd;
        private System.Windows.Forms.Button btnSubmit;
        private System.Windows.Forms.DataGridViewTextBoxColumn colItemName;
        private System.Windows.Forms.DataGridViewTextBoxColumn colItemType;
        private System.Windows.Forms.DataGridViewTextBoxColumn colRfid;
        private System.Windows.Forms.DataGridViewTextBoxColumn colActionResult;
    }
}

