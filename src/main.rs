use std::collections::HashMap;
use std::collections::LinkedList;

// 0020 Valid Parentheses
pub fn is_valid(s: String) -> bool {
    let mut stack: LinkedList<char> = LinkedList::new();

    for c in s.chars() {
        if c == ')' || c == ']' || c == '}' {
            if stack.len() == 0 || !match_closing(c, stack.pop_back()) {
                return false;
            }
        } else {
            stack.push_back(c)
        }
    }

    return stack.len() == 0;
}

fn match_closing(c: char, stack_value: Option<char>) -> bool {
    let map: HashMap<char, char> = [('(', ')'), ('[', ']'), ('{', '}')]
        .iter()
        .cloned()
        .collect();

    match stack_value {
        None => false,
        Some(x) => match map.get(&x) {
            None => false,
            Some(value) => *value == c,
        },
    }
}

fn main() {
    // let mut hash_map = HashMap::new();

    println!("Hello, world!");
}
