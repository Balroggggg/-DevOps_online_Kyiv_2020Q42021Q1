import unittest
import vowelfinder

class VowelFinderTest(unittest.TestCase):
    def test_no_vowels(self):
        s="dfghgfdtr"
        result = vowelfinder.count_vowels(s)
        self.assertEqual(result, 0)

    def test_all_vowels(self):
        s="aaaiiioooe"
        result = vowelfinder.count_vowels(s)
        self.assertEqual(result, 10)
    
    def test_some_vowels(self):
        s="aafgfdopi"
        result=vowelfinder.count_vowels(s)
        self.assertEqual(result, 4)

if __name__=='__main__':
    unittest.main()
    

