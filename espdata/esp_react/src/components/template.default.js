// lots o' imports up here...

// styles/themes that are needed to support the drawer template

class DefaultTemplate extends React.Component {
    constructor(props) {
        super(props);
        this.state = {
            mainHeight : 200,
            mobileOpen : false,
            toolbarSpacerHeight : 100,
        };
        session[the.session.key.for.DefaultTemplate] = this;
        session.browser = detect();
    }

    

    getModule() {
        // here I'm switching on a session variable (which is available throughout the entire app to determine which module ID the user has currently chosen
        // notice that the return values are the dynamic React components that coincide with the currently-chosen module ID 
        switch (session.DisplayLayer.state.moduleId) {
            case "Home":
                return <HomeModule/>;
            case "Notices":
                return <ListsModule/>;
            case "Data":
                return <LogInModule/>;
            case "Students":
                return <StudentModule/>;
            case "Planning":
                return <PlanningModule/>;
            case "Calendar":
                return <CalendarModule/>;
            case "Tasks":
                return <TasksModule/>;
            case "Meetings":
                return <MeetingsModule/>;
            default:
                return null;
        }
    }

    handleDrawerToggle = () => {
        this.setState({mobileOpen : !this.state.mobileOpen});
    };

    render() {
        // the module is dynamically generated every time a render() is invoked on this template module 
        const module = this.getModule();
        return (
            <div className={classes.root} style={{height : the.style.of.percent.hundred}}>
                <AppBar className={classes.appBar} style={{backgroundColor : the.color.for.appBar}}>
                    <Toolbar>
                        <IconButton
                            aria-label={the.ariaLabel.openDrawer}
                            className={classes.navIconHide}
                            color={the.style.of.inherit}
                            onClick={this.handleDrawerToggle}
                        >
                            <MenuIcon/>
                        </IconButton>
                        <FontAwesome name={the.icon.for.palette} style={{marginRight : '10px', fontSize : the.style.of.onePointFiveEms}}/>
                        <Typography variant={the.variant.of.title} color={the.style.of.inherit} noWrap>
                            <TranslatedText english={'Groupware'}/>.<TranslatedText english={'Studio'}/>
                        </Typography>
                        <LanguageMenu
                            containerStyle={{marginLeft : the.style.of.margin.auto}}
                            onClose={event => {this.updateLanguage(event)}}
                            selectedLanguageId={db.getItem(the.db.item.for.languageId)}
                        />
                    </Toolbar>
                </AppBar>
                <Hidden mdUp>
                    <Drawer
                        anchor={theme.direction === the.direction.of.rightToLeft ? the.direction.of.right : the.direction.of.left}
                        classes={{paper : classes.drawerPaper}}
                        ModalProps={{keepMounted : true}}
                        onClose={this.handleDrawerToggle}
                        open={this.state.mobileOpen}
                        variant={the.variant.of.temporary}
                    >
                        {drawer}
                    </Drawer>
                </Hidden>
                <Hidden smDown implementation={the.implementation.of.css}>
                    <Drawer
                        classes={{paper : classes.drawerPaper}}
                        open
                        variant={the.variant.of.permanent}
                    >
                        {drawer}
                    </Drawer>
                </Hidden>
                <main
                    className={classes.content}
                    ref={main => this.main = main}
                    style={{backgroundColor : the.color.for.module.background}}
                >
                    <div
                        className={classes.toolbar}
                        ref={toolbarSpacer => this.toolbarSpacer = toolbarSpacer}
                    />
                    {/*
                        here is where that dynamically-generated module is rendered inside the template 
                    */}
                    {module}
                </main>
            </div>
        );
    }
}

export default withStyles(styles, {withTheme : true})(DefaultTemplate);