package compilador.programa;

import java.io.File;

import compilador.Main;
import compilador.analisadorsintatico.ParseException;
import compilador.analisadorsintatico.Analisador;
import compilador.semantico.AnalisadorSemantico;
import compilador.semantico.Instrucao;
import compilador.maquinaVirtual.MaquinaVirtual;
import javafx.application.Platform;

import javafx.event.EventHandler;
import javafx.fxml.FXMLLoader;
import javafx.scene.Parent;
import javafx.scene.Scene;
import javafx.scene.control.*;
import javafx.scene.input.Clipboard;
import javafx.stage.FileChooser;
import javafx.stage.Stage;
import javafx.stage.WindowEvent;

import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.PrintWriter;
import java.nio.file.Paths;
import java.util.ArrayList;
import java.util.List;
import java.util.Scanner;

public class Controller {
    private String titulo = "Compilador";

    private boolean conteudoAlterou;
    private boolean arquivoNovo;
    private String pastaCorrente = "";

    final Clipboard clipboard;
    final FileChooser fileChooser;

    public TextArea textAreaEditar;
    public TextArea textAreaMensagens;
    public TextArea textColunaEsquerda;
    public Label posicaoLinha;
    public Label posicaoColuna;
    public Menu botaoEquipe;

    public static List<Instrucao> listaDeInstrucoes;

    File arquivoAberto;

    public Controller() {
        fileChooser = new FileChooser();
        fileChooser.getExtensionFilters().addAll(new FileChooser.ExtensionFilter("Documentos de texto", "*.txt"));
        fileChooser.setInitialDirectory(new File(Paths.get(".").toAbsolutePath().normalize().toString()));

        clipboard = Clipboard.getSystemClipboard();
        configurarBotaoFecharPrograma();
    }

    public void initialize() {
        reiniciarPrograma();
    }

    public void reiniciarPrograma() {
        this.listaDeInstrucoes = new ArrayList<Instrucao>();
        textAreaEditar.clear();
        textAreaMensagens.clear();
        arquivoNovo = true;
        arquivoAberto = null;
        setConteudoAlterou(false);
        setTitulo();
        setLinhaEColuna(1, 0);
        atualizaCountLinhasEsquerda();
    }

    public void setTitulo() {
        Main.stage.setTitle(titulo);
    }

    public void setTitulo(String texto) {
        Main.stage.setTitle(texto);
    }

    public void configurarBotaoFecharPrograma() {
        Main.stage.setOnCloseRequest(new EventHandler<WindowEvent>() {
            @Override
            public void handle(WindowEvent event) {
                event.consume();
                fecharPrograma();
            }
        });
    }

    public void fecharPrograma() {
        if (isConteudoAlterou() && !textAreaEditar.getText().equals("")) {
            ButtonType respostaAviso = mostrarAviso("Deseja salvar o arquivo?");

            if (respostaAviso == ButtonType.YES) {
                salvar();
                Platform.exit();
            } else if (respostaAviso == ButtonType.NO) {
                Platform.exit();
            }
        } else {
            Platform.exit();
        }
    }

    public boolean isConteudoAlterou() {
        return conteudoAlterou;
    }

    public void setConteudoAlterou(boolean conteudoAlterou) {
        this.conteudoAlterou = conteudoAlterou;
    }

    public void marcarFlagConteudoAlterou() {
        if (!isConteudoAlterou()) {
            setConteudoAlterou(true);
        }

        atualizaPosicaoCursor();
        atualizaCountLinhasEsquerda();
    }

    public void atualizaCountLinhasEsquerda() {
        String textColuna = "";

        int quantidadeDeLinhas = textAreaEditar.getParagraphs().size();

        for (int i = 1; i <= quantidadeDeLinhas; i++) {
            textColuna += i + "\n";
        }

        textColunaEsquerda.setText(textColuna);
        textColunaEsquerda.setScrollTop(textAreaEditar.getScrollTop());
    }

    public void setLinhaEColuna(int linha, int coluna) {
        posicaoLinha.setText("Linha: " + linha + ",");
        posicaoColuna.setText("Coluna: " + coluna);
    }

    public void atualizaPosicaoCursor() {
        int qtdDeLinhas = textAreaEditar.getParagraphs().size();
        int caret = textAreaEditar.getCaretPosition();

        for (int i = 0; i < qtdDeLinhas; i++, caret--) {
            CharSequence linhaConteudo = textAreaEditar.getParagraphs().get(i);
            int tamanhoLinhaAtual = linhaConteudo.length();

            if (caret == 0 && tamanhoLinhaAtual == 0) {
                int linhaTemp = i + 1;
                int colunaTemp = caret;
                setLinhaEColuna(linhaTemp, colunaTemp);
                caret = 0;
            } else {
                for (int j = 0; j < tamanhoLinhaAtual; j++, caret--) {
                    if ((caret - 1) == 0) {
                        int linhaTemp = i + 1;
                        int colunaTemp = caret + j;
                        setLinhaEColuna(linhaTemp, colunaTemp);
                        caret = 0;
                        break;
                    } else if (caret == 0) {
                        int linhaTemp = i + 1;
                        int colunaTemp = caret;
                        setLinhaEColuna(linhaTemp, colunaTemp);
                        caret = 0;
                    }
                }
            }

            if (caret == 0) {
                break;
            }
        }

//        atualizaCountLinhasEsquerda();
    }

    public ButtonType mostrarAviso(String texto) {
        Alert alert = new Alert(Alert.AlertType.CONFIRMATION, texto, ButtonType.YES, ButtonType.NO, ButtonType.CANCEL);
        alert.showAndWait();

        return alert.getResult();
    }

    public void equipe() {
        Alert alert = new Alert(Alert.AlertType.INFORMATION, "Feito por: Joao Francisco da Silva de Paula", ButtonType.OK);
        alert.showAndWait();
    }

    public void novoArquivo() {
        if (isConteudoAlterou() && !textAreaEditar.getText().equals("")) {
            ButtonType respostaAviso = mostrarAviso("Deseja salvar o arquivo?");

            if (respostaAviso == ButtonType.YES) {
                salvar();
            } else if (respostaAviso == ButtonType.NO) {
                reiniciarPrograma();
            }
        } else {
            reiniciarPrograma();
        }
    }

    public void abrirArquivo() {
        if (isConteudoAlterou() && !textAreaEditar.getText().equals("")) {
            ButtonType respostaAviso = mostrarAviso("Deseja salvar o arquivo?");

            if (respostaAviso == ButtonType.YES) {
                if (arquivoNovo) {
                    salvarComo();
                } else {
                    salvarArquivo(arquivoAberto.getPath());
                }
            } else if (respostaAviso == ButtonType.CANCEL) {
                return;
            }
        }

        File file = fileChooser.showOpenDialog(Main.stage);

        if (file != null) {
            fileChooser.setInitialDirectory(new File(Paths.get(file.getParent()).toAbsolutePath().normalize().toString()));
            carregarArquivo(file);
        }
    }

    public void carregarArquivo(File arquivo) {
        if (arquivo != null) {
            try {
                reiniciarPrograma();
                Scanner fileScanner = new Scanner(arquivo).useDelimiter("(\\b|\\B)");

                while (fileScanner.hasNext()) {
                    textAreaEditar.appendText(fileScanner.next());
                }

                setTitulo(titulo + " - " + arquivo.getName());
                arquivoNovo = false;
                arquivoAberto = arquivo;
            } catch (FileNotFoundException e) {
                e.printStackTrace();
            }
        }
    }

    public void salvar() {
        if (arquivoNovo) {
            salvarComo();
        } else {
            salvarEditado();
        }
    }

    public void salvarComo() {
        File saveFolder = fileChooser.showSaveDialog(null);

        if (saveFolder != null) {
            salvarArquivo(saveFolder.getPath());
        }
    }

    public void salvarComoReabrindo() {
        File saveFolder = fileChooser.showSaveDialog(null);

        if (saveFolder != null) {
            salvarArquivo(saveFolder.getPath(), true);
        }
    }

    public void salvarEditado() {
        salvarArquivo(arquivoAberto.getPath(), true);
    }

    public void salvarArquivo(String salvarLocal) {
        File file = new File(salvarLocal);

        PrintWriter outFile = null;

        try {
            outFile = new PrintWriter(file);
        } catch (FileNotFoundException e) {
            e.printStackTrace();
        }

        outFile.println(textAreaEditar.getText());
        outFile.close();

        reiniciarPrograma();
    }

    public void salvarArquivo(String salvarLocal, Boolean reabrirArquivo) {
        File file = new File(salvarLocal);

        PrintWriter outFile = null;

        try {
            outFile = new PrintWriter(file);
        } catch (FileNotFoundException e) {
            e.printStackTrace();
        }

        outFile.println(textAreaEditar.getText());
        outFile.close();

        carregarArquivo(file);
    }

    public void copiar() {
        textAreaEditar.copy();
        atualizaCountLinhasEsquerda();
    }

    public void recortar() {
        textAreaEditar.cut();
        atualizaCountLinhasEsquerda();
    }

    public void colar() {
        if (clipboard.hasString()) {
            textAreaEditar.paste();
            atualizaCountLinhasEsquerda();
        }
    }

    public void compilar() throws ParseException {
        String result = "";

        if (textAreaEditar.getText().length() == 0) {
            result = "Insira algum codigo na linguagem 2021-1 para ser compilado.";
        } else {
            java.io.InputStream targetStream = new java.io.ByteArrayInputStream(textAreaEditar.getText().getBytes());
            Analisador tokenizer = new Analisador(targetStream);

            listaDeInstrucoes = new ArrayList<Instrucao>();
            tokenizer.semantico = new AnalisadorSemantico();

            result = tokenizer.iniciarCompilador(tokenizer, new String[0], textAreaEditar.getText());

//            System.out.println(listaDeInstrucoes.toString());

            if(listaDeInstrucoes.size() > 0) {
                carregarTabelaCodigoObjeto(listaDeInstrucoes);
            }
        }

        textAreaMensagens.setText(result);
    }

    public void executar() throws ParseException{
        String result = "";

        if (textAreaEditar.getText().length() == 0) {
            result = "Insira algum codigo na linguagem 2021-1 para ser executado.";
        } else {
            java.io.InputStream targetStream = new java.io.ByteArrayInputStream(textAreaEditar.getText().getBytes());
            Analisador tokenizer = new Analisador(targetStream);

            listaDeInstrucoes = new ArrayList<Instrucao>();
            tokenizer.semantico = new AnalisadorSemantico();

            result = tokenizer.iniciarCompilador(tokenizer, new String[0], textAreaEditar.getText());

            if(listaDeInstrucoes.size() > 0) {
                MaquinaVirtual maquinaVirtual = new MaquinaVirtual(listaDeInstrucoes);

                List<String> mensagensVM = maquinaVirtual.iniciarMaquinaVirtual();
                System.out.println("Fim da execução. Mensagens do programa:");
                for (int i = 0; i < mensagensVM.size(); i++) {
                    System.out.println(mensagensVM.get(i).toString());
                }
            }

        }

        textAreaMensagens.setText(result);
    }

    public void carregarTabelaCodigoObjeto(List<Instrucao> instrucoes) {
        Parent root = null;
        try {
            this.listaDeInstrucoes = instrucoes;
            root = FXMLLoader.load(getClass().getResource("tabelaCodigoGerado.fxml"));
            Stage stage = new Stage();
            stage.setTitle("Codigo objeto");
            stage.setScene(new Scene(root, 450, 450));
            stage.show();
        } catch (IOException e) {
            e.printStackTrace();
        }
    }
}
