package io.jeeyeon.app.contoller;

import org.springframework.http.HttpStatus;

public record ErrorResponse(HttpStatus status, String message) {
}
