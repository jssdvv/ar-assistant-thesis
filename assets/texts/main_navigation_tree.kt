@Composable
fun AppNavHost(
    appState: AppState,
    modifier: Modifier,
) {
    NavHost(
        startDestination = ScannerGraph,
        navController = appState.navHostController,
        modifier = modifier
    ) {
        scannerNavGraph(appState)
        machinesNavGraph(appState)
        toolsNavGraph(appState)
        eventsNavGraph(appState)
    }
}