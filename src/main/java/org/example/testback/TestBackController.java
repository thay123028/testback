package org.example.testback;

import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping("/test")
public class TestBackController {

    public ResponseEntity test() {
        return ResponseEntity.status(200).body("안농");
    }
}
