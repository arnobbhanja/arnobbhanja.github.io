# constexpr - the underused keyword

### what is constexpr ?
`constexpr` is a specifier which was introduced in C++11 to mark a value or computation to be evaluated in compile time the catch being, it can be used only where __constant expressions__ are allowed.
    
### what is its syntax ? //maybe write along the lines of explanation

### why compile time you ask ?
there's not one but, many reasons :
    1. Because it's better to fail early(compile-time) than in production(runtime).
    2. Since _usually_ the evaluations are done at compile time, less runtime overhead as the expressions evaluated at compile time are replaced directly by values.
    3. _often_ lesser binary footprint.
    (## add compiler explorer link to demonstrate 2 & 3 ##)

### why not template metaprogramming then ?
Yes, sure; if overkill is your thing. Because it might generate unnecessary code for something 
where it is not required.

Let's take an example of 

can I use constexpr everywhere ? (value, functions, classes#)
guidelines/ best practices for constexpr ?
tl;dr ?

static const vs constexpr 
auto deduction and ce
rvo and ce
ce and floating point - rt & ct incosistency
throw in constexpr (idiom) - a way to force compile time only
constexpr limitations - recursion depth
const_cast<> constexpr - undefined


constexpr binaryliteral ? embedded ? // not important for all case
