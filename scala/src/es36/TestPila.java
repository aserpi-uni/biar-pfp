package es36;

class TestPila {
    public static void main(String args[]) {
        Pila<Integer> p = new Pila<Integer>();
        for (int i=0; i<10; i++) p.push(i);
        while (!p.isEmpty()) System.out.println(p.pop());
    }
}
