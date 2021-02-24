package example.micronaut.controller

import io.micronaut.http.MediaType
import io.micronaut.http.annotation.Controller
import io.micronaut.http.annotation.Get
import io.micronaut.http.annotation.Produces
import org.slf4j.LoggerFactory


@Controller("/hello")
class HelloController {

    private val logger = LoggerFactory.getLogger(javaClass)

    @Get("/")
    @Produces(MediaType.TEXT_PLAIN)
    fun index(): String {
        logger.info("log_type=create_cart, cart={}", "cart")

        return "Hello World"
    }
}