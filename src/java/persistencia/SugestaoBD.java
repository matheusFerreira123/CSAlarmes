package persistencia;

import com.thoughtworks.xstream.XStream;
import dominio.Sugestao;
import java.io.File;
import java.io.FileWriter;
import java.util.ArrayList;

public class SugestaoBD {
    
    private static String caminho = "C:\\Users\\casas bahia\\Documents\\NetBeansProjects\\csalarmes\\csalarmes\\";
    
    private static ArrayList<Sugestao> lista = new ArrayList<Sugestao>();
    //adiciona um objeto da classe Sugestao 
    //na lista que simula o banco de dados
    public static void inserirsugestao(Sugestao sugestao){
        lerXmlS();// lê o xml e preenche a lista de cliente
        lista.add(sugestao); // adiciona um cliente na lista
        salvarXmlS(); // atualiza o XML com a que tem na lista
    }

    
    //recebe o atributo que identifica cada objeto
    //da classe Sugestao
    public static void excluirsugestao(int codigo){
        lerXmlS();
        for(int i=0; i < lista.size(); i++){
            Sugestao cadaSugestao = lista.get(i);
            
            if (cadaSugestao.getCodigo() == codigo){
                lista.remove(i);
            }
        }
        salvarXmlS();
    }
    public static ArrayList<Sugestao> listarsugestao(){     
        lerXmlS();
        //retorna todos os objetos do banco de dados
        return lista;
    }
    
    public static Sugestao getByNome(String nome){
        lerXmlS();
        Sugestao sugestaoEncontrada = null;
        for(int i=0; i < lista.size(); i++){
            Sugestao cadaSugestao = lista.get(i);
            
            if (cadaSugestao.getNome().equals(nome)){
                sugestaoEncontrada = cadaSugestao;
                break;
            }
        }
        return sugestaoEncontrada;
    }
  
    
    private static void lerXmlS(){
        File arquivo=new File(caminho + "sugestoes.xml");
        if (arquivo.exists()){
            //armazenar XML no vetor
            XStream xstream=new XStream();
            xstream.alias("sugestao",Sugestao.class);
            lista = (ArrayList<Sugestao>) xstream.fromXML(arquivo);
        }else{
            lista = new ArrayList<Sugestao>();
        }
    }
    
    private static void salvarXmlS(){
        XStream xstream = new XStream();
        xstream.alias("sugestao",Sugestao.class);
        try{
            FileWriter escritor=new FileWriter(caminho + "sugestoes.xml");
            escritor.write( xstream.toXML(lista) );
            escritor.close();
        }catch(Exception ex){
            System.out.println(ex.getMessage());
        }
    }
}