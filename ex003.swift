




class MeuEstiloDeBotao: UIButton { } //=> para personalizar apenas o UIButton - herda essa classe

class LoginViewController: UIView Controller {

    @IBoutlet weak var registrarButton: UIButton! // ^^18
    @IBoutlet weak var entrarButton: UIButton! 
    @IBoutlet weak var logoImageView: UIImageView!
    @IBoutlet weak var usuarioCampodeTexto: UITextField!
    @IBoutlet weak var senhaTextField: UITextField!
    @IBoutlet weak var esqueceuSenha: UILabel!
 //weak => nao se preocupe em guardar
 //IMPORTANTE: ciclo retido  - o app começa a ficar lento
  
}// extension => controlar os campos de texto ... linha de cima faz parte do view controller *(chaves{})
// função que verifica o que o usuario digita
extension LoginViewController: UITextFieldDelegate{

    func textField(textField: UITextField, should ChangeCharactersIn range: NSRange,
        replacementString string: String) -> Bool{
        let text = textField.text ??""

        let replaceString = (text as NSString).replacingCharacters(in: range, with: string)

        print("usuario digitou no email -->", replaceString)

        return true;
        
    }
}
// switch => inves de if...usa menos ifs....verifica qual campo de texto o usuario esta usando
extension LoginViewController: UITextFieldDelegate{
    func textField(textField: UITextField, should ChangeCharactersIn range: NSRange, replacementString string: String) -> Bool{
        
        guard let text = textField.txt else {return true}
        let replaceString = (text as NSString).replacingCharacters(in: range, with: string)

        switch textField {
        case usuarioCampodeTexto:

            let emailValido = Validator.validarEmail(email:replaceString)
            print(replacementString, emailValido)

        case senhaTextField:
            let senhaEvalida = Validator.validarSenha(senha: string)
        default:
            break
        }
        
        return true;       
    }
}