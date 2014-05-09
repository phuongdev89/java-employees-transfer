/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package view;

import Connect.DataAccess;
import entity.Department;
import javax.swing.Icon;
import javax.swing.ImageIcon;
import javax.swing.JOptionPane;
import model.DepartmentBO;

/**
 *
 * @author Sun of Vn
 */
public class FrmModifyDepartment extends javax.swing.JFrame {
    private int add=0;
    private int edit=1;
    private int departmentID=-1;
    FrmAdminForm parent;
    private int modifyMode;
    /**
     * Creates new form FrmModifyDepartment
     */
    public FrmModifyDepartment(int modifyMode,int departmentID) {
        initComponents();
        if(modifyMode==add)
        {
            Icon imgicon = new ImageIcon("Icons/s_add.png");
            btModify.setIcon(imgicon);
        }
        else
        {
        Icon imgicon = new ImageIcon("/Icons/s_edit.png");
            btModify.setIcon(imgicon);
        }
        
        this.setLocationRelativeTo( null );
        this.modifyMode=modifyMode;
        this.departmentID=departmentID;
        DepartmentBO bo=new DepartmentBO();
        if(modifyMode==edit){
            btModify.setText("Edit");
        Department dep=bo.getDepartment(departmentID);
        lbDepartmentID.setText(dep.getDepartmentID()+"");
        txtDepartmentName.setText(dep.getDepartmentName());
        txtDescription.setText(dep.getDescription());}
        else {lbDepID.setVisible(false);lbDepartmentID.setVisible(false);btDelete.setVisible(false);}
    }

    /**
     * This method is called from within the constructor to initialize the form.
     * WARNING: Do NOT modify this code. The content of this method is always
     * regenerated by the Form Editor.
     */
    @SuppressWarnings("unchecked")
    // <editor-fold defaultstate="collapsed" desc="Generated Code">//GEN-BEGIN:initComponents
    private void initComponents() {

        btModify = new javax.swing.JButton();
        jButton2 = new javax.swing.JButton();
        jLabel1 = new javax.swing.JLabel();
        txtDepartmentName = new javax.swing.JTextField();
        jLabel2 = new javax.swing.JLabel();
        txtDescription = new javax.swing.JTextField();
        lbDepID = new javax.swing.JLabel();
        lbDepartmentID = new javax.swing.JLabel();
        btDelete = new javax.swing.JButton();

        setDefaultCloseOperation(javax.swing.WindowConstants.DISPOSE_ON_CLOSE);
        setTitle("Modify department page");

        btModify.setText("Add");
        btModify.setMaximumSize(new java.awt.Dimension(83, 25));
        btModify.setMinimumSize(new java.awt.Dimension(83, 25));
        btModify.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                btModifyActionPerformed(evt);
            }
        });

        jButton2.setIcon(new javax.swing.ImageIcon(getClass().getResource("/Icons/s_cancel.png"))); // NOI18N
        jButton2.setText("Cancel");
        jButton2.setMaximumSize(new java.awt.Dimension(83, 25));
        jButton2.setMinimumSize(new java.awt.Dimension(83, 25));
        jButton2.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                jButton2ActionPerformed(evt);
            }
        });

        jLabel1.setText("Name");

        jLabel2.setText("Description");

        lbDepID.setText("Department ID");

        btDelete.setIcon(new javax.swing.ImageIcon(getClass().getResource("/Icons/gnome_edit_delete.png"))); // NOI18N
        btDelete.setText("Delete");
        btDelete.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                btDeleteActionPerformed(evt);
            }
        });

        javax.swing.GroupLayout layout = new javax.swing.GroupLayout(getContentPane());
        getContentPane().setLayout(layout);
        layout.setHorizontalGroup(
            layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(layout.createSequentialGroup()
                .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                    .addGroup(layout.createSequentialGroup()
                        .addGap(46, 46, 46)
                        .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                            .addComponent(jLabel2)
                            .addComponent(jLabel1)
                            .addComponent(lbDepID))
                        .addGap(18, 18, 18)
                        .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                            .addComponent(txtDepartmentName, javax.swing.GroupLayout.PREFERRED_SIZE, 131, javax.swing.GroupLayout.PREFERRED_SIZE)
                            .addComponent(txtDescription, javax.swing.GroupLayout.PREFERRED_SIZE, 131, javax.swing.GroupLayout.PREFERRED_SIZE)
                            .addComponent(lbDepartmentID)))
                    .addGroup(layout.createSequentialGroup()
                        .addGap(24, 24, 24)
                        .addComponent(btModify, javax.swing.GroupLayout.PREFERRED_SIZE, 83, javax.swing.GroupLayout.PREFERRED_SIZE)
                        .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.UNRELATED)
                        .addComponent(btDelete)
                        .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                        .addComponent(jButton2, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)))
                .addContainerGap(javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE))
        );
        layout.setVerticalGroup(
            layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(javax.swing.GroupLayout.Alignment.TRAILING, layout.createSequentialGroup()
                .addGap(50, 50, 50)
                .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                    .addComponent(lbDepID)
                    .addComponent(lbDepartmentID))
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                    .addComponent(txtDepartmentName, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
                    .addComponent(jLabel1))
                .addGap(18, 18, 18)
                .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                    .addComponent(txtDescription, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
                    .addComponent(jLabel2))
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.UNRELATED)
                .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                    .addComponent(btModify, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
                    .addComponent(jButton2, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
                    .addComponent(btDelete))
                .addContainerGap(javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE))
        );

        pack();
    }// </editor-fold>//GEN-END:initComponents

    private void btModifyActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_btModifyActionPerformed
        if(txtDepartmentName.getText().trim().length()>0){
        Department dep=new Department(departmentID,txtDepartmentName.getText(),txtDescription.getText());
        DepartmentBO bo=new DepartmentBO();
        if(modifyMode==add){
         if(bo.insertDepartment(dep))
       {
           parent.refresh();
           JOptionPane.showMessageDialog(this,"Add department successful");
           this.dispose();
       }else JOptionPane.showMessageDialog(rootPane, "Add fail!");
        }
        if(modifyMode==edit){
            if(bo.updateDepartment(dep)){
           parent.refresh();
           JOptionPane.showMessageDialog(this,"Edit department successful");
           this.dispose();
       }else JOptionPane.showMessageDialog(rootPane, "Edit fail!");
        }
        }
        else JOptionPane.showMessageDialog(this,"Department name can not be empty");
    }//GEN-LAST:event_btModifyActionPerformed

    private void btDeleteActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_btDeleteActionPerformed
      
            int dialogButton = JOptionPane.YES_NO_OPTION;
       int dialogResult = JOptionPane.showConfirmDialog (null, "Would You Like to delete this department?","Warning",dialogButton);
        if(dialogResult == JOptionPane.YES_OPTION){
        DepartmentBO bo=new DepartmentBO();
            if(bo.deleteDepartment(new int[]{departmentID}))
            {
            JOptionPane.showMessageDialog(rootPane, "Delete success!");
                parent.refresh();
                this.dispose();
            }else JOptionPane.showMessageDialog(rootPane, "Delete fail!");
        }
    }//GEN-LAST:event_btDeleteActionPerformed

    private void jButton2ActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_jButton2ActionPerformed
this.dispose();        // TODO add your handling code here:
    }//GEN-LAST:event_jButton2ActionPerformed

    /**
     * @param args the command line arguments
     */

    // Variables declaration - do not modify//GEN-BEGIN:variables
    private javax.swing.JButton btDelete;
    private javax.swing.JButton btModify;
    private javax.swing.JButton jButton2;
    private javax.swing.JLabel jLabel1;
    private javax.swing.JLabel jLabel2;
    private javax.swing.JLabel lbDepID;
    private javax.swing.JLabel lbDepartmentID;
    private javax.swing.JTextField txtDepartmentName;
    private javax.swing.JTextField txtDescription;
    // End of variables declaration//GEN-END:variables

    void setParent(FrmAdminForm aThis) {
        parent=aThis;
    }
}
