package dominio;


public class Sugestao {
   private int codigo;
   private String nome;
   private String telefone;
   private String email;
   private String sugest;

    public int getCodigo() {
        return codigo;
    }

    public void setCodigo(int codigo) {
        this.codigo = codigo;
    }

    public String getNome() {
        return nome;
    }

    public void setNome(String nome) {
        this.nome = nome;
    }

    public String getTelefone() {
        return telefone;
    }

    public void setTelefone(String telefone) {
        this.telefone = telefone;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getSugest() {
        return sugest;
    }   

    public void setSugest(String sugest) {
        this.sugest = sugest;
    }

   
}
