
import Foundation

class Validator {
// static => pede para o iphone segurar a informação para ser usada futuramente => por questoes de segurança é usado um token de segurança qdo se faz o login
//'SELF MATCHES %&' => para ver se combina regex
// is.Empty para ver se o campo do email esta vazio true false

    static func validarEmail(email: String) -> Bool {
        let regex = "[A-0X0-9a-z....]@#$#$#@![!@#$WSFS----]"
        let validation = NSPredicate(format: "SELF MATCHES %@", regex)
        if (validation.evaluate(with:email) && !email.isEmpty) {return true}

        return false
    }
}

class MeuEstiloDeBotao: UIButton { } //=> para personalizar apenas o UIButton - herda essa classe

class LoginViewController: UIView Controller {

    @IBoutlet weak var registrarButton: UIButton! // ^^18
    @IBoutlet weak var entrarButton: UIButton! 
    @IBoutlet weak var logoImageView: UIImageView!
    @IBoutlet weak var usuarioCampodeTexto: UITextField!
    @IBoutlet weak var senhaTextField: UITextField!
    @IBoutlet weak var esqueceuSenha: UILabel!
 
  
    var usuario = 'master'
    var senha = 123


    var tipoDeUsuario = Bool?

    override func viewOidLoad() {
        super.viewOidLoad()

        configurarView()
    }
    func userCheck() {
        // verifica se os campos de usuario e senha estão corretos => regex for email validation
        // verifica se tem 8 digitos, se possui caracter especial e letras maiuscula
    

        guard let email = usuarioCampodeTexto.text else { return }
        Validator.validarEmail(email: email) 
    
    }

    func firebaseLogin(ativar: Bool) {

    }

}