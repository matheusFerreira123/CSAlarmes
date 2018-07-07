/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package persistencia;

import com.thoughtworks.xstream.XStream;
import dominio.Admin;
import java.io.File;
import java.io.FileWriter;
import java.util.ArrayList;

/**
 *
 * @author Rafael
 */
public class AdminBD {
       private static String caminho = "D:\\CSAlarmes-master\\";

    private static ArrayList<Admin> lista = new ArrayList<Admin>();

    //adiciona um objeto da classe Admin 
    //na lista que simula o banco de dados
    public static void inserir(Admin admin) {
        lerXml();// lê o xml e preenche a lista de admin
        lista.add(admin); // adiciona um admin na lista
        salvarXml(); // atualiza o XML com a que tem na lista
    }

    public static void alterar(Admin admin) {
        lerXml();
        excluir(admin.getEmail());
        inserir(admin);
        salvarXml();
    }

    //recebe o atributo que identifica cada objeto
    //da classe Admin
    public static void excluir(String email) {
        lerXml();
        for (int i = 0; i < lista.size(); i++) {
            Admin cadaAdmin = lista.get(i);

            if (cadaAdmin.getEmail().equals(email)) {
                lista.remove(i);
            }
        }
        salvarXml();
    }

    public static Boolean validar(String email, String senha) {
        lerXml();
        for (int i = 0; i < lista.size(); i++) {
            Admin cadaAdmin = lista.get(i);

            if (cadaAdmin.getEmail().equals(email) && cadaAdmin.getSenha().equals(senha)) {
                return true;
            }
        }
        return false;
    }

    public static ArrayList<Admin> listar() {
        lerXml();
        //retorna todos os objetos do banco de dados
        return lista;
    }

    public static Admin getByCpf(String email) {
        lerXml();
        Admin adminEncontrado = null;
        for (int i = 0; i < lista.size(); i++) {
            Admin cadaAdmin = lista.get(i);

            if (cadaAdmin.getEmail().equals(email)) {
                adminEncontrado = cadaAdmin;
                break;
            }
        }
        return adminEncontrado;
    }

    public static Admin getBySenha(String senha) {
        lerXml();
        Admin adminEncontrado = null;
        for (int i = 0; i < lista.size(); i++) {
            Admin cadaAdmin = lista.get(i);

            if (cadaAdmin.getSenha().equals(senha)) {
                adminEncontrado = cadaAdmin;
                break;
            }
        }
        return adminEncontrado;
    }

    private static void lerXml() {
        File arquivo = new File(caminho + "admin.xml");
        if (arquivo.exists()) {
            //armazenar XML no vetor
            XStream xstream = new XStream();
            xstream.alias("admin", Admin.class);
            lista = (ArrayList<Admin>) xstream.fromXML(arquivo);
        } else {
            lista = new ArrayList<Admin>();
        }
    }

    private static void salvarXml() {
        XStream xstream = new XStream();
        xstream.alias("admin", Admin.class);
        try {
            FileWriter escritor = new FileWriter(caminho + "admin.xml");
            escritor.write(xstream.toXML(lista));
            escritor.close();
        } catch (Exception ex) {
            System.out.println(ex.getMessage());
        }
    }
}
