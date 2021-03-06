package demo.spring4.webmvc.rest.server.service;

import demo.spring4.webmvc.rest.server.model.Todo;
import demo.spring4.webmvc.rest.server.repository.TodoRepository;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Optional;

@Service
public class TodoServiceImpl implements TodoService {

    private final TodoRepository todoRepository;

    public TodoServiceImpl(TodoRepository todoRepository) {
        this.todoRepository = todoRepository;
    }

    @Override
    public List<Todo> findAll() {
        return todoRepository.findAll();
    }

    @Override
    public Optional<Todo> findById(String id) {
        return Optional.ofNullable(todoRepository.findOne(id));
    }

    @Override
    public Todo create(Todo todo) {
        return todoRepository.insert(todo);
    }

    @Override
    public Todo update(Todo todo) {
        return todoRepository.save(todo);
    }

    @Override
    public void deleteAll() {
        todoRepository.deleteAll();
    }

    @Override
    public void deleteById(String id) {
        todoRepository.delete(id);
    }
}
