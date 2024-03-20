#  Things to Demo

## Previews
- Multiple #Previews
```
#Preview("Landscape", traits: .landscapeLeft) {
    View1()
}
```

- Names
- #Preview traits
        traits: .landscapeLeft
        traits: .sizeThatFitsLayout
        .preferredColorScheme(.dark)
        .environment(\.sizeCategory, .extraExtraLarge)
        

## Dividers
- Use overlay rather than background.
    `.frame(minHeight: 5)`
        Rectangle()
            .fill(.red)
            .frame(maxHeight: 1)
            

- Why use Divider rather than fully custom (Rectangle).
    Transparency
    Device screen resolution: 1px vs 1pt
    A11y change
    

## ScrollView Clipping
    .shadow(color: .black, radius: 17, y: 7)  // CardView: Make shadow more obvious.
    // Notice there's no x offset. Apple shadows always come from a light source straight above.
    .scrollClipDisabled()  // iOS 17 and later. Fixes shadow, but scroll indicator is in wrong position.
    // Move padding() inside of ScrollView.
    
    
## Animation
    @Namespace private var animation  // Define this in the root view.
    let animation: Namespace.ID  // Define this in children and pass it in. Don't name it `namespace`.
    .namespace(animation)  // Add this to the root to put the namespace in the environment.
    @Environment(\.namespace) private var animation  // Get it in the children like this.
    It's possible to put this in an environment variable, but the technique causes a permanant warning.
    Can't display the new view using a NavigationLink.
            
## Links
[SimpleAni](https://github.com/DaveBatton/SimpleAni)
[SwiftUI-Matched-Geometry-Effect](https://github.com/DaveBatton/SwiftUI-Matched-Geometry-Effect)
