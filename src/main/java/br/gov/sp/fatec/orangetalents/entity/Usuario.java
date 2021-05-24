package br.gov.sp.fatec.orangetalents.entity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.persistence.OneToMany;

import java.util.Date;
import java.util.Set;

@Entity
@Table(name = "usr_usuario")
public class Usuario {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "usr_id")
    private Long id;

    @Column(name = "usr_nome")
    private String nome;

    @Column(name = "usr_email")
    private String email;

    @Column(name = "usr_cpf")
    private String cpf;

    @Column(name = "usr_nasc")
    private Date nascimento;

    @OneToMany(fetch = FetchType.LAZY, mappedBy = "usuario")
    private Set<Veiculo> veiculos;

    public String getNome(){
        return this.nome;
    }

    public void setNome(String nome){
        this.nome = nome;
    }
    
    public String getEmail(){
        return this.email;
    }

    public void setEmail(String email){
        this.email = email;
    }

    public String getCpf(){
        return this.cpf;
    }

    public void setCpf(String cpf){
        this.cpf = cpf;
    }

    public Date getNascimento(){
        return this.nascimento;
    }

    public void setNascimento(Date nascimento){
        this.nascimento = nascimento;
    }

    public Set<Veiculo> getVeiculos() {
        return this.veiculos;
    }

    public void setVeiculos (Set<Veiculo> veiculos) {
        this.veiculos = veiculos;
    }


}
