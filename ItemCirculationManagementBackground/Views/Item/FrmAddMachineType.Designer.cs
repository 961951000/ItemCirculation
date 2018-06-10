namespace ItemCirculationManagementBackground.Views.Item
{
    partial class FrmAddMachineType
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
            this.txtMachineType = new System.Windows.Forms.TextBox();
            this.lblMachineType = new System.Windows.Forms.Label();
            this.btnCancel = new System.Windows.Forms.Button();
            this.btnSubmit = new System.Windows.Forms.Button();
            this.SuspendLayout();
            // 
            // txtMachineType
            // 
            this.txtMachineType.Location = new System.Drawing.Point(77, 30);
            this.txtMachineType.Name = "txtMachineType";
            this.txtMachineType.Size = new System.Drawing.Size(100, 21);
            this.txtMachineType.TabIndex = 6;
            // 
            // lblMachineType
            // 
            this.lblMachineType.AutoSize = true;
            this.lblMachineType.Location = new System.Drawing.Point(12, 33);
            this.lblMachineType.Name = "lblMachineType";
            this.lblMachineType.Size = new System.Drawing.Size(65, 12);
            this.lblMachineType.TabIndex = 5;
            this.lblMachineType.Text = "设备名称：";
            // 
            // btnCancel
            // 
            this.btnCancel.Location = new System.Drawing.Point(138, 82);
            this.btnCancel.Name = "btnCancel";
            this.btnCancel.Size = new System.Drawing.Size(75, 23);
            this.btnCancel.TabIndex = 9;
            this.btnCancel.Text = "取消";
            this.btnCancel.UseVisualStyleBackColor = true;
            this.btnCancel.Click += new System.EventHandler(this.btnCancel_Click);
            // 
            // btnSubmit
            // 
            this.btnSubmit.Location = new System.Drawing.Point(14, 82);
            this.btnSubmit.Name = "btnSubmit";
            this.btnSubmit.Size = new System.Drawing.Size(75, 23);
            this.btnSubmit.TabIndex = 8;
            this.btnSubmit.Text = "提交";
            this.btnSubmit.UseVisualStyleBackColor = true;
            this.btnSubmit.Click += new System.EventHandler(this.btnSubmit_Click);
            // 
            // FrmAddMachineType
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 12F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(284, 161);
            this.Controls.Add(this.btnCancel);
            this.Controls.Add(this.btnSubmit);
            this.Controls.Add(this.txtMachineType);
            this.Controls.Add(this.lblMachineType);
            this.Name = "FrmAddMachineType";
            this.Text = "设备类型";
            this.Load += new System.EventHandler(this.FrmAddMachineType_Load);
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private System.Windows.Forms.TextBox txtMachineType;
        private System.Windows.Forms.Label lblMachineType;
        private System.Windows.Forms.Button btnCancel;
        private System.Windows.Forms.Button btnSubmit;
    }
}