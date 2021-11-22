const String storyBodyTemp =
    // ignore: leading_newlines_in_multiline_strings
    // ignore: prefer_single_quotes
    // ignore: leading_newlines_in_multiline_strings
    '''Lorem ipsum dolor sit amet, consectetur adipiscing elit. Quisque nec fermentum urna, nec volutpat odio. Sed maximus dui ut tincidunt porttitor. Pellentesque eu nulla orci. Suspendisse vulputate imperdiet nulla, eu egestas nunc rutrum nec. Aliquam erat volutpat. Proin convallis porta congue. Vestibulum dignissim blandit placerat. Donec vehicula lorem eget velit dictum blandit.

Aliquam accumsan neque non risus aliquam scelerisque. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae; Nunc nec nisi ornare, auctor lorem efficitur, mattis est. Morbi dignissim posuere vestibulum. Suspendisse scelerisque, ipsum vulputate faucibus fringilla, dolor est pharetra sem, sed elementum nibh massa eget eros. Aliquam accumsan ut risus in luctus. Sed scelerisque imperdiet risus, at auctor quam facilisis non. Aliquam auctor nisi gravida, scelerisque quam commodo, luctus lectus. Fusce id sagittis augue, ac feugiat orci. In sit amet mauris et dolor volutpat interdum. Aliquam erat volutpat. Fusce pellentesque lorem ac metus finibus, quis pretium sem convallis. Proin a mi congue, rhoncus mi ut, hendrerit est. Etiam aliquet mattis ex, ut convallis nulla rhoncus ac. Quisque lacinia mauris massa, vitae tristique tortor blandit porttitor.

Proin a vehicula neque. Cras luctus enim quis lorem luctus, venenatis ullamcorper eros faucibus. Nam quis posuere magna, id efficitur mi. Nullam eu arcu vestibulum lorem varius pulvinar a vitae massa. Nunc convallis et mauris vitae aliquet. Fusce et nisi ut felis porttitor bibendum. In malesuada sem id augue cursus, in semper turpis convallis. Sed eu lacus eros. Aliquam dignissim mauris sit amet semper posuere. Fusce dignissim felis eget ipsum aliquam pulvinar. Nunc lobortis lacus quis sapien gravida, eu placerat est mattis. Duis tempus neque iaculis bibendum convallis. Nulla vitae lobortis sem, vel ullamcorper lectus. Nunc vel vehicula lacus.

Duis commodo lectus et est tristique malesuada vel in orci. Proin eu ligula euismod leo ultrices dignissim vitae quis est. Donec justo nisi, tempus vitae felis vitae, pellentesque posuere ipsum. Aenean volutpat facilisis est. Cras eget mollis nisi. Proin nec ante vel neque tincidunt congue. Fusce consequat scelerisque lectus, at bibendum velit. Sed cursus urna a efficitur mollis.

Fusce tristique ultricies velit. Nulla vitae iaculis augue, nec bibendum felis. Curabitur non sollicitudin orci, ut faucibus velit. Pellentesque eget nulla quis nulla pellentesque egestas. Maecenas tempus eros ex, cursus accumsan neque faucibus quis. Donec interdum nisl eu lorem mattis faucibus. Phasellus eget varius quam, non porttitor leo. Donec consequat sapien ac justo pretium, in iaculis nulla interdum.

Praesent leo nisl, tristique ac mi eu, imperdiet elementum lectus. Mauris ultrices interdum orci in fermentum. Sed eu lorem lobortis sem rutrum congue euismod id mi. Vivamus est risus, malesuada ac auctor et, sodales id tellus. Etiam ligula massa, malesuada eu libero eget, aliquam aliquam massa. Curabitur aliquet, ligula vitae aliquet auctor, nisl purus semper metus, in aliquet mi ex at ante. Nulla sollicitudin vestibulum elementum. ''';

const String avatarURLTemp = 'https://via.placeholder.com/600';

const String backgroundURLTemp = 'https://via.placeholder.com/1280x960';

const String coverStoryTemp = 'https://via.placeholder.com/1360x768';

const String coverSeriesTemp = 'https://via.placeholder.com/2700x4100';

const String markdownData = """
# Markdown syntax guide

## Headers

# This is a Heading h1
## This is a Heading h2 
###### This is a Heading h6

## Emphasis

*This text will be italic*  
_This will also be italic_

**This text will be bold**  
__This will also be bold__

_You **can** combine them_

## Lists

### Unordered

* Item 1
* Item 2
* Item 2a
* Item 2b

### Ordered

1. Item 1
1. Item 2
1. Item 3
  1. Item 3a
  1. Item 3b

## Images

![This is a alt text.](https://i.pinimg.com/originals/bf/82/f6/bf82f6956a32819af48c2572243e8286.jpg "This is a sample image.")

## Links

You may be using [Markdown Live Preview](https://markdownlivepreview.com/).

## Blockquotes

> Markdown is a lightweight markup language with plain-text-formatting syntax, created in 2004 by John Gruber with Aaron Swartz.
>
>> Markdown is often used to format readme files, for writing messages in online discussion forums, and to create rich text using a plain text editor.

## Tables

| Left columns  | Right columns |
| ------------- |:-------------:|
| left foo      | right foo     |
| left bar      | right bar     |
| left baz      | right baz     |

## Blocks of code

```
let message = 'Hello world';
alert(message);
```

## Inline code

This web site is using `markedjs/marked`.
""";
