function convertBackwards(x: number): number {
    const strings = x.toString().split("")
    const reversed = strings.reverse().join("")
    return Number(reversed)
}

function isPalindrome(x: number): boolean {
    const forwards = x
    const backwards = convertBackwards(x)
    return forwards === backwards ? true : false
};

const result = isPalindrome(121)

// Should be true
console.log(result)