package exampleApp

import io.micronaut.context.annotation.Value
import io.micronaut.http.annotation.Controller
import io.micronaut.http.annotation.Get

@Controller
class SecretsController(
  @Value("\${key}")
  val secret: String?
) {
  @Get("/")
  fun doGet() = secret
}