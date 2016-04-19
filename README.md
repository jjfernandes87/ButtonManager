# ButtonManager
Crie botões customizados a partir do próprio Interface Builder do Xcode, configure seu layout, use o UIActivityIndicatorView para indicar a realização de algum processo fora da Thread princial

[http://jjfernandes87.github.io/ButtonManager/](http://jjfernandes87.github.io/ButtonManager/)

# How to use it
Você pode configurar a aparência do botão através do Xcode Inspector

![Xcode Inspector]
(http://i.imgur.com/vRn2Quu.gif)

Ou você pode criar o botão em seu próprio código, fazendo isso:

```
override func viewDidLoad() {
	super.viewDidLoad()
	createSimpleButtonManagerNoLoading()
	createSimpleButtonManagerWithLoading()
	createSimpleButtonManagerDisable()
}

```

```

func createSimpleButtonManagerNoLoading() {
    let button = ButtonManager(frame: CGRectMake(15, 140, 345, 44))
    button.setTitle("no loading", forState: .Normal)
    button.fillColor = UIColor.lightGrayColor()
    button.strokeColor = UIColor.darkGrayColor()
    button.textColor = UIColor.darkGrayColor()
    button.loading = false
    button.cornerRadius = 5
    button.borderWidth = 1
    
    view.addSubview(button)
}

```

```

func createSimpleButtonManagerWithLoading() {
    let button = ButtonManager(frame: CGRectMake(15, 204, 345, 44))
    button.setTitle("with loading", forState: .Normal)
    button.fillColor = UIColor.darkGrayColor()
    button.strokeColor = UIColor.lightGrayColor()
    button.textColor = UIColor.lightGrayColor()
    button.cornerRadius = 5
    button.borderWidth = 1
    
    view.addSubview(button)
}

```

```

func createSimpleButtonManagerDisable() {
    let button = ButtonManager(frame: CGRectMake(15, 268, 345, 44))
    button.setTitle("disable", forState: .Normal)
    button.fillColor = UIColor.lightGrayColor()
    button.strokeColor = UIColor.lightGrayColor()
    button.textColor = UIColor.darkGrayColor()
    button.cornerRadius = 5
    button.borderWidth = 1
    button.disable = false
    
    view.addSubview(button)
}

```
# License