package demo.server;

import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.databind.ObjectMapper;
import org.springframework.stereotype.Component;
import org.springframework.web.reactive.socket.WebSocketHandler;
import org.springframework.web.reactive.socket.WebSocketMessage;
import org.springframework.web.reactive.socket.WebSocketSession;
import reactor.core.publisher.Flux;
import reactor.core.publisher.Mono;

import java.time.Duration;
import java.util.concurrent.atomic.AtomicInteger;

import static java.time.LocalDateTime.now;

@Component
public class DemoWebSocketHandler implements WebSocketHandler {

    private static final AtomicInteger ID = new AtomicInteger();
    private static final ObjectMapper OBJECT_MAPPER = new ObjectMapper();

    private Flux<String> eventFlux = Flux.generate(sink -> {
        Event event = new Event(String.valueOf(ID.getAndIncrement()), now().toString());
        try {
            sink.next(OBJECT_MAPPER.writeValueAsString(event));
        } catch (JsonProcessingException e) {
            sink.error(e);
        }
    });

    private Flux<String> intervalFlux = Flux.interval(Duration.ofMillis(1000L))
            .zipWith(eventFlux, (time, event) -> event);

    @Override
    public Mono<Void> handle(WebSocketSession webSocketSession) {
        return webSocketSession.send(intervalFlux
                .map(webSocketSession::textMessage))
                .and(webSocketSession.receive()
                        .map(WebSocketMessage::getPayloadAsText).log());
    }
}
