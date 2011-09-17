from fibseq.views import fib
from django.test import TestCase

class FibTest(TestCase):
    def setUp(self):
        pass
    def test_zero_to_one(self):
        self.assertEqual(fib(0), [0])
        self.assertEqual(fib(1), [0,1])
    def test_two_to_six(self):
        self.assertEqual(fib(2), [0,1,1])
        self.assertEqual(fib(3), [0,1,1,2])
        self.assertEqual(fib(4), [0,1,1,2,3])
        self.assertEqual(fib(5), [0,1,1,2,3,5])
        self.assertEqual(fib(6), [0,1,1,2,3,5,8])

