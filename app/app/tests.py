from .calc import add
from django.test import TestCase


class CalcTests(TestCase):

    def test_add_numbers(self):
        """ Test that two numbers are added together"""
        self.assertEqual(add(3,8), 11)
