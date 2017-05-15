namespace ItemCirculationManagementBackground.Views.User
{
    partial class FrmUpdateUser
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
            this.txtCardCode16 = new System.Windows.Forms.TextBox();
            this.lblClassName = new System.Windows.Forms.Label();
            this.cmbClassName = new System.Windows.Forms.ComboBox();
            this.cmbGradeName = new System.Windows.Forms.ComboBox();
            this.lblGradeName = new System.Windows.Forms.Label();
            this.btnCancel = new System.Windows.Forms.Button();
            this.btnSubmit = new System.Windows.Forms.Button();
            this.txtName = new System.Windows.Forms.TextBox();
            this.txtStudentCode = new System.Windows.Forms.TextBox();
            this.txtCardCode10 = new System.Windows.Forms.TextBox();
            this.lblName = new System.Windows.Forms.Label();
            this.lblStudentCode = new System.Windows.Forms.Label();
            this.lblCardCode = new System.Windows.Forms.Label();
            this.SuspendLayout();
            // 
            // txtCardCode16
            // 
            this.txtCardCode16.Location = new System.Drawing.Point(120, 54);
            this.txtCardCode16.Name = "txtCardCode16";
            this.txtCardCode16.ReadOnly = true;
            this.txtCardCode16.Size = new System.Drawing.Size(100, 21);
            this.txtCardCode16.TabIndex = 33;
            // 
            // lblClassName
            // 
            this.lblClassName.AutoSize = true;
            this.lblClassName.Location = new System.Drawing.Point(55, 166);
            this.lblClassName.Name = "lblClassName";
            this.lblClassName.Size = new System.Drawing.Size(65, 12);
            this.lblClassName.TabIndex = 32;
            this.lblClassName.Text = "班    级：";
            // 
            // cmbClassName
            // 
            this.cmbClassName.AutoCompleteMode = System.Windows.Forms.AutoCompleteMode.Append;
            this.cmbClassName.FormattingEnabled = true;
            this.cmbClassName.Location = new System.Drawing.Point(120, 163);
            this.cmbClassName.Name = "cmbClassName";
            this.cmbClassName.Size = new System.Drawing.Size(121, 20);
            this.cmbClassName.TabIndex = 31;
            // 
            // cmbGradeName
            // 
            this.cmbGradeName.AutoCompleteMode = System.Windows.Forms.AutoCompleteMode.Append;
            this.cmbGradeName.FormattingEnabled = true;
            this.cmbGradeName.Location = new System.Drawing.Point(120, 136);
            this.cmbGradeName.Name = "cmbGradeName";
            this.cmbGradeName.Size = new System.Drawing.Size(121, 20);
            this.cmbGradeName.TabIndex = 30;
            this.cmbGradeName.SelectedIndexChanged += new System.EventHandler(this.cmbGradeName_SelectedIndexChanged);
            // 
            // lblGradeName
            // 
            this.lblGradeName.AutoSize = true;
            this.lblGradeName.Location = new System.Drawing.Point(55, 139);
            this.lblGradeName.Name = "lblGradeName";
            this.lblGradeName.Size = new System.Drawing.Size(65, 12);
            this.lblGradeName.TabIndex = 29;
            this.lblGradeName.Text = "年    级：";
            // 
            // btnCancel
            // 
            this.btnCancel.Location = new System.Drawing.Point(169, 207);
            this.btnCancel.Name = "btnCancel";
            this.btnCancel.Size = new System.Drawing.Size(75, 23);
            this.btnCancel.TabIndex = 28;
            this.btnCancel.Text = "取消";
            this.btnCancel.UseVisualStyleBackColor = true;
            this.btnCancel.Click += new System.EventHandler(this.btnCancel_Click);
            // 
            // btnSubmit
            // 
            this.btnSubmit.Location = new System.Drawing.Point(40, 208);
            this.btnSubmit.Name = "btnSubmit";
            this.btnSubmit.Size = new System.Drawing.Size(75, 23);
            this.btnSubmit.TabIndex = 27;
            this.btnSubmit.Text = "提交";
            this.btnSubmit.UseVisualStyleBackColor = true;
            this.btnSubmit.Click += new System.EventHandler(this.btnSubmit_Click);
            // 
            // txtName
            // 
            this.txtName.Location = new System.Drawing.Point(120, 111);
            this.txtName.Name = "txtName";
            this.txtName.Size = new System.Drawing.Size(100, 21);
            this.txtName.TabIndex = 26;
            // 
            // txtStudentCode
            // 
            this.txtStudentCode.Location = new System.Drawing.Point(120, 84);
            this.txtStudentCode.Name = "txtStudentCode";
            this.txtStudentCode.Size = new System.Drawing.Size(100, 21);
            this.txtStudentCode.TabIndex = 25;
            // 
            // txtCardCode10
            // 
            this.txtCardCode10.Location = new System.Drawing.Point(120, 30);
            this.txtCardCode10.Name = "txtCardCode10";
            this.txtCardCode10.Size = new System.Drawing.Size(100, 21);
            this.txtCardCode10.TabIndex = 24;
            this.txtCardCode10.TextChanged += new System.EventHandler(this.txtCardCode10_TextChanged);
            // 
            // lblName
            // 
            this.lblName.AutoSize = true;
            this.lblName.Location = new System.Drawing.Point(55, 114);
            this.lblName.Name = "lblName";
            this.lblName.Size = new System.Drawing.Size(65, 12);
            this.lblName.TabIndex = 23;
            this.lblName.Text = "学生姓名：";
            // 
            // lblStudentCode
            // 
            this.lblStudentCode.AutoSize = true;
            this.lblStudentCode.Location = new System.Drawing.Point(55, 87);
            this.lblStudentCode.Name = "lblStudentCode";
            this.lblStudentCode.Size = new System.Drawing.Size(65, 12);
            this.lblStudentCode.TabIndex = 22;
            this.lblStudentCode.Text = "学 籍 号：";
            // 
            // lblCardCode
            // 
            this.lblCardCode.AutoSize = true;
            this.lblCardCode.Location = new System.Drawing.Point(55, 30);
            this.lblCardCode.Name = "lblCardCode";
            this.lblCardCode.Size = new System.Drawing.Size(65, 12);
            this.lblCardCode.TabIndex = 21;
            this.lblCardCode.Text = "卡    号：";
            // 
            // FrmUpdateUser
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 12F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(284, 261);
            this.Controls.Add(this.txtCardCode16);
            this.Controls.Add(this.lblClassName);
            this.Controls.Add(this.cmbClassName);
            this.Controls.Add(this.cmbGradeName);
            this.Controls.Add(this.lblGradeName);
            this.Controls.Add(this.btnCancel);
            this.Controls.Add(this.btnSubmit);
            this.Controls.Add(this.txtName);
            this.Controls.Add(this.txtStudentCode);
            this.Controls.Add(this.txtCardCode10);
            this.Controls.Add(this.lblName);
            this.Controls.Add(this.lblStudentCode);
            this.Controls.Add(this.lblCardCode);
            this.Name = "FrmUpdateUser";
            this.Text = "用户修改";
            this.Load += new System.EventHandler(this.FrmUpdateUser_Load);
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private System.Windows.Forms.TextBox txtCardCode16;
        private System.Windows.Forms.Label lblClassName;
        private System.Windows.Forms.ComboBox cmbClassName;
        private System.Windows.Forms.ComboBox cmbGradeName;
        private System.Windows.Forms.Label lblGradeName;
        private System.Windows.Forms.Button btnCancel;
        private System.Windows.Forms.Button btnSubmit;
        private System.Windows.Forms.TextBox txtName;
        private System.Windows.Forms.TextBox txtStudentCode;
        private System.Windows.Forms.TextBox txtCardCode10;
        private System.Windows.Forms.Label lblName;
        private System.Windows.Forms.Label lblStudentCode;
        private System.Windows.Forms.Label lblCardCode;
    }
}