package OPTIMAL;




import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.ResultSetMetaData;
import java.sql.Statement;
import java.util.Vector;
import javax.swing.JFrame;
import javax.swing.JPanel;
import javax.swing.JScrollPane;
import javax.swing.JTable;
import javax.swing.table.TableColumn;

public class search extends javax.swing.JFrame {

   
    public search() {
        initComponents();
        device.removeAllItems();
        
        for (int i=1;i<=4;i++)
        {
            device.addItem(i);
        }
    }

    @SuppressWarnings("unchecked")
    // <editor-fold defaultstate="collapsed" desc="Generated Code">//GEN-BEGIN:initComponents
    private void initComponents() {

        jPanel1 = new javax.swing.JPanel();
        jLabel1 = new javax.swing.JLabel();
        jLabel3 = new javax.swing.JLabel();
        device = new javax.swing.JComboBox();
        jButton1 = new javax.swing.JButton();
        jLabel2 = new javax.swing.JLabel();

        setTitle("DATA PROCESSING");
        setResizable(false);

        jPanel1.setLayout(null);

        jLabel1.setFont(new java.awt.Font("Algerian", 1, 18)); // NOI18N
        jLabel1.setForeground(new java.awt.Color(255, 255, 0));
        jLabel1.setText("DATA ANALYSIS");
        jPanel1.add(jLabel1);
        jLabel1.setBounds(130, 40, 200, 40);

        jLabel3.setFont(new java.awt.Font("Arial", 1, 14)); // NOI18N
        jLabel3.setText("Search Device");
        jPanel1.add(jLabel3);
        jLabel3.setBounds(40, 140, 120, 20);

        device.setModel(new javax.swing.DefaultComboBoxModel(new String[] { "--Select--" }));
        device.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                deviceActionPerformed(evt);
            }
        });
        jPanel1.add(device);
        device.setBounds(190, 140, 70, 20);

        jButton1.setFont(new java.awt.Font("Arial", 1, 12)); // NOI18N
        jButton1.setText("Search");
        jButton1.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                jButton1ActionPerformed(evt);
            }
        });
        jPanel1.add(jButton1);
        jButton1.setBounds(310, 140, 73, 23);

        jLabel2.setIcon(new javax.swing.ImageIcon(getClass().getResource("/OPTIMAL/ss.jpg"))); // NOI18N
        jLabel2.setText("jLabel2");
        jPanel1.add(jLabel2);
        jLabel2.setBounds(0, 0, 580, 410);

        javax.swing.GroupLayout layout = new javax.swing.GroupLayout(getContentPane());
        getContentPane().setLayout(layout);
        layout.setHorizontalGroup(
            layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addComponent(jPanel1, javax.swing.GroupLayout.DEFAULT_SIZE, 574, Short.MAX_VALUE)
        );
        layout.setVerticalGroup(
            layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(layout.createSequentialGroup()
                .addComponent(jPanel1, javax.swing.GroupLayout.PREFERRED_SIZE, 406, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addGap(0, 0, Short.MAX_VALUE))
        );

        pack();
    }// </editor-fold>//GEN-END:initComponents

    private void deviceActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_deviceActionPerformed
      
    }//GEN-LAST:event_deviceActionPerformed

    private void jButton1ActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_jButton1ActionPerformed
      
        
                 Vector columnNames = new Vector();
        Vector data = new Vector();
        JPanel p=new JPanel();
        try {
             String url="jdbc:mysql://localhost:3306/boomerang";
        Class.forName("com.mysql.jdbc.Driver");
        Connection con = DriverManager.getConnection(url,"root","root");
        Statement stmt=con.createStatement();
        
        String sql = "Select * from routing where devicenumber="+ device.getSelectedItem()+"";
        ResultSet rs = stmt.executeQuery( sql );
            ResultSetMetaData md = rs.getMetaData();
            int columns = md.getColumnCount();
            for (int i = 1; i <= columns; i++) {
                columnNames.addElement( md.getColumnName(i) );
            }
            while (rs.next()) {
                Vector row = new Vector(columns);
                for (int i = 1; i <= columns; i++){
                    row.addElement( rs.getObject(i) );
                }
                data.addElement( row );
            }
            rs.close();
            stmt.close();
        } catch(Exception e){
            System.out.println(e);
        }
        JTable table = new JTable(data, columnNames);
        TableColumn col;
        for (int i = 0; i < table.getColumnCount(); i++) {
            col = table.getColumnModel().getColumn(i);
            col.setMaxWidth(250);
        }
        JScrollPane scrollPane = new JScrollPane( table );
        p.add( scrollPane );
        JFrame f=new JFrame();
        f.add(p);
        f.setSize(600,400);
        f.setVisible(true); 
               
        
        
        
        
        
        
    }//GEN-LAST:event_jButton1ActionPerformed

   
    public static void main(String args[]) {
      
        java.awt.EventQueue.invokeLater(new Runnable() {
            public void run() {
                new search().setVisible(true);
            }
        });
    }
    // Variables declaration - do not modify//GEN-BEGIN:variables
    private javax.swing.JComboBox device;
    private javax.swing.JButton jButton1;
    private javax.swing.JLabel jLabel1;
    private javax.swing.JLabel jLabel2;
    private javax.swing.JLabel jLabel3;
    private javax.swing.JPanel jPanel1;
    // End of variables declaration//GEN-END:variables
}
