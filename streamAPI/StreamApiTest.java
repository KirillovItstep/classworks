public class StreamApiTest {
    private static List<String> numbers =
            Arrays.asList("1", "0", "4", "1", "2", "3", "9", "9", "6", "5");

    @Test
    public void test1() {
        Set<String> set = numbers.stream()
                .limit(5)
                .collect(Collectors.toSet());
        //set.forEach(System.out::println);
        Assertions.assertEquals(5, set);
    }

    @Test
    public void test2() {
        List<Integer> numbersInt = numbers.stream()
                .limit(5)
               .map(Integer::parseInt)
                .collect(Collectors.toList());
        Assertions.assertEquals(5, numbersInt);
    }

    @Test
    public void test3() {
        List<Integer> numbersInt = numbers.stream()
                .map(Integer::parseInt)
                .filter(i -> i % 2 == 0 && i > 2)
                .collect(Collectors.toList());
        Assertions.assertEquals(5, numbersInt);
    }

    @Test
    public void test4() {
        double avg = numbers.stream()
                .mapToDouble(Double::parseDouble)
                .average()
                .orElse(0);
        Assertions.assertEquals(5, avg);
    }

    @Test
    public void test5() {
        List<Integer> numbersList = numbers.stream()
                .map(Integer::parseInt)
                .collect(Collectors.toList());
        numbersList.removeIf(i -> (i % 2 != 0));
        Assertions.assertEquals(5, numbersList);
    }

    @Test
    public void test6() {
        long count = numbers.stream()
                .map(Integer::parseInt)
                .distinct()
                .count();
        Assertions.assertEquals(5, count);
    }

    @Test
    public void test7() {
        double min = numbers.stream()
                .mapToInt(Integer::parseInt)
                .min()
                .orElse(0);
        Assertions.assertEquals(5, min);
    }

    @Test
    public void test8() {
        int sum = numbers.stream()
                .mapToInt(Integer::parseInt)
                .filter(i -> (i % 2 == 0))
                .sum();
        Assertions.assertEquals(5, sum);
    }

    @Test
    public void test9() {
        List<String> numbersList = numbers.stream()
                .sorted(Comparator.naturalOrder())
                .collect(Collectors.toList());
        Assertions.assertEquals(5, numbersList);
    }

    @Test
    public void test10() {
        Map<Boolean, List<Integer>> mapNumbers = numbers.stream()
                .map(Integer::parseInt)
                .collect(Collectors.groupingBy(i -> (i % 3 == 0 || i % 5 == 0)));
        Assertions.assertEquals(5, mapNumbers);
    }

}
