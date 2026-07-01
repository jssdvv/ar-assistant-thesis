fun configureARSession(
    session: Session,
    config: Config
) {
    config.apply {
        setFocusMode(Config.FocusMode.AUTO)
        setLightEstimationMode(Config.LightEstimationMode.DISABLED)
        setInstantPlacementMode(Config.InstantPlacementMode.DISABLED)
        planeFindingMode = Config.PlaneFindingMode.HORIZONTAL_AND_VERTICAL
        setDepthMode(
            when (session.isDepthModeSupported(Config.DepthMode.AUTOMATIC)) {
                true -> Config.DepthMode.AUTOMATIC
                else -> Config.DepthMode.DISABLED
            }
        )
    }
}