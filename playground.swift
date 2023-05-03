import Foundation

open class Shape {
  func calculateArea() -> Double {
    fatalError("Not implemented")
  }

  func calculatePerimeter() -> Double {
    fatalError("Not implemented")
  }
}

class Rectangle: Shape {
  private let height: Double
  private let width: Double

  init(height: Double, width: Double) {
    self.height = height
    self.width = width
  }

  override func calculateArea() -> Double {
    return height * width
  }

  override func calculatePerimeter() -> Double {
    return (height + width) * 2
  }
}

class Circle: Shape {
  private let radius: Double

  init(radius: Double) {
    self.radius = radius
  }

  override func calculateArea() -> Double {
    return Double.pi * pow(radius, 2)
  }

  override func calculatePerimeter() -> Double {
    return 2 * Double.pi * radius
  }
}

class Square: Shape {
  private let side: Double

  init(side: Double) {
    self.side = side
  }

  override func calculateArea() -> Double {
    return pow(side, 2)
  }

  override func calculatePerimeter() -> Double {
    return side * 4
  }
}

let rectangle = Rectangle(height: 2, width: 3)
let circle = Circle(radius: 5)
let square = Square(side: 4)

print("Фигура: прямоугольник. Площадь: \(rectangle.calculateArea()). Периметр: \(rectangle.calculatePerimeter()).")

print("Фигура: круг. Площадь: \(circle.calculateArea()). Периметр: \(circle.calculatePerimeter()).")

print("Фигура: квадрат. Площадь: \(square.calculateArea()). Периметр: \(square.calculatePerimeter()).")

var shapes: [Shape] = [Rectangle(height: 2, width: 3), Circle(radius: 5), Square(side: 4)]
var sumAreas: Double = 0.0
var sumPerimeters: Double = 0.0

for shape in shapes {
  sumAreas += shape.calculateArea()
  sumPerimeters += shape.calculatePerimeter()
}

print("\nСумма всех площадей равна \(sumAreas), сумма всех периметров равна \(sumPerimeters).")
