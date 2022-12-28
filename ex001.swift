//XML (==Json) CTRL +shift+ L  => ferramentas 



//constraint = unidade de medida para construir tela
import UIKit

class LoginViewController: UIView Controller {

    @IBoutlet weak var registrarButton: UIButton! 
    @IBoutlet weak var entrarButton: UIButton! 
    @IBoutlet weak var logoImageView: UIImageView!
    @IBoutlet weak var usuarioCampodeTexto: UITextField!
    @IBoutlet weak var senhaTextField: UITextField!
    @IBoutlet weak var esqueceuSenha: UILabel!
  // ! => desembrula o arquivo forçado... para ter certeza q a propriedade existe
  
    var usuario = 'master'// variavel que armazena uma palavra
    var senha = 123

    var tipoDeUsuario = Bool?

    override func viewOidLoad() {
        super.viewOidLoad()

        configurarView()
    }
    func userCheck() {
        // verifica se os campos de usuario e senha estão corretos
    }
    func firebaseLogin(ativar: Bool) {

    }



  //viewCode == codigo dentro da classe => app ++ leve
  //dev. xib => 1 tela...  story board varias telas
  
  //Arquivo XML === .xib
  //JR = StoryBoard === varios arquivos .xib
  //Pleno = .xib
  //Senior = ViewCode

}