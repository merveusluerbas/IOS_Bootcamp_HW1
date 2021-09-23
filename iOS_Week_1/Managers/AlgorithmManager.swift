//
//  AlgorithmManager.swift
//  iOS_Week_1
//
//  Created by Erkut Bas on 19.09.2021.
//

import Foundation

class AlgorithmManager: AlgorithmProtocol {
    
    // MARK: - Two Sum
    /*
     Given an array of integers nums and an integer target, return indices of the two numbers such that they add up to target.
     You may assume that each input would have exactly one solution, and you may not use the same element twice.
     You can return the answer in any order.
     
     Input: nums = [2,7,11,15], target = 9
     Output: [0,1]
     Output: Because nums[0] + nums[1] == 9, we return [0, 1].
     */
    func twoSumTest() {
        let nums = [2,7,11,15]
        let target = 9
        let result = twoSum(nums, target)
        print("First Example : For \(nums) array and target : \(target), result indices : \(result)")
        print("Second Example : For \([1,5,4,3,6]) array and target : \(7), result indices : \(twoSum([1,5,4,3,6], 7))")
    }
    
    private func twoSum(_ nums: [Int], _ target: Int) -> [Int] {
        // I solved of the question for you guys :D :D :D
        
        // Remaining Values are stored in remainingValueDict dictionary with indices.
        var remainingValueDict : [Int:Int] = [:]

        for i in 0...nums.count-1 {
            // If remaining value exist in dictionary, return result.
            if let remainingIndex = remainingValueDict[nums[i]] {
                
                return [remainingIndex, i]
            }
            // Unless remaining value exist in dictionary, add remaining value to dictionary.
            else {
                remainingValueDict[target - nums[i]] = i
            }
        
        }
        
        // This code never return this array
        return [-1,-1]
    }
    
    // MARK: - IsPalindrome
    /*
     Given a string s, determine if it is a palindrome, considering only alphanumeric characters and ignoring cases.
     Input: s = "A man, a plan, a canal: Panama"
     Output: true
     Explanation: "amanaplanacanalpanama" is a palindrome.
     */
    func isPalindromTest() {
        let string = "A man, a plan, a canal: Panama"
        let string2 = "Was it a cat I sew?"
        print("First Example: Is '\(string)' Palindrome? Answer is \(isPalindrome(string)).")
        print("Second Example: Is '\(string2)' Palindrome? Answer is \(isPalindrome(string2)).")
    }
    
  
        
    func isPalindrome(_ s: String) -> Bool {
        
        var head = 0
        var tail = s.count - 1
        
        //Head and tail approach is implemented to solve algorithm.
        
        while head < tail {
            //Checking characters
            if !s[head].isLetter && !s[head].isNumber {
                head += 1
                continue
            }
            if !s[tail].isLetter && !s[tail].isNumber {
                tail -= 1
                continue
            }
            if s[head].lowercased() != s[tail].lowercased() {
                return false
            } else {
                head += 1
                tail -= 1
            }
        }
        return true
    }
    
    // MARK: - Valid Anagram
    /*
     Given two strings s and t, return true if t is an anagram of s, and false otherwise.
     Input: s = "anagram", t = "nagaram"
     Output: true
     */
    func isAnagramTest() {
        let s = "Thing"
        let t = "Night"
        let s2 = "Triangle"
        let t2 = "Integrel"
        print("First Example: Is '\(s)' and '\(t)' Anagram? Answer is \(isAnagram(s, t)).")
        print("Second Example: Is '\(s2)' and '\(t2)' Anagram? Answer is \(isAnagram(s2, t2)).")
    }
    
    func isAnagram(_ s: String, _ t: String) -> Bool {
        
        // If the size of strings are not equal, result is false.
        if s.count != t.count {
            
            return false
        }
        // Dictionary holds the letters with counts.
        var letterDictionary : [Character:Int] = [:]
        // Filling the dictionary with letters of s.
        for c in s.lowercased() {
            if letterDictionary[c] != nil {
                letterDictionary[c]! += 1
            } else {
                letterDictionary[c] = 1
            }
        }
        // Checking letters of t with letters of s.
        for c in t.lowercased() {
            if letterDictionary[c] == nil || letterDictionary[c] == 0 {
                return false
            } else {
                letterDictionary[c]! -= 1
            }
        }
        return true
    }
    
    // MARK: - Contains Duplicate
    /*
     Given an integer array nums, return true if any value appears at least twice in the array, and return false if every element is distinct.
     Input: nums = [1,2,3,1]
     Output: true
     Input: nums = [1,2,3,4]
     Output: false
     */
    func duplicateTest() {
        let array1 = [1,2,3,4,5,3]
        let array2 = [10,100,1000]
        print("First Example: Does '\(array1)' have duplicate elements? Answer is \(containsDuplicate(array1)).")
        print("Second Example: Does '\(array2)' have duplicate elements? Answer is \(containsDuplicate(array2)).")
        
    }
    
    func containsDuplicate(_ nums: [Int]) -> Bool {
        
        var numSet : Set<Int> = []
        
        for n in nums {
            if numSet.contains(n) {
                return true
            }else {
                numSet.insert(n)
            }
        }
        return false
    }

    
    // MARK: - Merge Sorted Array
    /*
    
     You are given two integer arrays nums1 and nums2, sorted in non-decreasing order, and two integers m and n, representing the number of elements in nums1 and nums2 respectively.
     Merge nums1 and nums2 into a single array sorted in non-decreasing order.
     The final sorted array should not be returned by the function, but instead be stored inside the array nums1. To accommodate this, nums1 has a length of m + n, where the first m elements denote the elements that should be merged, and the last n elements are set to 0 and should be ignored. nums2 has a length of n.
     
     Input: nums1 = [1,2,3,0,0,0], m = 3, nums2 = [2,5,6], n = 3
     Output: [1,2,2,3,5,6]
     Explanation: The arrays we are merging are [1,2,3] and [2,5,6].
     The result of the merge is [1,2,2,3,5,6] with the underlined elements coming from nums1.
     */
    func mergeArraysTest() {
        
    }
    
    private func merge(_ nums1: inout [Int], _ m: Int, _ nums2: [Int], _ n: Int) {
            
    }
    
    // MARK: - Intersection of Two Arrays
    /*
     Given two integer arrays nums1 and nums2, return an array of their intersection. Each element in the result must appear as many times as it shows in both arrays and you may return the result in any order.
     
     Input: nums1 = [1,2,2,1], nums2 = [2,2]
     Output: [2,2]
     */
    func arrayIntersectionTest() {
        
        let array1 = [1,2,3,4,5,3]
        let array2 = [10,3,0,3,1]
        
        
        print("Intersection of '\(array1)' and '\(array2)' is \(intersect(array1, array2)).")
        
    }
    
    func intersect(_ nums1: [Int], _ nums2: [Int]) -> [Int] {
        
        var intersectionArray : [Int] = []
        var controlDictionary : [Int:Int] = [:]
        
        for n1 in nums1 {
            if controlDictionary[n1] != nil {
                controlDictionary[n1]! += 1
            } else {
                controlDictionary[n1] = 1
            }
        }
        
        for n2 in nums2 {
            if controlDictionary[n2] != nil && controlDictionary[n2] != 0 {
                controlDictionary[n2]! -= 1
                intersectionArray.append(n2)
            }
        }
        return intersectionArray
    }
    
    // MARK: - Missing Number
    /*
     Given an array nums containing n distinct numbers in the range [0, n], return the only number in the range that is missing from the array.

     Input: nums = [3,0,1]
     Output: 2
     Explanation: n = 3 since there are 3 numbers, so all numbers are in the range [0,3]. 2 is the missing number in the range since it does not appear in nums.

     */
    func missingNumberTest() {
        let missingArray = [0,3,2,4,1,6,7,8,9]
        print("The Missing Number in '\(missingArray)' is \(missingNumber(missingArray)).")
    }
    
    private func missingNumber(_ nums: [Int]) -> Int {
            let sumNumber = (nums.count) * (nums.count + 1)/2
            let sumOfArray = nums.reduce(0, +)
            return sumNumber - sumOfArray
        }
    
}
    

// Get character with index
extension StringProtocol {
    subscript(offset: Int) -> Character {
        self[index(startIndex, offsetBy: offset)]
    }
}
