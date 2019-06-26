package com.example.que.repos;

import com.example.que.domain.Question;
import org.springframework.data.jpa.repository.JpaRepository;

import java.util.List;
import java.util.Optional;

public interface QuestionRepo extends JpaRepository<Question, Long> {
    List<Question> findQuestionsByQueId(Long queId);
    Optional<Question> findById(Long id);
    Question findQuestionById(Long id);
}

