Swift 4.1

UILabel with links 

1.Add links to UILabel and handler the link tap

2.Custom your link with NSAttributedString 

3.Supported Multi lines

4.Supported Multi Same link text

Simply: 

 yourLabel.text = "1. To open Google website click here.\n2. To open Facebook website click here.\n3. To open Twitter website click here,\n\n By signing up you agree to our Terms & Conditions and Privacy Policy."

 yourLabel.addTapLink(tapLink: "click here", color: .red) { (link) in
           print("Google link Tap")
   }
        
 yourLabel.addTapLink(tapLink: "click here", color: .blue) { (link) in
           print("Facebook link Tap"
  }

....

![alt text](https://github.com/omrapp/label-with-links/blob/master/1.png)



Or

let links = ["Google", "Facebook", "Twitter", "Youtube"]

yourLabel.text = "Click Any link to open it \nGoogle, Facebook, Twitter and Youtube."

  yourLabel.addTapLinks(tapLinks: links, color: .blue) { (link) in
          print(link ?? "")
   }
 

![alt text](https://github.com/omrapp/label-with-links/blob/master/2.png)


Also 

Thanks for @samwize (helpfull artical) 

https://samwize.com/2016/03/04/how-to-create-multiple-tappable-links-in-a-uilabel/

____________________________________________________________________________


MIT License

Copyright (c) 2018 Omar Ayed

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all
copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
SOFTWARE.

