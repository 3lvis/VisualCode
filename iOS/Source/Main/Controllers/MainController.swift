import UIKit

class MainController: UIViewController {
    lazy var editorController: EditorController = {
        let controller = EditorController()

        return controller
    }()

    lazy var controlsController: ControlsController = {
        let controller = ControlsController()

        return controller
    }()

    lazy var canvasController: CanvasController = {
        let controller = CanvasController()

        return controller
    }()

    override func viewDidLoad() {
        super.viewDidLoad()

        self.view.backgroundColor = .yellow

        self.add(self.editorController)
        self.add(self.controlsController)
        self.add(self.canvasController)
    }

    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()

        let parentHeight = self.view.frame.height
        let parentWidth = self.view.frame.width
        let width = parentWidth / 3

        var editorFrame: CGRect {
            let x = width * 0
            return CGRect(x: x, y: 0, width: width, height: parentHeight)
        }
        self.editorController.view.frame = editorFrame

        var controlsFrame: CGRect {
            let x = width * 1
            return CGRect(x: x, y: 0, width: width, height: parentHeight)
        }
        self.controlsController.view.frame = controlsFrame

        var canvasFrame: CGRect {
            let x = width * 2
            return CGRect(x: x, y: 0, width: width, height: parentHeight)
        }
        self.canvasController.view.frame = canvasFrame
    }
}
