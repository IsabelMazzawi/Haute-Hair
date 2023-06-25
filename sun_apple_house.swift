import UIKit

class SalonManager {
    
    // MARK: - Properties
    
    var styles: [HairStyle] = []
    var latestStyles: [HairStyle] = []
    
    // MARK: - Initialize
    
    init() {
        //load the styles
        self.loadStyles()
    }
    
    // MARK: - Methods
    
    func loadStyles() {
        //load all the styles available
        self.styles = [.braids, .curly, .updos, .bob, .shag, .asymmetrical]
    }
    
    func getLatestStyle() {
        //return the latest style
        self.latestStyles = [.braids, .curly, .updos]
    }
    
    func getLatestTrend() {
        //return the latest trend
        self.latestStyles = [.bob, .shag, .asymmetrical]
    }
    
    func getStyle(_ style: HairStyle) -> HairStyle? {
        //return the style
        return self.styles.first(where: { $0 == style })
    }
    
    func setStyle(_ style: HairStyle, isLatest: Bool) {
        //set the style as latest or not
        if isLatest {
            self.latestStyles.append(style)
        } else {
            self.latestStyles.removeAll(where: { $0 == style })
        }
    }
    
    func addStyle(_ style: HairStyle, isLatest: Bool) {
        //add the style
        self.styles.append(style)
        
        if isLatest {
            self.latestStyles.append(style)
        }
    }
    
    func removeStyle(_ style: HairStyle) {
        //remove the style
        self.styles.removeAll(where: { $0 == style })
        self.latestStyles.removeAll(where: { $0 == style })
    }
    
    func getStyles() -> [HairStyle] {
        //return all the styles
        return self.styles
    }
    
    func getLatestStyles() -> [HairStyle] {
        //return the latest styles
        return self.latestStyles
    }
    
    func getStyleDescription(_ style: HairStyle) -> String {
        //return a description of a style
        switch style {
        case .braids:
            return "Braids are a classic hairstyle with many variations. Whether you choose intricate French braids or a simple fishtail braid, this style is sure to add a timeless look to your style."
        case .curly:
            return "Whether you have naturally curly hair or you want to give your hair a boost, curls are always in. With a few simple steps, you can create beautiful curls that will last."
        case .updos:
            return "Updos are perfect for any special occasion. From a simple half-up style to a complex braided bun, there's a look for everyone. These styles provide longevity and can be easily dressed up for a night out."
        case .bob:
            return "The bob is a classic and timeless style that has been making a resurgence lately. This style is perfect for someone looking to keep their hair short yet fashionable."
        case .shag:
            return "The shag is a style that is both edgy and modern. With layers and fringe, the shag is perfect for those looking for a fresh look without sacrificing length."
        case .asymmetrical:
            return "Asymmetrical styles are perfect for those wanting to express themselves. Whether you're looking for a sharp bob or an angled pixie cut, the asymmetrical style offers a unique look."
        default:
            return ""
        }
    }
}

// MARK: - HairStyle

enum HairStyle {
    case braids
    case curly
    case updos
    case bob
    case shag
    case asymmetrical
}