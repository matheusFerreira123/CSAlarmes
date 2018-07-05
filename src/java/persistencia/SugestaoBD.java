package persistencia;

import com.thoughtworks.xstream.XStream;
import dominio.Sugestao;
import java.io.File;
import java.io.FileWriter;
import java.util.ArrayList;

public class SugestaoBD {
    
    private static String caminho = "C:\\Users\\Gabriele Kiane\\Desktop\\HTML\\CSAlarmes\\CSAlarmes\\";
    
    private static ArrayList<Sugestao> lista = new ArrayList<Sugestao>();
    //adiciona um objeto da classe Sugestao 
    //na lista que simula o banco de dados
    public static void inserirsugestao(Sugestao sugestao){
        lerXml();// lê o xml e preenche a lista de cliente
        lista.add(sugestao); // adiciona um cliente na lista
        salvarXml(); // atualiza o XML com a que tem na lista
    }
    
    public static void alterar(Sugestao sugestao){
        lerXml(); 
        excluirsugestao(sugestao.getNome());
        inserirsugestao(sugestao);
        salvarXml();
    }
    
    //recebe o atributo que identifica cada objeto
    //da classe Sugestao
    public static void excluirsugestao(String nome){
        lerXml();
        for(int i=0; i < lista.size(); i++){
            Sugestao cadaSugestao = lista.get(i);
            
            if (cadaSugestao.getNome().equals(nome)){
                lista.remove(i);
            }
        }
        salvarXml();
    }
    public static ArrayList<Sugestao> listar(){     
        lerXml();
        //retorna todos os objetos do banco de dados
        return lista;
    }
    
    public static Sugestao getByNome(String nome){
        lerXml();
        Sugestao clienteEncontrado = null;
        for(int i=0; i < lista.size(); i++){
            Sugestao cadaSugestao = lista.get(i);
            
            if (cadaSugestao.getNome().equals(nome)){
                clienteEncontrado = cadaSugestao;
                break;
            }
        }
        return clienteEncontrado;
    }
     public static Sugestao getBySenha(String nome){
        lerXml();
        Sugestao clienteEncontrado = null;
        for(int i=0; i < lista.size(); i++){
            Sugestao cadaSugestao = lista.get(i);
            
            if (cadaSugestao.getNome().equals(nome)){
                clienteEncontrado = cadaSugestao;
                break;
            }
        }
        return clienteEncontrado;
    }
    
    private static void lerXml(){
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
    
    private static void salvarXml(){
        XStream xstream = new XStream();
        xstream.alias("cliente",Sugestao.class);
        try{
            FileWriter escritor=new FileWriter(caminho + "sugestoes.xml");
            escritor.write( xstream.toXML(lista) );
            escritor.close();
        }catch(Exception ex){
            System.out.println(ex.getMessage());
        }
    }
}