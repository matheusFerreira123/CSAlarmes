package persistencia;

import com.thoughtworks.xstream.XStream;
import dominio.Cliente;
import java.io.File;
import java.io.FileWriter;
import java.util.ArrayList;

public class ClienteBD {
    
    private static String caminho = "C:\\Users\\casas bahia\\Documents\\NetBeansProjects\\csalarmes\\csalarmes\\";
    
    private static ArrayList<Cliente> lista = new ArrayList<Cliente>();
    //adiciona um objeto da classe Cliente 
    //na lista que simula o banco de dados
    public static void inserir(Cliente cliente){
        lerXml();// lê o xml e preenche a lista de cliente
        lista.add(cliente); // adiciona um cliente na lista
        salvarXml(); // atualiza o XML com a que tem na lista
    }
    
    public static void alterar(Cliente cliente){
        lerXml(); 
        excluir(cliente.getCpf());
        inserir(cliente);
        salvarXml();
    }
    
    //recebe o atributo que identifica cada objeto
    //da classe Cliente
    public static void excluir(String cpf){
        lerXml();
        for(int i=0; i < lista.size(); i++){
            Cliente cadaCliente = lista.get(i);
            
            if (cadaCliente.getCpf().equals(cpf)){
                lista.remove(i);
            }
        }
        salvarXml();
    }
    public static ArrayList<Cliente> listar(){     
        lerXml();
        //retorna todos os objetos do banco de dados
        return lista;
    }
    
    public static Cliente getByCpf(String cpf){
        lerXml();
        Cliente clienteEncontrado = null;
        for(int i=0; i < lista.size(); i++){
            Cliente cadaCliente = lista.get(i);
            
            if (cadaCliente.getCpf().equals(cpf)){
                clienteEncontrado = cadaCliente;
                break;
            }
        }
        return clienteEncontrado;
    }
    
    private static void lerXml(){
        File arquivo=new File(caminho + "clientees.xml");
        if (arquivo.exists()){
            //armazenar XML no vetor
            XStream xstream=new XStream();
            xstream.alias("cliente",Cliente.class);
            lista = (ArrayList<Cliente>) xstream.fromXML(arquivo);
        }else{
            lista = new ArrayList<Cliente>();
        }
    }
    
    private static void salvarXml(){
        XStream xstream = new XStream();
        xstream.alias("cliente",Cliente.class);
        try{
            FileWriter escritor=new FileWriter(caminho + "clientees.xml");
            escritor.write( xstream.toXML(lista) );
            escritor.close();
        }catch(Exception ex){
            System.out.println(ex.getMessage());
        }
    }
}