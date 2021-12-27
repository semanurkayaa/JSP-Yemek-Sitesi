package yemeksitesiyapimi;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;
import yemeksitesiyapimi.kategoribilgisi;
public class kategoriveriler {
	private Connection con;
	private String driver="com.mysql.jdbc.Driver";
	private String url="jdbc:mysql://localhost:3306/yemektarif?useUnicode=true&characterEncoding=UTF-8"; 
	private Statement stm;
	private ResultSet resultSet = null;
	private String kategoriad;
	private String mail;
	private String adres;
	private String tel;
	private String uyesifre;
	private String uyead;
	private String duyurubaslik;
	private String duyuruicerik;
	private String adminsifre;
	private String adminad;
	private String adminmail;
	private String yemekad;
	private String yemekmalzeme;
	private String yemekyapilis;
	private String resim;
	private String video;
	private String uyemail;
	private int kategoriId;
	
	
	
	public kategoriveriler()
	{
		try { 
			Class.forName(driver); 
		   System.out.println("JDBC surucu basari ile yüklendi.");
		}
		catch (Exception e) 
		{ 
			System.out.println("JDBC surucu Yüklenemedi. Hata:"+e.getMessage()); System.exit(0); 
		}
		try{
			con=DriverManager.getConnection(url,"root","12345");System.out.println("Veritabanýna baðlanýldý.");
			}
		catch (Exception e) { 
			System.out.println("Veri Tabanýna Baðlanýlamadý. Hata:"+e.getMessage()); System.exit(0);
			}
		try {
			stm=con.createStatement();
			}
		catch (Exception e) { 
				System.out.println("Hata:"+e.getMessage()); System.exit(0); 
		
			}
	}
	
	
	
	public ResultSet yemekadiara(String yemekad)
	{
		
		resultSet=null;
		try
		{
			
			
			String query = "SELECT yemekler.idyemekler,yemekler.yemekad, yemekler.yemekmalzeme, yemekler.yemekyapilis,yemekler.resim,yemekler.video,kategori.kategoriad FROM yemekler INNER JOIN kategori ON yemekler.kategoriId=kategori.idkategori WHERE yemekad LIKE '%"+yemekad+"%'";

	

			
			
			resultSet=stm.executeQuery(query);
			
			
		
		}
		catch (Exception e) { System.out.println("Hata:"+e.getMessage()); }
		
		return resultSet;

		
	}
	
	public boolean ekle(kategoribilgisi kategori)
	{
		kategoriad=kategori.getkategoriad();
		
		try
		{
			String query = "INSERT INTO kategori(kategoriad) values('"+kategoriad+"')"; 
			stm.executeUpdate(query); 
			return true;
		}
		catch (Exception e) { System.out.println("Hata:"+e.getMessage()); System.exit(0); return false;}
		
	}
	public boolean iletisimekle(kategoribilgisi iletisim)
	{
		mail=iletisim.getmail();
		adres=iletisim.getadres();
		tel=iletisim.gettel();
		try
		{
			String query = "INSERT INTO iletisim(mail,adres,tel) values('"+mail+"','"+adres+"','"+tel+"')"; 
			stm.executeUpdate(query); 
			return true;
		}
		catch (Exception e) { System.out.println("Hata:"+e.getMessage()); System.exit(0); return false;}
		
	}
	
	public boolean yemekekle(kategoribilgisi yemekler)
	{
		yemekad=yemekler.getyemekad();
		yemekmalzeme=yemekler.getyemekmalzeme();
		yemekyapilis=yemekler.getyemekyapilis();
		resim=yemekler.getresim();
		video=yemekler.getvideo();
		kategoriId=yemekler.getkategoriId();
		
	
		try
		{
			String query = "INSERT INTO yemekler(yemekad,yemekmalzeme,yemekyapilis,resim,video,kategoriId) values('"+yemekad+"','"+yemekmalzeme+"','"+yemekyapilis+"','"+resim+"','"+video+"','"+kategoriId+"')"; 
			stm.executeUpdate(query); 
			return true;
		}
		catch (Exception e) { System.out.println("Hata:"+e.getMessage()); System.exit(0); return false;}
		
	}
	
	public boolean duyuruekle(kategoribilgisi duruyu)
	{
		duyurubaslik=duruyu.getduyurubaslik();
		duyuruicerik=duruyu.getduyuruicerik();
		
		try
		{
			String query = "INSERT INTO duruyu(duyurubaslik,duyuruicerik) values('"+duyurubaslik+"','"+duyuruicerik+"')"; 
			stm.executeUpdate(query); 
			return true;
		}
		catch (Exception e) { System.out.println("Hata:"+e.getMessage()); System.exit(0); return false;}
		
	}
	
	public boolean uyeekle(kategoribilgisi uyeler)
	{
		uyesifre=uyeler.getuyesifre();
		uyead=uyeler.getuyead();
		uyemail=uyeler.getuyemail();
		try
		{
			String query = "INSERT INTO uyeler(uyesifre,uyead,uyemail) values('"+uyesifre+"','"+uyead+"','"+uyemail+"')"; 
			stm.executeUpdate(query); 
			return true;
		}
		catch (Exception e) { System.out.println("Hata:"+e.getMessage()); System.exit(0); return false;}
		
	}
	
	public boolean adminekle(kategoribilgisi admin)
	{
		adminsifre=admin.getadminsifre();
		adminad=admin.getadminad();
		adminmail=admin.getadminmail();
		
		try
		{
			String query = "INSERT INTO admin(adminsifre,adminad,adminmail) values('"+adminsifre+"','"+adminad+"','"+adminmail+"')"; 
			stm.executeUpdate(query); 
			return true;
		}
		catch (Exception e) { System.out.println("Hata:"+e.getMessage()); System.exit(0); return false;}
		
	}
	
	public ResultSet duyuruselectData(int id)
	{	
		resultSet=null;
		try
		{
			String query = "SELECT * FROM duruyu where idduruyu="+id;
			resultSet=stm.executeQuery(query);

		}
		catch (Exception e) { System.out.println("Hata:"+e.getMessage());
			
		}
		return resultSet;
		
		
	}
	
	
	public ResultSet adminsifrebelirlemeselectData(int id)
	{	
		resultSet=null;
		try
		{
			String query = "select adminad,adminsifre from admin  WHERE idadmin='"+id+"'";
			resultSet=stm.executeQuery(query);
			

		}
		catch (Exception e) { System.out.println("Hata:"+e.getMessage());
			
		}
		return resultSet;
		
		
	}
	
	
	public ResultSet kullanicisifrebelirlemeselectData(int id)
	{	
		resultSet=null;
		try
		{
			String query = "select*from uyeler  WHERE iduyeler='"+id+"'";
			resultSet=stm.executeQuery(query);
			

		}
		catch (Exception e) { System.out.println("Hata:"+e.getMessage());
			
		}
		return resultSet;
		
		
	}
	
	
	
	
	public ResultSet yemekselectData(int id)
	{	
		resultSet=null;
		try
		{
			String query = "SELECT * FROM yemekler where idyemekler="+id;
			resultSet=stm.executeQuery(query);

		}
		catch (Exception e) { System.out.println("Hata:"+e.getMessage());
			
		}
		return resultSet;
		
		
	}
	
	public ResultSet iletisimselectData(int id)
	{	
		resultSet=null;
		try
		{
			String query = "SELECT * FROM iletisim where idiletisim="+id;
			resultSet=stm.executeQuery(query);

		}
		catch (Exception e) { System.out.println("Hata:"+e.getMessage());
			
		}
		return resultSet;
		
		
	}
	public ResultSet selectData(int id)
	{	
		resultSet=null;
		try
		{
			String query = "SELECT * FROM kategori where idkategori="+id;
			resultSet=stm.executeQuery(query);

		}
		catch (Exception e) { System.out.println("Hata:"+e.getMessage());
			
		}
		return resultSet;
		
		
	}
	
	public ResultSet adminselectData()
	{	
		resultSet=null;
		try
		{
			String query = "select idadmin, adminad,adminsifre from admin";
			resultSet=stm.executeQuery(query);
			

		}
		catch (Exception e) { System.out.println("Hata:"+e.getMessage());
			
		}
		return resultSet;
		
		
	}
		
	public ResultSet uyeselectData(int id)
	{	
		resultSet=null;
		try
		{
			String query = "SELECT * FROM uyeler where iduyeler="+id;
			resultSet=stm.executeQuery(query);

		}
		catch (Exception e) { System.out.println("Hata:"+e.getMessage());
			
		}
		return resultSet;
		
		
	}
	public ResultSet kullanicilectData()
	{	
		resultSet=null;
		try
		{
			String query = "SELECT * FROM uyeler";
			resultSet=stm.executeQuery(query);

		}
		catch (Exception e) { System.out.println("Hata:"+e.getMessage());
			
		}
		return resultSet;
		
		
	}
			
			
	
	
	public ResultSet selectAllData()
	{	
		resultSet=null;
		try
		{
			String query = "SELECT * FROM kategori";
			resultSet=stm.executeQuery(query);

		}
		catch (Exception e) { System.out.println("Hata:"+e.getMessage());
			
		}
		return resultSet;
		
	}
	public ResultSet iletisimselectAllData()
	{	
		resultSet=null;
		try
		{
			String query = "SELECT * FROM iletisim";
			resultSet=stm.executeQuery(query);

		}
		catch (Exception e) { System.out.println("Hata:"+e.getMessage());
			
		}
		return resultSet;
		
	}
	
	public ResultSet yemekselectAllData()
	{	
		resultSet=null;
		try
		{
			
			String query = "SELECT yemekler.idyemekler,yemekler.yemekad, yemekler.yemekmalzeme, yemekler.yemekyapilis,yemekler.resim,yemekler.video,kategori.kategoriad FROM yemekler INNER JOIN kategori ON yemekler.kategoriId=kategori.idkategori";
			resultSet=stm.executeQuery(query);

		}
		catch (Exception e) { System.out.println("Hata:"+e.getMessage());
			
		}
		return resultSet;
		
	}
	
	
	public ResultSet duyuruselectAllData()
	{	
		resultSet=null;
		try
		{
			String query = "SELECT * FROM duruyu";
			resultSet=stm.executeQuery(query);

		}
		catch (Exception e) { System.out.println("Hata:"+e.getMessage());
			
		}
		return resultSet;
		
	}
	public ResultSet uyeselectAllData()
	{	
		resultSet=null;
		try
		{
			String query = "SELECT * FROM uyeler";
			resultSet=stm.executeQuery(query);

		}
		catch (Exception e) { System.out.println("Hata:"+e.getMessage());
			
		}
		return resultSet;
		
	}	
	

	public ResultSet adminselectAllData()
	{	
		resultSet=null;
		try
		{
			String query = "SELECT * FROM admin";
			resultSet=stm.executeQuery(query);

		}
		catch (Exception e) { System.out.println("Hata:"+e.getMessage());
			
		}
		return resultSet;
		
	}	
	
	
	public boolean deleteData(int id)
	{
		try
		{
			String query = "DELETE FROM kategori WHERE idkategori="+id+"";
			stm.executeUpdate(query);
			return true;
		}
		catch (Exception e) { System.out.println("Hata:"+e.getMessage()); return false;}
		
	}
	public boolean iletisimdeleteData(int id)
	{
		try
		{
			String query = "DELETE FROM iletisim WHERE idiletisim="+id+"";
			stm.executeUpdate(query);
			return true;
		}
		catch (Exception e) { System.out.println("Hata:"+e.getMessage()); return false;}
		
	}
	
	public boolean yemekdeleteData(int id)
	{
		try
		{
			String query = "DELETE FROM yemekler WHERE idyemekler="+id+"";
			stm.executeUpdate(query);
			return true;
		}
		catch (Exception e) { System.out.println("Hata:"+e.getMessage()); return false;}
		
	}
	
	
	public boolean duyurudeleteData(int id)
	{
		try
		{
			String query = "DELETE FROM duruyu WHERE idduruyu="+id+"";
			stm.executeUpdate(query);
			return true;
		}
		catch (Exception e) { System.out.println("Hata:"+e.getMessage()); return false;}
		
	}
	public boolean uyedeleteData(int id)
	{
		try
		{
			String query = "DELETE FROM uyeler WHERE iduyeler="+id+"";
			stm.executeUpdate(query);
			return true;
		}
		catch (Exception e) { System.out.println("Hata:"+e.getMessage()); return false;}
		
	}
	
	
	public boolean admindeleteData(int id)
	{
		try
		{
			String query = "DELETE FROM admin WHERE idadmin="+id+"";
			stm.executeUpdate(query);
			return true;
		}
		catch (Exception e) { System.out.println("Hata:"+e.getMessage()); return false;}
		
	}
	
	
	public boolean updateData(kategoribilgisi kategori,int id)
	{
		String kategoriad=kategori.getkategoriad();
		try
		{
			String query = "UPDATE kategori SET kategoriad='"+kategoriad+"' WHERE idkategori='"+id+"'";
			stm.executeUpdate(query); 
			return true;
		}
		catch (Exception e) { System.out.println("Hata:"+e.getMessage()); return false;}
		
	}
	
	public boolean iletisimupdateData(kategoribilgisi iletisim,int id)
	{
		String mail=iletisim.getmail();
		String adres=iletisim.getadres();
		String tel=iletisim.gettel();
		try
		{   String query = "UPDATE iletisim SET mail='"+mail+"',adres='"+adres+"',tel='"+tel+"' WHERE idiletisim='"+id+"'";
			stm.executeUpdate(query); 
			return true;
		}
		catch (Exception e) { System.out.println("Hata:"+e.getMessage()); return false;}
		
	}
	
	public boolean yemekupdateData(kategoribilgisi yemekler,int id)
	{
		String yemekad=yemekler.getyemekad();
		String yemekmalzeme=yemekler.getyemekmalzeme();
		String yemekyapilis=yemekler.getyemekyapilis();
		String resim=yemekler.getresim();
		String video=yemekler.getvideo();
		int kategoriId=yemekler.getkategoriId();
		
		
		try
		{   String query = "UPDATE yemekler SET yemekad='"+yemekad+"',yemekmalzeme='"+yemekmalzeme+"',yemekyapilis='"+yemekyapilis+"',resim='"+resim+"',video='"+video+"' ,kategoriId='"+kategoriId+"' WHERE idyemekler='"+id+"'";
			stm.executeUpdate(query); 
			return true;
		}
		catch (Exception e) { System.out.println("Hata:"+e.getMessage()); return false;}
		
	}
	
	public boolean yeniyemekupdateData(kategoribilgisi yemekler,int idyemekler,int kategoriId,String gelenyemekad)
	{
		String yemekad=yemekler.getyemekad();
		String yemekmalzeme=yemekler.getyemekmalzeme();
		String yemekyapilis=yemekler.getyemekyapilis();
		String resim=yemekler.getresim();
		String video=yemekler.getvideo();
		System.out.println("YENÝ GELEN YEMEK AD ");
		if(yemekad!=null  && yemekmalzeme !=null  && yemekyapilis !=null  && resim!=null  && video!=null ) {
			try
			{   String query = "UPDATE yemekler SET yemekad='"+gelenyemekad+"',yemekmalzeme='"+yemekmalzeme+"',yemekyapilis='"+yemekyapilis+"',resim='"+resim+"',video='"+video+"',kategoriId='"+kategoriId+"'  WHERE idyemekler='"+idyemekler+"' ";
				stm.executeUpdate(query); 
				return true;
			}
			catch (Exception e) { System.out.println("Hata:"+e.getMessage());
			return false;
			}
		}else {
			System.out.println("DEÐERLER NULL GELDÝ ");
			return false;
		}
		  
		
		
		
		}
		
	
	
	public boolean duyuruupdateData(kategoribilgisi duruyu,int id)
	{
		String duyurubaslik=duruyu.getduyurubaslik();
		String duyuruicerik=duruyu.getduyuruicerik();
		
		try
		{   String query = "UPDATE duruyu SET duyurubaslik='"+duyurubaslik+"',duyuruicerik='"+duyuruicerik+"' WHERE idduruyu='"+id+"'";
			stm.executeUpdate(query); 
			return true;
		}
		catch (Exception e) { System.out.println("Hata:"+e.getMessage()); return false;}
		
	}
	public boolean uyeupdateData(kategoribilgisi uyeler,int id)
	{
		String uyesifre=uyeler.getuyesifre();
		String uyead=uyeler.getuyead();
		String uyemail=uyeler.getuyemail();
		try
		{   String query = "UPDATE uyeler SET uyesifre='"+uyesifre+"',uyead='"+uyead+"',uyemail='"+uyemail+"' WHERE iduyeler='"+id+"'";
			stm.executeUpdate(query); 
			return true;
		}
		catch (Exception e) { System.out.println("Hata:"+e.getMessage()); return false;}
		
	}
	
	
	public boolean adminupdateData(kategoribilgisi admin,int id)
	{
		String adminad=admin.getadminad();
		String adminsifre=admin.getadminsifre();
		String adminmail=admin.getadminmail();
		
		
		try
		{   String query = "UPDATE admin SET adminad='"+adminad+"',adminsifre='"+adminsifre+"',adminmail='"+adminmail+"' WHERE idadmin='"+id+"'";
			stm.executeUpdate(query); 
			return true;
		}
		catch (Exception e) { System.out.println("Hata:"+e.getMessage()); return false;}
		
	}
	
	
	
	
	public ResultSet yemeklisteleAllData(int id)
	{	
		resultSet=null;
		try
		{
			String query = "SELECT * FROM yemektarif.yemekler WHERE idyemekler='"+id+"'";
			resultSet=stm.executeQuery(query);

		}
		catch (Exception e) { System.out.println("Hata:"+e.getMessage());
			
		}
		return resultSet;
		
	}	
	
 
	public boolean kullaniciupdateData(kategoribilgisi uyeler,int id)
	{
		String uyead=uyeler.getuyead();
		String uyesifre=uyeler.getuyesifre();
		String uyemail=uyeler.getuyemail();
		
		
		try
		{   String query = "UPDATE uyeler SET uyead='"+uyead+"',uyesifre='"+uyesifre+"',uyemail='"+uyemail+"' WHERE iduyeler='"+id+"'";
			stm.executeUpdate(query); 
			return true;
		}
		catch (Exception e) { System.out.println("Hata:"+e.getMessage()); return false;}
		
	}
	
	public ResultSet likearama(String arama)
	{	
		resultSet=null;
		try
		{
			String query = "SELECT * FROM yemektarif.yemekler WHERE yemekad like '"+arama+"' ";
			resultSet=stm.executeQuery(query);

		}
		catch (Exception e) { System.out.println("Hata:"+e.getMessage());
			
		}
		return resultSet;
		
	}	
	
	
	


}
