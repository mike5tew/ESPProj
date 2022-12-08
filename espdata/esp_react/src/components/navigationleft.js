class LeftNavigation extends React.Component {
    listButtons = [];
    // this object controls the configuration of the nav links that show on the left side of the template
    navigation = {
        isLoggedIn : [
            {
                icon : the.icon.for.home,
                isFollowedByDivider : false,
                label : the.label.for.home,
                moduleId : the.module.id.for.home,
            },
            {
                icon : the.icon.for.powerOff,
                isFollowedByDivider : true,
                label : the.label.for.logOut,
                moduleId : the.module.id.for.logout,
            },
            {
                icon : the.icon.for.orderedList,
                isFollowedByDivider : false,
                label : the.label.for.lists,
                moduleId : the.module.id.for.lists,
            },
            {
                icon : the.icon.for.roles,
                isFollowedByDivider : false,
                label : the.label.for.roles,
                moduleId : the.module.id.for.roles,
            },
            {
                icon : the.icon.for.teams,
                isFollowedByDivider : false,
                label : the.label.for.teams,
                moduleId : the.module.id.for.teams,
            },
            {
                icon : the.icon.for.users,
                isFollowedByDivider : false,
                label : the.label.for.users,
                moduleId : the.module.id.for.users,
            },
        ],
        isLoggedOut : [
            {
                icon : the.icon.for.home,
                isFollowedByDivider : false,
                label : the.label.for.home,
                moduleId : the.module.id.for.home,
            },
            {
                icon : the.icon.for.powerOff,
                isFollowedByDivider : false,
                label : the.label.for.logIn,
                moduleId : the.module.id.for.login,
            },
            {
                icon : the.icon.for.registered,
                isFollowedByDivider : false,
                label : the.label.for.register,
                moduleId : the.module.id.for.register,
            },
        ],
    };

    populateListButtons() {
        // here we are generating an array of ListButtons that will comprise the left-hand navigation 
        this.listButtons = [];
        let buttonConfigs = [];
        switch (db.getItem(the.db.item.for.isLoggedIn)) {
            case true:
                buttonConfigs = this.navigation.isLoggedIn;
                break;
            case false:
                buttonConfigs = this.navigation.isLoggedOut;
                break;
            default:
                return;
        }
        buttonConfigs.forEach(buttonConfig => {
            let buttonIsEnabled = true;
            let fontAwesomeStyle = {fontSize : the.style.of.onePointFiveEms};
            let listItemStyle = {};
            let textStyle = {};
            switch (buttonConfig.label) {
                case the.label.for.logIn:
                    fontAwesomeStyle[the.style.property.name.of.color] = the.color.for.success;
                    break;
                case the.label.for.logOut:
                    fontAwesomeStyle[the.style.property.name.of.color] = the.color.for.error;
                    break;
                default:
                    if (session.DisplayLayer.state.moduleId === buttonConfig.moduleId) {
                        fontAwesomeStyle[the.style.property.name.of.color] = the.color.for.white.text;
                    } else {
                        fontAwesomeStyle[the.style.property.name.of.color] = the.color.for.headerBar;
                    }
                    break;
            }
            if (session.DisplayLayer.state.moduleId === buttonConfig.moduleId) {
                buttonIsEnabled = false;
                listItemStyle[the.style.property.name.of.backgroundColor] = the.color.for.selectedLeftNavButtonOrange;
                textStyle[the.style.property.name.of.color] = the.color.for.white.text;
            }
            this.listButtons.push(
                <ListItem
                    button={buttonIsEnabled}
                    key={`${buttonConfig.label}-listItem`}
                    // notice that when one of the left nav links is clicked, we are updating the moduleId value in session, 
                    // which dynamically determines which module shows up in the center panel
                    onClick={() => session.DisplayLayer.updateModuleId(buttonConfig.moduleId)}
                    style={listItemStyle}
                >
                    <ListItemIcon>
                        <FontAwesome name={buttonConfig.icon} style={fontAwesomeStyle}/>
                    </ListItemIcon>
                    <TranslatedText english={buttonConfig.label} style={textStyle}/>
                </ListItem>,
            );
            if (buttonConfig.isFollowedByDivider) {
                this.listButtons.push(<Divider key={`${buttonConfig.label}-divider`}/>);
            }
        });
    }

    render() {
        // dynamically generate the array of left nav buttons before rendering the links 
        this.populateListButtons();
        return <List style={{paddingTop : the.style.of.pixels.zero}}>{this.listButtons}</List>;
    }
}

export default LeftNavigation;