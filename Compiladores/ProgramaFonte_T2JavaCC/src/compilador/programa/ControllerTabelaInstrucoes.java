package compilador.programa;

import compilador.Main;
import compilador.analisadorsintatico.Analisador;
import compilador.analisadorsintatico.ParseException;
import compilador.semantico.Instrucao;
import compilador.semantico.Item;
import javafx.application.Platform;
import javafx.beans.property.SimpleFloatProperty;
import javafx.beans.property.SimpleIntegerProperty;
import javafx.beans.property.SimpleStringProperty;
import javafx.event.EventHandler;
import javafx.fxml.FXMLLoader;
import javafx.scene.Parent;
import javafx.scene.Scene;
import javafx.scene.control.*;
import javafx.scene.control.cell.PropertyValueFactory;
import javafx.scene.input.Clipboard;
import javafx.stage.FileChooser;
import javafx.stage.Stage;
import javafx.stage.WindowEvent;

import java.io.File;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.PrintWriter;
import java.nio.file.Paths;
import java.util.Scanner;

public class ControllerTabelaInstrucoes {
    public TableView<Instrucao> tabelaInstrucoes;

    public void initialize() {
        reiniciarPrograma();
    }

    public void reiniciarPrograma() {
        TableColumn<Instrucao,Integer> numeroColuna = new TableColumn("Número");
        numeroColuna.setCellValueFactory(cellData -> new SimpleIntegerProperty(cellData.getValue().getPointer()).asObject());

        TableColumn<Instrucao,String> codigoColuna = new TableColumn("Instrução");
        codigoColuna.setCellValueFactory(cellData -> new SimpleStringProperty(cellData.getValue().getCode()));

        TableColumn<Instrucao,String> parametroColuna = new TableColumn("Parâmetro");
        parametroColuna.setCellValueFactory(cellData -> new SimpleStringProperty(cellData.getValue().getParameter().toString()));

        tabelaInstrucoes.getColumns().addAll(numeroColuna,codigoColuna,parametroColuna);

        for (Instrucao instrucao : Controller.listaDeInstrucoes) {
            tabelaInstrucoes.getItems().add(instrucao);
        }
    }
}
