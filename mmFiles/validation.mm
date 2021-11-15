<?xml version="1.0" encoding="UTF-8" standalone="yes" ?>
<!---->
<DataRoot FormatVersion="1.1" ContentVersion="10.6.4.0" RuntimeVersion="10.6.4.3" FileName="">
    <Objects>
        <Cordon>
            <Attributes>
                <AttrCordonActorDirectionType>
                    <Data>
                        <EnumString v="Bidirectional" t="3" />
                        <EnumValue v="0" t="1" />
                    </Data>
                    <Type v="DataTypeEnum" t="3" />
                </AttrCordonActorDirectionType>
                <AttrCordonActorInvertDirection>
                    <Data v="0" t="0" />
                    <Type v="DataTypeBool" t="3" />
                </AttrCordonActorInvertDirection>
                <AttrDrawCordonDirection>
                    <Data v="1" t="0" />
                    <Type v="DataTypeBool" t="3" />
                </AttrDrawCordonDirection>
                <AttrObjectColor>
                    <Data v="[0.490196,0.466667,0.015686,0.392157]" t="2" />
                    <Type v="DataTypeColor" t="3" />
                </AttrObjectColor>
                <AttrSceneObjectTransformGroup>
                    <Data v="00000000-0000-0000-0000-000000000000" t="3" />
                    <Type v="DataTypeGlobalID" t="3" />
                </AttrSceneObjectTransformGroup>
                <AttrVisible>
                    <Data v="1" t="0" />
                    <Type v="DataTypeBool" t="3" />
                </AttrVisible>
            </Attributes>
            <Body>
                <Geometry>
                    <Geometry0>
                        <Faces v="[0,2,1,1,2,3]" t="1" />
                        <GeometryType v="MeshGeometry" t="3" />
                        <Vertices v="[126.756172,-3.372967,-4.096909,126.756172,-1.372967,-4.096909,126.756172,-3.372967,-8.096909,126.756172,-1.372967,-8.096909]" t="2" />
                    </Geometry0>
                </Geometry>
            </Body>
            <GlobalID v="8e33c5fe-79aa-4ac8-8179-12e155bf74da" t="3" />
            <ID v="57" t="1" />
            <Name v="Cordon" t="3" />
            <ObjectSubType v="CordonActor" t="3" />
            <ObjectType v="Actor" t="3" />
        </Cordon>
        <DefaultProfile>
            <Attributes>
                <AttrObjectColor>
                    <Data v="[0.854902,0.666667,0.509804,1.000000]" t="2" />
                    <Type v="DataTypeColor" t="3" />
                </AttrObjectColor>
                <AttrProfileAction>
                    <Data>
                        <ActionType v="ActionNone" t="3" />
                    </Data>
                    <Type v="DataTypeAction" t="3" />
                </AttrProfileAction>
                <AttrProfileAvatar>
                    <Data v="00000000-0000-0000-0000-000000000000" t="3" />
                    <Type v="DataTypeGlobalID" t="3" />
                </AttrProfileAvatar>
                <AttrProfileDirectionBias>
                    <Data>
                        <EnumString v="DirectionBiasRightStrong" t="3" />
                        <EnumValue v="4" t="1" />
                    </Data>
                    <Type v="DataTypeEnum" t="3" />
                </AttrProfileDirectionBias>
                <AttrProfileHorizontalCostDistribution>
                    <Data>
                        <!--Constant: [value,,,], Uniform: [min,max,,], Normal: [min,max,mean,std], Triangular: [min,max,mode,], Exponential: [min,max,lambda]-->
                        <Type v="Uniform" t="3" />
                        <Values v="[0.750000,1.250000]" t="2" />
                    </Data>
                    <Type v="DataTypeDistribution" t="3" />
                </AttrProfileHorizontalCostDistribution>
                <AttrProfileMaxAcceleration>
                    <Data v="3.000000" t="2" />
                    <Type v="DataTypeDouble" t="3" />
                </AttrProfileMaxAcceleration>
                <AttrProfileMaxTurnRateInDegrees>
                    <Data v="45.000000" t="2" />
                    <Type v="DataTypeDouble" t="3" />
                </AttrProfileMaxTurnRateInDegrees>
                <AttrProfileMovementStandard>
                    <Data>
                        <EnumString v="MovementStandardFruin" t="3" />
                        <EnumValue v="1" t="1" />
                    </Data>
                    <Type v="DataTypeEnum" t="3" />
                </AttrProfileMovementStandard>
                <AttrProfileNetwork>
                    <Data v="00000000-0000-0000-0000-000000000000" t="3" />
                    <Type v="DataTypeGlobalID" t="3" />
                </AttrProfileNetwork>
                <AttrProfilePersonalSpaceDistribution>
                    <Data>
                        <!--Constant: [value,,,], Uniform: [min,max,,], Normal: [min,max,mean,std], Triangular: [min,max,mode,], Exponential: [min,max,lambda]-->
                        <Type v="Constant" t="3" />
                        <Values v="[2.000000]" t="2" />
                    </Data>
                    <Type v="DataTypeDistribution" t="3" />
                </AttrProfilePersonalSpaceDistribution>
                <AttrProfilePersonalSpaceEnabled>
                    <Data v="0" t="0" />
                    <Type v="DataTypeBool" t="3" />
                </AttrProfilePersonalSpaceEnabled>
                <AttrProfileProcessingCostDistribution>
                    <Data>
                        <!--Constant: [value,,,], Uniform: [min,max,,], Normal: [min,max,mean,std], Triangular: [min,max,mode,], Exponential: [min,max,lambda]-->
                        <Type v="Uniform" t="3" />
                        <Values v="[0.750000,1.250000]" t="2" />
                    </Data>
                    <Type v="DataTypeDistribution" t="3" />
                </AttrProfileProcessingCostDistribution>
                <AttrProfileProfileType>
                    <Data>
                        <EnumString v="ProfileTypeFruinCommuter" t="3" />
                        <EnumValue v="1" t="1" />
                    </Data>
                    <Type v="DataTypeEnum" t="3" />
                </AttrProfileProfileType>
                <AttrProfileQueueCostDistribution>
                    <Data>
                        <!--Constant: [value,,,], Uniform: [min,max,,], Normal: [min,max,mean,std], Triangular: [min,max,mode,], Exponential: [min,max,lambda]-->
                        <Type v="Uniform" t="3" />
                        <Values v="[0.750000,1.250000]" t="2" />
                    </Data>
                    <Type v="DataTypeDistribution" t="3" />
                </AttrProfileQueueCostDistribution>
                <AttrProfileRadiusDistribution>
                    <Data>
                        <!--Constant: [value,,,], Uniform: [min,max,,], Normal: [min,max,mean,std], Triangular: [min,max,mode,], Exponential: [min,max,lambda]-->
                        <Type v="Constant" t="3" />
                        <Values v="[0.250000]" t="2" />
                    </Data>
                    <Type v="DataTypeDistribution" t="3" />
                </AttrProfileRadiusDistribution>
                <AttrProfileRadiusType>
                    <Data>
                        <EnumString v="RadiusTypeFruinCommuter" t="3" />
                        <EnumValue v="1" t="1" />
                    </Data>
                    <Type v="DataTypeEnum" t="3" />
                </AttrProfileRadiusType>
                <AttrProfileShuffleSpeedFactor>
                    <Data v="0.100000" t="2" />
                    <Type v="DataTypeDouble" t="3" />
                </AttrProfileShuffleSpeedFactor>
                <AttrProfileSpeedDistribution>
                    <Data>
                        <!--Constant: [value,,,], Uniform: [min,max,,], Normal: [min,max,mean,std], Triangular: [min,max,mode,], Exponential: [min,max,lambda]-->
                        <Type v="Normal" t="3" />
                        <Values v="[0.650000,2.050000,1.350000,0.250000]" t="2" />
                    </Data>
                    <Type v="DataTypeDistribution" t="3" />
                </AttrProfileSpeedDistribution>
                <AttrProfileSpeedType>
                    <Data>
                        <EnumString v="SpeedTypeFruinCommuter" t="3" />
                        <EnumValue v="1" t="1" />
                    </Data>
                    <Type v="DataTypeEnum" t="3" />
                </AttrProfileSpeedType>
                <AttrProfileUseDefaultNetwork>
                    <Data v="1" t="0" />
                    <Type v="DataTypeBool" t="3" />
                </AttrProfileUseDefaultNetwork>
                <AttrProfileVerticalCostDistribution>
                    <Data>
                        <!--Constant: [value,,,], Uniform: [min,max,,], Normal: [min,max,mean,std], Triangular: [min,max,mode,], Exponential: [min,max,lambda]-->
                        <Type v="Uniform" t="3" />
                        <Values v="[0.750000,1.250000]" t="2" />
                    </Data>
                    <Type v="DataTypeDistribution" t="3" />
                </AttrProfileVerticalCostDistribution>
            </Attributes>
            <GlobalID v="a83e5662-81c5-4e8d-9823-a6e9fb979967" t="3" />
            <ID v="0" t="1" />
            <Name v="DefaultProfile" t="3" />
            <ObjectSubType v="Profile" t="3" />
            <ObjectType v="Profile" t="3" />
        </DefaultProfile>
        <LuggageProfile>
            <Attributes>
                <AttrObjectColor>
                    <Data v="[0.854902,0.666667,0.509804,1.000000]" t="2" />
                    <Type v="DataTypeColor" t="3" />
                </AttrObjectColor>
                <AttrProfileAction>
                    <Data>
                        <ActionType v="ActionNone" t="3" />
                    </Data>
                    <Type v="DataTypeAction" t="3" />
                </AttrProfileAction>
                <AttrProfileAvatar>
                    <Data v="00000000-0000-0000-0000-000000000000" t="3" />
                    <Type v="DataTypeGlobalID" t="3" />
                </AttrProfileAvatar>
                <AttrProfileDirectionBias>
                    <Data>
                        <EnumString v="DirectionBiasRightStrong" t="3" />
                        <EnumValue v="4" t="1" />
                    </Data>
                    <Type v="DataTypeEnum" t="3" />
                </AttrProfileDirectionBias>
                <AttrProfileHorizontalCostDistribution>
                    <Data>
                        <!--Constant: [value,,,], Uniform: [min,max,,], Normal: [min,max,mean,std], Triangular: [min,max,mode,], Exponential: [min,max,lambda]-->
                        <Type v="Uniform" t="3" />
                        <Values v="[0.750000,1.250000]" t="2" />
                    </Data>
                    <Type v="DataTypeDistribution" t="3" />
                </AttrProfileHorizontalCostDistribution>
                <AttrProfileMaxAcceleration>
                    <Data v="3.000000" t="2" />
                    <Type v="DataTypeDouble" t="3" />
                </AttrProfileMaxAcceleration>
                <AttrProfileMaxTurnRateInDegrees>
                    <Data v="45.000000" t="2" />
                    <Type v="DataTypeDouble" t="3" />
                </AttrProfileMaxTurnRateInDegrees>
                <AttrProfileMovementStandard>
                    <Data>
                        <EnumString v="MovementStandardFruin" t="3" />
                        <EnumValue v="1" t="1" />
                    </Data>
                    <Type v="DataTypeEnum" t="3" />
                </AttrProfileMovementStandard>
                <AttrProfileNetwork>
                    <Data v="00000000-0000-0000-0000-000000000000" t="3" />
                    <Type v="DataTypeGlobalID" t="3" />
                </AttrProfileNetwork>
                <AttrProfilePersonalSpaceDistribution>
                    <Data>
                        <!--Constant: [value,,,], Uniform: [min,max,,], Normal: [min,max,mean,std], Triangular: [min,max,mode,], Exponential: [min,max,lambda]-->
                        <Type v="Constant" t="3" />
                        <Values v="[2.000000]" t="2" />
                    </Data>
                    <Type v="DataTypeDistribution" t="3" />
                </AttrProfilePersonalSpaceDistribution>
                <AttrProfilePersonalSpaceEnabled>
                    <Data v="0" t="0" />
                    <Type v="DataTypeBool" t="3" />
                </AttrProfilePersonalSpaceEnabled>
                <AttrProfileProcessingCostDistribution>
                    <Data>
                        <!--Constant: [value,,,], Uniform: [min,max,,], Normal: [min,max,mean,std], Triangular: [min,max,mode,], Exponential: [min,max,lambda]-->
                        <Type v="Uniform" t="3" />
                        <Values v="[0.750000,1.250000]" t="2" />
                    </Data>
                    <Type v="DataTypeDistribution" t="3" />
                </AttrProfileProcessingCostDistribution>
                <AttrProfileProfileType>
                    <Data>
                        <EnumString v="ProfileTypeLULBagHeavy" t="3" />
                        <EnumValue v="8" t="1" />
                    </Data>
                    <Type v="DataTypeEnum" t="3" />
                </AttrProfileProfileType>
                <AttrProfileQueueCostDistribution>
                    <Data>
                        <!--Constant: [value,,,], Uniform: [min,max,,], Normal: [min,max,mean,std], Triangular: [min,max,mode,], Exponential: [min,max,lambda]-->
                        <Type v="Uniform" t="3" />
                        <Values v="[0.750000,1.250000]" t="2" />
                    </Data>
                    <Type v="DataTypeDistribution" t="3" />
                </AttrProfileQueueCostDistribution>
                <AttrProfileRadiusDistribution>
                    <Data>
                        <!--Constant: [value,,,], Uniform: [min,max,,], Normal: [min,max,mean,std], Triangular: [min,max,mode,], Exponential: [min,max,lambda]-->
                        <Type v="Normal" t="3" />
                        <Values v="[0.350000,0.440000,0.390000,0.015000]" t="2" />
                    </Data>
                    <Type v="DataTypeDistribution" t="3" />
                </AttrProfileRadiusDistribution>
                <AttrProfileRadiusType>
                    <Data>
                        <EnumString v="RadiusTypeLULBagHeavy" t="3" />
                        <EnumValue v="8" t="1" />
                    </Data>
                    <Type v="DataTypeEnum" t="3" />
                </AttrProfileRadiusType>
                <AttrProfileShuffleSpeedFactor>
                    <Data v="0.100000" t="2" />
                    <Type v="DataTypeDouble" t="3" />
                </AttrProfileShuffleSpeedFactor>
                <AttrProfileSpeedDistribution>
                    <Data>
                        <!--Constant: [value,,,], Uniform: [min,max,,], Normal: [min,max,mean,std], Triangular: [min,max,mode,], Exponential: [min,max,lambda]-->
                        <Type v="Normal" t="3" />
                        <Values v="[0.900000,1.800000,1.320000,0.150000]" t="2" />
                    </Data>
                    <Type v="DataTypeDistribution" t="3" />
                </AttrProfileSpeedDistribution>
                <AttrProfileSpeedType>
                    <Data>
                        <EnumString v="SpeedTypeLULBagHeavy" t="3" />
                        <EnumValue v="8" t="1" />
                    </Data>
                    <Type v="DataTypeEnum" t="3" />
                </AttrProfileSpeedType>
                <AttrProfileUseDefaultNetwork>
                    <Data v="1" t="0" />
                    <Type v="DataTypeBool" t="3" />
                </AttrProfileUseDefaultNetwork>
                <AttrProfileVerticalCostDistribution>
                    <Data>
                        <!--Constant: [value,,,], Uniform: [min,max,,], Normal: [min,max,mean,std], Triangular: [min,max,mode,], Exponential: [min,max,lambda]-->
                        <Type v="Uniform" t="3" />
                        <Values v="[0.750000,1.250000]" t="2" />
                    </Data>
                    <Type v="DataTypeDistribution" t="3" />
                </AttrProfileVerticalCostDistribution>
            </Attributes>
            <GlobalID v="c969c0a8-8041-4a62-9404-799df28656fe" t="3" />
            <ID v="54" t="1" />
            <Name v="LuggageProfile" t="3" />
            <ObjectSubType v="Profile" t="3" />
            <ObjectType v="Profile" t="3" />
        </LuggageProfile>
        <RouteBank>
            <Attributes>
                <AttrEnabled>
                    <Data v="1" t="0" />
                    <Type v="DataTypeBool" t="3" />
                </AttrEnabled>
                <AttrObjectColor>
                    <Data v="[0.564706,0.431373,0.666667,1.000000]" t="2" />
                    <Type v="DataTypeColor" t="3" />
                </AttrObjectColor>
                <AttrRouteBankBaseMembers>
                    <Data v="[c5eb058b-0f8f-430f-a078-b86407548796,83b0e0c9-da8f-44db-b181-80211fcd63a1]" t="3" />
                    <Type v="DataTypeVectorGlobalID" t="3" />
                </AttrRouteBankBaseMembers>
            </Attributes>
            <GlobalID v="64dd335f-7cc3-495a-a7f9-f97d75a07972" t="3" />
            <ID v="56" t="1" />
            <Name v="RouteBank" t="3" />
            <ObjectSubType v="GroupRouteBank" t="3" />
            <ObjectType v="Group" t="3" />
        </RouteBank>
        <Volume>
            <Attributes>
                <AttrObjectColor>
                    <Data v="[0.262745,0.250980,0.007843,0.392157]" t="2" />
                    <Type v="DataTypeColor" t="3" />
                </AttrObjectColor>
                <AttrSceneObjectTransformGroup>
                    <Data v="00000000-0000-0000-0000-000000000000" t="3" />
                    <Type v="DataTypeGlobalID" t="3" />
                </AttrSceneObjectTransformGroup>
                <AttrVisible>
                    <Data v="1" t="0" />
                    <Type v="DataTypeBool" t="3" />
                </AttrVisible>
            </Attributes>
            <Body>
                <Geometry>
                    <Geometry0>
                        <Faces v="[0,1,2,0,2,6,0,4,5,0,5,1,0,6,4,1,3,2,1,5,3,2,3,7,2,7,6,3,5,7,4,6,7,4,7,5]" t="1" />
                        <GeometryType v="MeshGeometry" t="3" />
                        <Vertices v="[136.945847,-0.250000,-8.986264,136.945847,-0.250000,-2.986264,136.945847,1.750000,-8.986264,136.945847,1.750000,-2.986264,144.945847,-0.250000,-8.986264,144.945847,-0.250000,-2.986264,144.945847,1.750000,-8.986264,144.945847,1.750000,-2.986264]" t="2" />
                    </Geometry0>
                </Geometry>
            </Body>
            <GlobalID v="e4446d16-9fd3-4436-a8b4-64dbf8582e7b" t="3" />
            <ID v="55" t="1" />
            <Name v="Volume" t="3" />
            <ObjectSubType v="RegionActor" t="3" />
            <ObjectType v="Actor" t="3" />
        </Volume>
        <Volume_cross>
            <Attributes>
                <AttrObjectColor>
                    <Data v="[0.262745,0.250980,0.007843,0.392157]" t="2" />
                    <Type v="DataTypeColor" t="3" />
                </AttrObjectColor>
                <AttrSceneObjectTransformGroup>
                    <Data v="00000000-0000-0000-0000-000000000000" t="3" />
                    <Type v="DataTypeGlobalID" t="3" />
                </AttrSceneObjectTransformGroup>
                <AttrVisible>
                    <Data v="1" t="0" />
                    <Type v="DataTypeBool" t="3" />
                </AttrVisible>
            </Attributes>
            <Body>
                <Geometry>
                    <Geometry0>
                        <Faces v="[0,1,2,0,2,6,0,4,5,0,5,1,0,6,4,1,3,2,1,5,3,2,3,7,2,7,6,3,5,7,4,6,7,4,7,5]" t="1" />
                        <GeometryType v="MeshGeometry" t="3" />
                        <Vertices v="[126.694588,-3.392482,-8.053476,126.694588,-3.392482,-4.053476,126.694588,-1.392482,-8.053476,126.694588,-1.392482,-4.053476,127.737930,-3.392482,-8.053476,127.737930,-3.392482,-4.053476,127.737930,-1.392482,-8.053476,127.737930,-1.392482,-4.053476]" t="2" />
                    </Geometry0>
                </Geometry>
            </Body>
            <GlobalID v="bebebaaf-e7f0-4f8e-b60a-982cdb318b8e" t="3" />
            <ID v="58" t="1" />
            <Name v="Volume_cross" t="3" />
            <ObjectSubType v="RegionActor" t="3" />
            <ObjectType v="Actor" t="3" />
        </Volume_cross>
        <a0195f077c2d420bb29570b150de3a33>
            <Attributes>
                <AttrEnabled>
                    <Data v="1" t="0" />
                    <Type v="DataTypeBool" t="3" />
                </AttrEnabled>
                <AttrObjectColor>
                    <Data v="[0.000000,0.392000,0.575000,1.000000]" t="2" />
                    <Type v="DataTypeColor" t="3" />
                </AttrObjectColor>
                <AttrSceneObjectTransformGroup>
                    <Data v="00000000-0000-0000-0000-000000000000" t="3" />
                    <Type v="DataTypeGlobalID" t="3" />
                </AttrSceneObjectTransformGroup>
                <AttrVisible>
                    <Data v="1" t="0" />
                    <Type v="DataTypeBool" t="3" />
                </AttrVisible>
            </Attributes>
            <Body>
                <Geometry>
                    <Geometry0>
                        <Faces v="[0,1,3,0,2,4,0,3,2,0,4,5,0,5,1,1,5,7,1,7,3,2,3,7,2,6,4,2,7,6,4,6,5,5,6,7]" t="1" />
                        <GeometryType v="MeshGeometry" t="3" />
                        <Vertices v="[110.000000,0.000000,-5.500000,110.000000,0.000000,-3.000000,110.000000,3.000000,-5.500000,110.000000,3.000000,-3.000000,112.500000,0.000000,-5.500000,112.500000,0.000000,-3.000000,112.500000,3.000000,-5.500000,112.500000,3.000000,-3.000000]" t="2" />
                    </Geometry0>
                </Geometry>
            </Body>
            <GlobalID v="58b8a1f6-c17d-47d7-94da-5f79ef2613d9" t="3" />
            <ID v="45" t="1" />
            <Name v="a0195f077c2d420bb29570b150de3a33" t="3" />
            <ObjectSubType v="BarrierActor" t="3" />
            <ObjectType v="Actor" t="3" />
        </a0195f077c2d420bb29570b150de3a33>
        <a1152901e8394e8682b4fc6ee43eb64d>
            <Attributes>
                <AttrEnabled>
                    <Data v="1" t="0" />
                    <Type v="DataTypeBool" t="3" />
                </AttrEnabled>
                <AttrNetworkActorDistanceCost>
                    <Data v="0.000000" t="2" />
                    <Type v="DataTypeDouble" t="3" />
                </AttrNetworkActorDistanceCost>
                <AttrNetworkMemberActionEnter>
                    <Data>
                        <ActionType v="ActionNone" t="3" />
                    </Data>
                    <Type v="DataTypeAction" t="3" />
                </AttrNetworkMemberActionEnter>
                <AttrNetworkMemberActionExit>
                    <Data>
                        <ActionType v="ActionNone" t="3" />
                    </Data>
                    <Type v="DataTypeAction" t="3" />
                </AttrNetworkMemberActionExit>
                <AttrNetworkZonesAsPrimaryMember>
                    <Data v="[]" t="3" />
                    <Type v="DataTypeSetGlobalID" t="3" />
                </AttrNetworkZonesAsPrimaryMember>
                <AttrObjectColor>
                    <Data v="[0.584000,0.729000,0.788000,1.000000]" t="2" />
                    <Type v="DataTypeColor" t="3" />
                </AttrObjectColor>
                <AttrSceneObjectTransformGroup>
                    <Data v="00000000-0000-0000-0000-000000000000" t="3" />
                    <Type v="DataTypeGlobalID" t="3" />
                </AttrSceneObjectTransformGroup>
                <AttrSurfaceMapResolution>
                    <Data>
                        <EnumString v="SurfaceMapResolution10cm" t="3" />
                        <EnumValue v="2" t="1" />
                    </Data>
                    <Type v="DataTypeEnum" t="3" />
                </AttrSurfaceMapResolution>
                <AttrVisible>
                    <Data v="1" t="0" />
                    <Type v="DataTypeBool" t="3" />
                </AttrVisible>
                <AttrWalkableActorIsIgnoreBarrieres>
                    <Data v="0" t="0" />
                    <Type v="DataTypeBool" t="3" />
                </AttrWalkableActorIsIgnoreBarrieres>
                <AttrWalkableActorIsIgnoreNeighbors>
                    <Data v="0" t="0" />
                    <Type v="DataTypeBool" t="3" />
                </AttrWalkableActorIsIgnoreNeighbors>
                <AttrWalkableActorIsVirtual>
                    <Data v="0" t="0" />
                    <Type v="DataTypeBool" t="3" />
                </AttrWalkableActorIsVirtual>
                <AttrWalkableActorLocalAgentRadius>
                    <Data v="0.250000" t="2" />
                    <Type v="DataTypeDouble" t="3" />
                </AttrWalkableActorLocalAgentRadius>
                <AttrWalkableActorLocalAgentRadiusEnabled>
                    <Data v="0" t="0" />
                    <Type v="DataTypeBool" t="3" />
                </AttrWalkableActorLocalAgentRadiusEnabled>
                <AttrWalkableActorLocalDirectionBias>
                    <Data>
                        <EnumString v="DirectionBiasRightStrong" t="3" />
                        <EnumValue v="4" t="1" />
                    </Data>
                    <Type v="DataTypeEnum" t="3" />
                </AttrWalkableActorLocalDirectionBias>
                <AttrWalkableActorLocalDirectionBiasEnabled>
                    <Data v="0" t="0" />
                    <Type v="DataTypeBool" t="3" />
                </AttrWalkableActorLocalDirectionBiasEnabled>
                <AttrWalkableActorLocalMaxSpeedEnabled>
                    <Data v="0" t="0" />
                    <Type v="DataTypeBool" t="3" />
                </AttrWalkableActorLocalMaxSpeedEnabled>
                <AttrWalkableActorLocalMaxSpeedFlat>
                    <Data v="1.000000" t="2" />
                    <Type v="DataTypeDouble" t="3" />
                </AttrWalkableActorLocalMaxSpeedFlat>
                <AttrWalkableActorLocalMovementStandard>
                    <Data>
                        <EnumString v="MovementStandardFruin" t="3" />
                        <EnumValue v="1" t="1" />
                    </Data>
                    <Type v="DataTypeEnum" t="3" />
                </AttrWalkableActorLocalMovementStandard>
                <AttrWalkableActorLocalMovementStandardEnabled>
                    <Data v="0" t="0" />
                    <Type v="DataTypeBool" t="3" />
                </AttrWalkableActorLocalMovementStandardEnabled>
            </Attributes>
            <Body>
                <Geometry>
                    <Geometry0>
                        <Faces v="[0,1,3,0,3,2]" t="1" />
                        <GeometryType v="MeshGeometry" t="3" />
                        <Vertices v="[112.000000,-7.200000,-2.764008,112.000000,-7.200000,-8.800000,115.199997,-7.200000,-2.764008,115.199997,-7.200000,-8.800000]" t="2" />
                    </Geometry0>
                </Geometry>
            </Body>
            <GlobalID v="84816f80-372b-4bd7-a98c-c40495fb6e89" t="3" />
            <ID v="26" t="1" />
            <Name v="a1152901e8394e8682b4fc6ee43eb64d" t="3" />
            <ObjectSubType v="FloorActor" t="3" />
            <ObjectType v="Actor" t="3" />
        </a1152901e8394e8682b4fc6ee43eb64d>
        <a76509632a3c44aa910acdc665dd6de8>
            <Attributes>
                <AttrEnabled>
                    <Data v="1" t="0" />
                    <Type v="DataTypeBool" t="3" />
                </AttrEnabled>
                <AttrObjectColor>
                    <Data v="[0.000000,0.392000,0.575000,1.000000]" t="2" />
                    <Type v="DataTypeColor" t="3" />
                </AttrObjectColor>
                <AttrSceneObjectTransformGroup>
                    <Data v="00000000-0000-0000-0000-000000000000" t="3" />
                    <Type v="DataTypeGlobalID" t="3" />
                </AttrSceneObjectTransformGroup>
                <AttrVisible>
                    <Data v="1" t="0" />
                    <Type v="DataTypeBool" t="3" />
                </AttrVisible>
            </Attributes>
            <Body>
                <Geometry>
                    <Geometry0>
                        <Faces v="[0,1,2,0,2,6,0,4,1,0,6,4,1,3,2,1,4,5,1,5,3,2,3,6,3,5,7,3,7,6,4,6,7,4,7,5]" t="1" />
                        <GeometryType v="MeshGeometry" t="3" />
                        <Vertices v="[135.000000,0.000000,-8.000000,135.000000,0.000000,-7.800000,135.000000,1.000000,-8.000000,135.000000,1.000000,-7.800000,137.000000,0.000000,-8.000000,137.000000,0.000000,-7.800000,137.000000,1.000000,-8.000000,137.000000,1.000000,-7.800000]" t="2" />
                    </Geometry0>
                </Geometry>
            </Body>
            <GlobalID v="6df37298-c66f-4465-8ace-e32e3e233852" t="3" />
            <ID v="50" t="1" />
            <Name v="a76509632a3c44aa910acdc665dd6de8" t="3" />
            <ObjectSubType v="BarrierActor" t="3" />
            <ObjectType v="Actor" t="3" />
        </a76509632a3c44aa910acdc665dd6de8>
        <a7734a51b5de42898886344082e9d692>
            <Attributes>
                <AttrEnabled>
                    <Data v="1" t="0" />
                    <Type v="DataTypeBool" t="3" />
                </AttrEnabled>
                <AttrObjectColor>
                    <Data v="[0.000000,0.392000,0.575000,1.000000]" t="2" />
                    <Type v="DataTypeColor" t="3" />
                </AttrObjectColor>
                <AttrSceneObjectTransformGroup>
                    <Data v="00000000-0000-0000-0000-000000000000" t="3" />
                    <Type v="DataTypeGlobalID" t="3" />
                </AttrSceneObjectTransformGroup>
                <AttrVisible>
                    <Data v="1" t="0" />
                    <Type v="DataTypeBool" t="3" />
                </AttrVisible>
            </Attributes>
            <Body>
                <Geometry>
                    <Geometry0>
                        <Faces v="[0,1,2,0,2,6,0,4,5,0,5,1,0,6,4,1,3,2,1,5,3,2,3,7,2,7,6,3,5,7,4,6,7,4,7,5]" t="1" />
                        <GeometryType v="MeshGeometry" t="3" />
                        <Vertices v="[120.000000,0.000000,-8.000000,120.000000,0.000000,-4.000000,120.000000,1.000000,-8.000000,120.000000,1.000000,-4.000000,125.000000,0.000000,-8.000000,125.000000,0.000000,-4.000000,125.000000,1.000000,-8.000000,125.000000,1.000000,-4.000000]" t="2" />
                    </Geometry0>
                </Geometry>
            </Body>
            <GlobalID v="d9547fe0-9ce7-48f3-84e2-8f55e71b91a5" t="3" />
            <ID v="47" t="1" />
            <Name v="a7734a51b5de42898886344082e9d692" t="3" />
            <ObjectSubType v="BarrierActor" t="3" />
            <ObjectType v="Actor" t="3" />
        </a7734a51b5de42898886344082e9d692>
        <a9f697e49d954d6a92011fe5e9eb8f07>
            <Attributes>
                <AttrEnabled>
                    <Data v="1" t="0" />
                    <Type v="DataTypeBool" t="3" />
                </AttrEnabled>
                <AttrObjectColor>
                    <Data v="[0.000000,0.392000,0.575000,1.000000]" t="2" />
                    <Type v="DataTypeColor" t="3" />
                </AttrObjectColor>
                <AttrSceneObjectTransformGroup>
                    <Data v="00000000-0000-0000-0000-000000000000" t="3" />
                    <Type v="DataTypeGlobalID" t="3" />
                </AttrSceneObjectTransformGroup>
                <AttrVisible>
                    <Data v="1" t="0" />
                    <Type v="DataTypeBool" t="3" />
                </AttrVisible>
            </Attributes>
            <Body>
                <Geometry>
                    <Geometry0>
                        <Faces v="[0,1,3,0,2,4,0,3,2,0,4,5,0,5,1,1,5,7,1,7,3,2,3,7,2,6,4,2,7,6,4,6,5,5,6,7]" t="1" />
                        <GeometryType v="MeshGeometry" t="3" />
                        <Vertices v="[135.000000,0.000000,-4.300000,135.000000,0.000000,-4.000000,135.000000,1.000000,-4.300000,135.000000,1.000000,-4.000000,137.000000,0.000000,-4.300000,137.000000,0.000000,-4.000000,137.000000,1.000000,-4.300000,137.000000,1.000000,-4.000000]" t="2" />
                    </Geometry0>
                </Geometry>
            </Body>
            <GlobalID v="5cc9f760-e54c-4aea-afb4-4f2ae8ee1962" t="3" />
            <ID v="48" t="1" />
            <Name v="a9f697e49d954d6a92011fe5e9eb8f07" t="3" />
            <ObjectSubType v="BarrierActor" t="3" />
            <ObjectType v="Actor" t="3" />
        </a9f697e49d954d6a92011fe5e9eb8f07>
        <b54f66d4f84c4cf7b0d0eb9d4821a11b>
            <Attributes>
                <AttrEnabled>
                    <Data v="1" t="0" />
                    <Type v="DataTypeBool" t="3" />
                </AttrEnabled>
                <AttrObjectColor>
                    <Data v="[0.000000,0.392000,0.575000,1.000000]" t="2" />
                    <Type v="DataTypeColor" t="3" />
                </AttrObjectColor>
                <AttrSceneObjectTransformGroup>
                    <Data v="00000000-0000-0000-0000-000000000000" t="3" />
                    <Type v="DataTypeGlobalID" t="3" />
                </AttrSceneObjectTransformGroup>
                <AttrVisible>
                    <Data v="1" t="0" />
                    <Type v="DataTypeBool" t="3" />
                </AttrVisible>
            </Attributes>
            <Body>
                <Geometry>
                    <Geometry0>
                        <Faces v="[0,1,3,0,2,4,0,3,2,0,4,5,0,5,1,1,5,7,1,7,3,2,3,7,2,6,4,2,7,6,4,6,5,5,6,7]" t="1" />
                        <GeometryType v="MeshGeometry" t="3" />
                        <Vertices v="[101.000000,0.000000,-9.500000,101.000000,0.000000,-5.500000,101.000000,3.000000,-9.500000,101.000000,3.000000,-5.500000,110.000000,0.000000,-9.500000,110.000000,0.000000,-5.500000,110.000000,3.000000,-9.500000,110.000000,3.000000,-5.500000]" t="2" />
                    </Geometry0>
                </Geometry>
            </Body>
            <GlobalID v="c289ce7d-3f9a-4fdb-87a1-37f04f698dd3" t="3" />
            <ID v="46" t="1" />
            <Name v="b54f66d4f84c4cf7b0d0eb9d4821a11b" t="3" />
            <ObjectSubType v="BarrierActor" t="3" />
            <ObjectType v="Actor" t="3" />
        </b54f66d4f84c4cf7b0d0eb9d4821a11b>
        <cbfae7ad502e4b41a5617115aa91416e>
            <Attributes>
                <AttrEnabled>
                    <Data v="1" t="0" />
                    <Type v="DataTypeBool" t="3" />
                </AttrEnabled>
                <AttrObjectColor>
                    <Data v="[0.000000,0.392000,0.575000,1.000000]" t="2" />
                    <Type v="DataTypeColor" t="3" />
                </AttrObjectColor>
                <AttrSceneObjectTransformGroup>
                    <Data v="00000000-0000-0000-0000-000000000000" t="3" />
                    <Type v="DataTypeGlobalID" t="3" />
                </AttrSceneObjectTransformGroup>
                <AttrVisible>
                    <Data v="1" t="0" />
                    <Type v="DataTypeBool" t="3" />
                </AttrVisible>
            </Attributes>
            <Body>
                <Geometry>
                    <Geometry0>
                        <Faces v="[0,1,2,0,2,6,0,4,1,0,6,4,1,3,2,1,4,5,1,5,3,2,3,6,3,5,7,3,7,6,4,6,7,4,7,5]" t="1" />
                        <GeometryType v="MeshGeometry" t="3" />
                        <Vertices v="[135.000000,0.000000,-6.000000,135.000000,0.000000,-5.700000,135.000000,1.000000,-6.000000,135.000000,1.000000,-5.700000,137.000000,0.000000,-6.000000,137.000000,0.000000,-5.700000,137.000000,1.000000,-6.000000,137.000000,1.000000,-5.700000]" t="2" />
                    </Geometry0>
                </Geometry>
            </Body>
            <GlobalID v="1f204f20-4a51-48ff-862c-5c46d0787c5b" t="3" />
            <ID v="49" t="1" />
            <Name v="cbfae7ad502e4b41a5617115aa91416e" t="3" />
            <ObjectSubType v="BarrierActor" t="3" />
            <ObjectType v="Actor" t="3" />
        </cbfae7ad502e4b41a5617115aa91416e>
        <destination1>
            <Attributes>
                <AttrDrawFlagGoalLine>
                    <Data v="1" t="0" />
                    <Type v="DataTypeBool" t="3" />
                </AttrDrawFlagGoalLine>
                <AttrDrawStartAngle>
                    <Data v="1" t="0" />
                    <Type v="DataTypeBool" t="3" />
                </AttrDrawStartAngle>
                <AttrEnabled>
                    <Data v="1" t="0" />
                    <Type v="DataTypeBool" t="3" />
                </AttrEnabled>
                <AttrNetworkActorDistanceCost>
                    <Data v="0.000000" t="2" />
                    <Type v="DataTypeDouble" t="3" />
                </AttrNetworkActorDistanceCost>
                <AttrObjectColor>
                    <Data v="[0.000000,0.533000,0.000000,1.000000]" t="2" />
                    <Type v="DataTypeColor" t="3" />
                </AttrObjectColor>
                <AttrPortalActionEnter>
                    <Data>
                        <ActionType v="ActionNone" t="3" />
                    </Data>
                    <Type v="DataTypeAction" t="3" />
                </AttrPortalActionEnter>
                <AttrPortalActionWaypoint>
                    <Data>
                        <ActionType v="ActionNone" t="3" />
                    </Data>
                    <Type v="DataTypeAction" t="3" />
                </AttrPortalActionWaypoint>
                <AttrPortalDistribution>
                    <Data>
                        <EnumString v="DistributionAlongLine" t="3" />
                        <EnumValue v="0" t="1" />
                    </Data>
                    <Type v="DataTypeEnum" t="3" />
                </AttrPortalDistribution>
                <AttrPortalNetworkBehavior>
                    <Data>
                        <EnumString v="NetworkBehaviorEntranceAndWaypoint" t="3" />
                        <EnumValue v="2" t="1" />
                    </Data>
                    <Type v="DataTypeEnum" t="3" />
                </AttrPortalNetworkBehavior>
                <AttrPortalSpawnAngleDegrees>
                    <Data v="0.000000" t="2" />
                    <Type v="DataTypeDouble" t="3" />
                </AttrPortalSpawnAngleDegrees>
                <AttrSceneObjectTransformGroup>
                    <Data v="00000000-0000-0000-0000-000000000000" t="3" />
                    <Type v="DataTypeGlobalID" t="3" />
                </AttrSceneObjectTransformGroup>
                <AttrVisible>
                    <Data v="1" t="0" />
                    <Type v="DataTypeBool" t="3" />
                </AttrVisible>
            </Attributes>
            <Body>
                <Attributes>
                    <AttrPortalGoalEdgeIndices>
                        <Data v="[1,3]" t="1" />
                        <Type v="DataTypeVectorInt" t="3" />
                    </AttrPortalGoalEdgeIndices>
                    <AttrPortalGoalPointPositions>
                        <Data v="[112.500000,-7.170000,-2.964008,112.500000,-7.170000,-8.600000]" t="2" />
                        <Type v="DataTypeVectorDouble" t="3" />
                    </AttrPortalGoalPointPositions>
                </Attributes>
                <Geometry>
                    <Geometry0>
                        <Faces v="[0,2,1,1,2,3]" t="1" />
                        <GeometryType v="MeshGeometry" t="3" />
                        <Vertices v="[112.000000,-7.180000,-2.764008,112.000000,-7.180000,-8.800000,113.000000,-7.180000,-2.764008,113.000000,-7.180000,-8.800000]" t="2" />
                    </Geometry0>
                </Geometry>
            </Body>
            <GlobalID v="88ec11f7-e625-4028-9e5c-8e9658bbaaeb" t="3" />
            <ID v="35" t="1" />
            <Name v="destination1" t="3" />
            <ObjectSubType v="PortalActor" t="3" />
            <ObjectType v="Actor" t="3" />
        </destination1>
        <escalator1>
            <Attributes>
                <AttrCEActorActionAlphaEnter>
                    <Data>
                        <ActionType v="ActionNone" t="3" />
                    </Data>
                    <Type v="DataTypeAction" t="3" />
                </AttrCEActorActionAlphaEnter>
                <AttrCEActorActionAlphaExit>
                    <Data>
                        <ActionType v="ActionNone" t="3" />
                    </Data>
                    <Type v="DataTypeAction" t="3" />
                </AttrCEActorActionAlphaExit>
                <AttrCEActorActionOmegaEnter>
                    <Data>
                        <ActionType v="ActionNone" t="3" />
                    </Data>
                    <Type v="DataTypeAction" t="3" />
                </AttrCEActorActionOmegaEnter>
                <AttrCEActorActionOmegaExit>
                    <Data>
                        <ActionType v="ActionNone" t="3" />
                    </Data>
                    <Type v="DataTypeAction" t="3" />
                </AttrCEActorActionOmegaExit>
                <AttrCEActorBank>
                    <Data v="64dd335f-7cc3-495a-a7f9-f97d75a07972" t="3" />
                    <Type v="DataTypeGlobalID" t="3" />
                </AttrCEActorBank>
                <AttrCEActorControlFlowEnabled>
                    <Data v="1" t="0" />
                    <Type v="DataTypeBool" t="3" />
                </AttrCEActorControlFlowEnabled>
                <AttrCEActorControlFlowRate>
                    <Data v="48.000000" t="2" />
                    <Type v="DataTypeDouble" t="3" />
                </AttrCEActorControlFlowRate>
                <AttrCEActorControlFlowRatePerMeter>
                    <Data v="50.000000" t="2" />
                    <Type v="DataTypeDouble" t="3" />
                </AttrCEActorControlFlowRatePerMeter>
                <AttrCEActorControlFlowType>
                    <Data>
                        <EnumString v="FlowRateAbsolute" t="3" />
                        <EnumValue v="0" t="1" />
                    </Data>
                    <Type v="DataTypeEnum" t="3" />
                </AttrCEActorControlFlowType>
                <AttrCEActorDelayInDistribution>
                    <Data>
                        <!--Constant: [value,,,], Uniform: [min,max,,], Normal: [min,max,mean,std], Triangular: [min,max,mode,], Exponential: [min,max,lambda]-->
                        <Type v="Constant" t="3" />
                        <Values v="[0.000000]" t="2" />
                    </Data>
                    <Type v="DataTypeDistribution" t="3" />
                </AttrCEActorDelayInDistribution>
                <AttrCEActorDelayOutDistribution>
                    <Data>
                        <!--Constant: [value,,,], Uniform: [min,max,,], Normal: [min,max,mean,std], Triangular: [min,max,mode,], Exponential: [min,max,lambda]-->
                        <Type v="Constant" t="3" />
                        <Values v="[0.000000]" t="2" />
                    </Data>
                    <Type v="DataTypeDistribution" t="3" />
                </AttrCEActorDelayOutDistribution>
                <AttrCEActorDirection>
                    <Data>
                        <EnumString v="DirectionOmegaToAlpha" t="3" />
                        <EnumValue v="1" t="1" />
                    </Data>
                    <Type v="DataTypeEnum" t="3" />
                </AttrCEActorDirection>
                <AttrCEActorGateCost>
                    <Data v="20.000000" t="2" />
                    <Type v="DataTypeDouble" t="3" />
                </AttrCEActorGateCost>
                <AttrCEActorGateDefaultState>
                    <Data>
                        <EnumString v="CommandClose" t="3" />
                        <EnumValue v="1" t="1" />
                    </Data>
                    <Type v="DataTypeEnum" t="3" />
                </AttrCEActorGateDefaultState>
                <AttrCEActorGateEnabled>
                    <Data v="0" t="0" />
                    <Type v="DataTypeBool" t="3" />
                </AttrCEActorGateEnabled>
                <AttrCEActorGateIgnoreOthersWhenWaiting>
                    <Data v="0" t="0" />
                    <Type v="DataTypeBool" t="3" />
                </AttrCEActorGateIgnoreOthersWhenWaiting>
                <AttrCEActorGateWaitStyle>
                    <Data>
                        <WaitStyleType v="WaitFocus" t="3" />
                    </Data>
                    <Type v="DataTypeWaitStyle" t="3" />
                </AttrCEActorGateWaitStyle>
                <AttrCEActorMarshalEnabled>
                    <Data v="1" t="0" />
                    <Type v="DataTypeBool" t="3" />
                </AttrCEActorMarshalEnabled>
                <AttrCEActorPerimeters>
                    <Data v="[]" t="3" />
                    <Type v="DataTypeSetGlobalID" t="3" />
                </AttrCEActorPerimeters>
                <AttrDrawCEDirection>
                    <Data v="1" t="0" />
                    <Type v="DataTypeBool" t="3" />
                </AttrDrawCEDirection>
                <AttrDrawFlagGate>
                    <Data v="1" t="0" />
                    <Type v="DataTypeBool" t="3" />
                </AttrDrawFlagGate>
                <AttrDrawFlagGoalLine>
                    <Data v="1" t="0" />
                    <Type v="DataTypeBool" t="3" />
                </AttrDrawFlagGoalLine>
                <AttrDrawPriorityFlow>
                    <Data v="1" t="0" />
                    <Type v="DataTypeBool" t="3" />
                </AttrDrawPriorityFlow>
                <AttrEnabled>
                    <Data v="1" t="0" />
                    <Type v="DataTypeBool" t="3" />
                </AttrEnabled>
                <AttrEscalatorActorTreadSpeed>
                    <Data v="0.500000" t="2" />
                    <Type v="DataTypeDouble" t="3" />
                </AttrEscalatorActorTreadSpeed>
                <AttrNetworkActorDistanceCost>
                    <Data v="0.000000" t="2" />
                    <Type v="DataTypeDouble" t="3" />
                </AttrNetworkActorDistanceCost>
                <AttrNetworkActorQueueCostFactor>
                    <Data v="1.000000" t="2" />
                    <Type v="DataTypeDouble" t="3" />
                </AttrNetworkActorQueueCostFactor>
                <AttrNetworkZonesAsPrimaryMember>
                    <Data v="[]" t="3" />
                    <Type v="DataTypeSetGlobalID" t="3" />
                </AttrNetworkZonesAsPrimaryMember>
                <AttrObjectColor>
                    <Data v="[0.694000,0.188000,0.000000,1.000000]" t="2" />
                    <Type v="DataTypeColor" t="3" />
                </AttrObjectColor>
                <AttrSceneObjectTransformGroup>
                    <Data v="00000000-0000-0000-0000-000000000000" t="3" />
                    <Type v="DataTypeGlobalID" t="3" />
                </AttrSceneObjectTransformGroup>
                <AttrSurfaceMapResolution>
                    <Data>
                        <EnumString v="SurfaceMapResolution10cm" t="3" />
                        <EnumValue v="2" t="1" />
                    </Data>
                    <Type v="DataTypeEnum" t="3" />
                </AttrSurfaceMapResolution>
                <AttrVerticalCEActorRiseAngle>
                    <Data v="36.800000" t="2" />
                    <Type v="DataTypeDouble" t="3" />
                </AttrVerticalCEActorRiseAngle>
                <AttrVerticalCEActorRiseAngleType>
                    <Data>
                        <EnumString v="ValueProvenanceAutoGenerated" t="3" />
                        <EnumValue v="0" t="1" />
                    </Data>
                    <Type v="DataTypeEnum" t="3" />
                </AttrVerticalCEActorRiseAngleType>
                <AttrVisible>
                    <Data v="1" t="0" />
                    <Type v="DataTypeBool" t="3" />
                </AttrVisible>
                <AttrWalkableActorIsIgnoreBarrieres>
                    <Data v="1" t="0" />
                    <Type v="DataTypeBool" t="3" />
                </AttrWalkableActorIsIgnoreBarrieres>
                <AttrWalkableActorIsIgnoreNeighbors>
                    <Data v="0" t="0" />
                    <Type v="DataTypeBool" t="3" />
                </AttrWalkableActorIsIgnoreNeighbors>
                <AttrWalkableActorIsVirtual>
                    <Data v="0" t="0" />
                    <Type v="DataTypeBool" t="3" />
                </AttrWalkableActorIsVirtual>
                <AttrWalkableActorLocalAgentRadius>
                    <Data v="0.250000" t="2" />
                    <Type v="DataTypeDouble" t="3" />
                </AttrWalkableActorLocalAgentRadius>
                <AttrWalkableActorLocalAgentRadiusEnabled>
                    <Data v="0" t="0" />
                    <Type v="DataTypeBool" t="3" />
                </AttrWalkableActorLocalAgentRadiusEnabled>
            </Attributes>
            <Body>
                <Attributes>
                    <AttrCEActorGoalPointPositions>
                        <Data v="[114.899994,-7.170000,-5.575000,114.899994,-7.170000,-4.425000,137.181870,0.030000,-4.425000,137.181870,0.030000,-5.575000]" t="2" />
                        <Type v="DataTypeVectorDouble" t="3" />
                    </AttrCEActorGoalPointPositions>
                    <AttrCEActorGoalVertexIndices>
                        <Data v="[0,1,7,6]" t="1" />
                        <Type v="DataTypeVectorInt" t="3" />
                    </AttrCEActorGoalVertexIndices>
                </Attributes>
                <Geometry>
                    <Geometry0>
                        <Faces v="[0,1,3,0,3,2,2,3,5,2,5,4,4,5,7,4,7,6]" t="1" />
                        <GeometryType v="MeshGeometry" t="3" />
                        <Vertices v="[114.699997,-7.180000,-5.775000,114.699997,-7.180000,-4.225000,115.199997,-7.180000,-5.775000,115.199997,-7.180000,-4.225000,135.000000,0.020000,-5.775000,135.000000,0.020000,-4.225000,137.381866,0.020000,-5.775000,137.381866,0.020000,-4.225000]" t="2" />
                    </Geometry0>
                </Geometry>
            </Body>
            <GlobalID v="83b0e0c9-da8f-44db-b181-80211fcd63a1" t="3" />
            <ID v="43" t="1" />
            <Name v="escalator1" t="3" />
            <ObjectSubType v="EscalatorActor" t="3" />
            <ObjectType v="Actor" t="3" />
        </escalator1>
        <origin1>
            <Attributes>
                <AttrDrawFlagGoalLine>
                    <Data v="1" t="0" />
                    <Type v="DataTypeBool" t="3" />
                </AttrDrawFlagGoalLine>
                <AttrDrawStartAngle>
                    <Data v="1" t="0" />
                    <Type v="DataTypeBool" t="3" />
                </AttrDrawStartAngle>
                <AttrEnabled>
                    <Data v="1" t="0" />
                    <Type v="DataTypeBool" t="3" />
                </AttrEnabled>
                <AttrNetworkActorDistanceCost>
                    <Data v="0.000000" t="2" />
                    <Type v="DataTypeDouble" t="3" />
                </AttrNetworkActorDistanceCost>
                <AttrObjectColor>
                    <Data v="[0.000000,0.533000,0.000000,1.000000]" t="2" />
                    <Type v="DataTypeColor" t="3" />
                </AttrObjectColor>
                <AttrPortalActionEnter>
                    <Data>
                        <ActionType v="ActionNone" t="3" />
                    </Data>
                    <Type v="DataTypeAction" t="3" />
                </AttrPortalActionEnter>
                <AttrPortalActionWaypoint>
                    <Data>
                        <ActionType v="ActionNone" t="3" />
                    </Data>
                    <Type v="DataTypeAction" t="3" />
                </AttrPortalActionWaypoint>
                <AttrPortalDistribution>
                    <Data>
                        <EnumString v="DistributionAlongLine" t="3" />
                        <EnumValue v="0" t="1" />
                    </Data>
                    <Type v="DataTypeEnum" t="3" />
                </AttrPortalDistribution>
                <AttrPortalNetworkBehavior>
                    <Data>
                        <EnumString v="NetworkBehaviorEntranceAndWaypoint" t="3" />
                        <EnumValue v="2" t="1" />
                    </Data>
                    <Type v="DataTypeEnum" t="3" />
                </AttrPortalNetworkBehavior>
                <AttrPortalSpawnAngleDegrees>
                    <Data v="0.000000" t="2" />
                    <Type v="DataTypeDouble" t="3" />
                </AttrPortalSpawnAngleDegrees>
                <AttrSceneObjectTransformGroup>
                    <Data v="00000000-0000-0000-0000-000000000000" t="3" />
                    <Type v="DataTypeGlobalID" t="3" />
                </AttrSceneObjectTransformGroup>
                <AttrVisible>
                    <Data v="1" t="0" />
                    <Type v="DataTypeBool" t="3" />
                </AttrVisible>
            </Attributes>
            <Body>
                <Attributes>
                    <AttrPortalGoalEdgeIndices>
                        <Data v="[0,4]" t="1" />
                        <Type v="DataTypeVectorInt" t="3" />
                    </AttrPortalGoalEdgeIndices>
                    <AttrPortalGoalPointPositions>
                        <Data v="[123.700000,0.030000,-11.750000,124.499997,0.030000,-11.750000]" t="2" />
                        <Type v="DataTypeVectorDouble" t="3" />
                    </AttrPortalGoalPointPositions>
                </Attributes>
                <Geometry>
                    <Geometry0>
                        <Faces v="[0,2,1,1,2,3]" t="1" />
                        <GeometryType v="MeshGeometry" t="3" />
                        <Vertices v="[123.500000,0.020000,-11.500000,123.500000,0.020000,-12.000000,124.699997,0.020000,-11.500000,124.699997,0.020000,-12.000000]" t="2" />
                    </Geometry0>
                </Geometry>
            </Body>
            <GlobalID v="b197addf-151e-468b-b351-784f73140cb6" t="3" />
            <ID v="31" t="1" />
            <Name v="origin1" t="3" />
            <ObjectSubType v="PortalActor" t="3" />
            <ObjectType v="Actor" t="3" />
        </origin1>
        <origin2>
            <Attributes>
                <AttrDrawFlagGoalLine>
                    <Data v="1" t="0" />
                    <Type v="DataTypeBool" t="3" />
                </AttrDrawFlagGoalLine>
                <AttrDrawStartAngle>
                    <Data v="1" t="0" />
                    <Type v="DataTypeBool" t="3" />
                </AttrDrawStartAngle>
                <AttrEnabled>
                    <Data v="1" t="0" />
                    <Type v="DataTypeBool" t="3" />
                </AttrEnabled>
                <AttrNetworkActorDistanceCost>
                    <Data v="0.000000" t="2" />
                    <Type v="DataTypeDouble" t="3" />
                </AttrNetworkActorDistanceCost>
                <AttrObjectColor>
                    <Data v="[0.000000,0.533000,0.000000,1.000000]" t="2" />
                    <Type v="DataTypeColor" t="3" />
                </AttrObjectColor>
                <AttrPortalActionEnter>
                    <Data>
                        <ActionType v="ActionNone" t="3" />
                    </Data>
                    <Type v="DataTypeAction" t="3" />
                </AttrPortalActionEnter>
                <AttrPortalActionWaypoint>
                    <Data>
                        <ActionType v="ActionNone" t="3" />
                    </Data>
                    <Type v="DataTypeAction" t="3" />
                </AttrPortalActionWaypoint>
                <AttrPortalDistribution>
                    <Data>
                        <EnumString v="DistributionAlongLine" t="3" />
                        <EnumValue v="0" t="1" />
                    </Data>
                    <Type v="DataTypeEnum" t="3" />
                </AttrPortalDistribution>
                <AttrPortalNetworkBehavior>
                    <Data>
                        <EnumString v="NetworkBehaviorEntranceAndWaypoint" t="3" />
                        <EnumValue v="2" t="1" />
                    </Data>
                    <Type v="DataTypeEnum" t="3" />
                </AttrPortalNetworkBehavior>
                <AttrPortalSpawnAngleDegrees>
                    <Data v="0.000000" t="2" />
                    <Type v="DataTypeDouble" t="3" />
                </AttrPortalSpawnAngleDegrees>
                <AttrSceneObjectTransformGroup>
                    <Data v="00000000-0000-0000-0000-000000000000" t="3" />
                    <Type v="DataTypeGlobalID" t="3" />
                </AttrSceneObjectTransformGroup>
                <AttrVisible>
                    <Data v="1" t="0" />
                    <Type v="DataTypeBool" t="3" />
                </AttrVisible>
            </Attributes>
            <Body>
                <Attributes>
                    <AttrPortalGoalEdgeIndices>
                        <Data v="[0,4]" t="1" />
                        <Type v="DataTypeVectorInt" t="3" />
                    </AttrPortalGoalEdgeIndices>
                    <AttrPortalGoalPointPositions>
                        <Data v="[84.700000,0.030000,-11.750000,85.500001,0.030000,-11.750000]" t="2" />
                        <Type v="DataTypeVectorDouble" t="3" />
                    </AttrPortalGoalPointPositions>
                </Attributes>
                <Geometry>
                    <Geometry0>
                        <Faces v="[0,2,1,1,2,3]" t="1" />
                        <GeometryType v="MeshGeometry" t="3" />
                        <Vertices v="[84.500000,0.020000,-11.500000,84.500000,0.020000,-12.000000,85.700005,0.020000,-11.500000,85.700005,0.020000,-12.000000]" t="2" />
                    </Geometry0>
                </Geometry>
            </Body>
            <GlobalID v="4afd9853-7192-4674-b3f3-2c1a951ba451" t="3" />
            <ID v="33" t="1" />
            <Name v="origin2" t="3" />
            <ObjectSubType v="PortalActor" t="3" />
            <ObjectType v="Actor" t="3" />
        </origin2>
        <origin3>
            <Attributes>
                <AttrDrawFlagGoalLine>
                    <Data v="1" t="0" />
                    <Type v="DataTypeBool" t="3" />
                </AttrDrawFlagGoalLine>
                <AttrDrawStartAngle>
                    <Data v="1" t="0" />
                    <Type v="DataTypeBool" t="3" />
                </AttrDrawStartAngle>
                <AttrEnabled>
                    <Data v="1" t="0" />
                    <Type v="DataTypeBool" t="3" />
                </AttrEnabled>
                <AttrNetworkActorDistanceCost>
                    <Data v="0.000000" t="2" />
                    <Type v="DataTypeDouble" t="3" />
                </AttrNetworkActorDistanceCost>
                <AttrObjectColor>
                    <Data v="[0.000000,0.533000,0.000000,1.000000]" t="2" />
                    <Type v="DataTypeColor" t="3" />
                </AttrObjectColor>
                <AttrPortalActionEnter>
                    <Data>
                        <ActionType v="ActionNone" t="3" />
                    </Data>
                    <Type v="DataTypeAction" t="3" />
                </AttrPortalActionEnter>
                <AttrPortalActionWaypoint>
                    <Data>
                        <ActionType v="ActionNone" t="3" />
                    </Data>
                    <Type v="DataTypeAction" t="3" />
                </AttrPortalActionWaypoint>
                <AttrPortalDistribution>
                    <Data>
                        <EnumString v="DistributionAlongLine" t="3" />
                        <EnumValue v="0" t="1" />
                    </Data>
                    <Type v="DataTypeEnum" t="3" />
                </AttrPortalDistribution>
                <AttrPortalNetworkBehavior>
                    <Data>
                        <EnumString v="NetworkBehaviorEntranceAndWaypoint" t="3" />
                        <EnumValue v="2" t="1" />
                    </Data>
                    <Type v="DataTypeEnum" t="3" />
                </AttrPortalNetworkBehavior>
                <AttrPortalSpawnAngleDegrees>
                    <Data v="0.000000" t="2" />
                    <Type v="DataTypeDouble" t="3" />
                </AttrPortalSpawnAngleDegrees>
                <AttrSceneObjectTransformGroup>
                    <Data v="00000000-0000-0000-0000-000000000000" t="3" />
                    <Type v="DataTypeGlobalID" t="3" />
                </AttrSceneObjectTransformGroup>
                <AttrVisible>
                    <Data v="1" t="0" />
                    <Type v="DataTypeBool" t="3" />
                </AttrVisible>
            </Attributes>
            <Body>
                <Attributes>
                    <AttrPortalGoalEdgeIndices>
                        <Data v="[0,4]" t="1" />
                        <Type v="DataTypeVectorInt" t="3" />
                    </AttrPortalGoalEdgeIndices>
                    <AttrPortalGoalPointPositions>
                        <Data v="[143.200000,0.030000,-11.750000,143.999997,0.030000,-11.750000]" t="2" />
                        <Type v="DataTypeVectorDouble" t="3" />
                    </AttrPortalGoalPointPositions>
                </Attributes>
                <Geometry>
                    <Geometry0>
                        <Faces v="[0,2,1,1,2,3]" t="1" />
                        <GeometryType v="MeshGeometry" t="3" />
                        <Vertices v="[143.000000,0.020000,-11.500000,143.000000,0.020000,-12.000000,144.199997,0.020000,-11.500000,144.199997,0.020000,-12.000000]" t="2" />
                    </Geometry0>
                </Geometry>
            </Body>
            <GlobalID v="f364031e-6bde-42d9-b9fc-fd7996fdf580" t="3" />
            <ID v="30" t="1" />
            <Name v="origin3" t="3" />
            <ObjectSubType v="PortalActor" t="3" />
            <ObjectType v="Actor" t="3" />
        </origin3>
        <origin4>
            <Attributes>
                <AttrDrawFlagGoalLine>
                    <Data v="1" t="0" />
                    <Type v="DataTypeBool" t="3" />
                </AttrDrawFlagGoalLine>
                <AttrDrawStartAngle>
                    <Data v="1" t="0" />
                    <Type v="DataTypeBool" t="3" />
                </AttrDrawStartAngle>
                <AttrEnabled>
                    <Data v="1" t="0" />
                    <Type v="DataTypeBool" t="3" />
                </AttrEnabled>
                <AttrNetworkActorDistanceCost>
                    <Data v="0.000000" t="2" />
                    <Type v="DataTypeDouble" t="3" />
                </AttrNetworkActorDistanceCost>
                <AttrObjectColor>
                    <Data v="[0.000000,0.533000,0.000000,1.000000]" t="2" />
                    <Type v="DataTypeColor" t="3" />
                </AttrObjectColor>
                <AttrPortalActionEnter>
                    <Data>
                        <ActionType v="ActionNone" t="3" />
                    </Data>
                    <Type v="DataTypeAction" t="3" />
                </AttrPortalActionEnter>
                <AttrPortalActionWaypoint>
                    <Data>
                        <ActionType v="ActionNone" t="3" />
                    </Data>
                    <Type v="DataTypeAction" t="3" />
                </AttrPortalActionWaypoint>
                <AttrPortalDistribution>
                    <Data>
                        <EnumString v="DistributionAlongLine" t="3" />
                        <EnumValue v="0" t="1" />
                    </Data>
                    <Type v="DataTypeEnum" t="3" />
                </AttrPortalDistribution>
                <AttrPortalNetworkBehavior>
                    <Data>
                        <EnumString v="NetworkBehaviorEntranceAndWaypoint" t="3" />
                        <EnumValue v="2" t="1" />
                    </Data>
                    <Type v="DataTypeEnum" t="3" />
                </AttrPortalNetworkBehavior>
                <AttrPortalSpawnAngleDegrees>
                    <Data v="0.000000" t="2" />
                    <Type v="DataTypeDouble" t="3" />
                </AttrPortalSpawnAngleDegrees>
                <AttrSceneObjectTransformGroup>
                    <Data v="00000000-0000-0000-0000-000000000000" t="3" />
                    <Type v="DataTypeGlobalID" t="3" />
                </AttrSceneObjectTransformGroup>
                <AttrVisible>
                    <Data v="1" t="0" />
                    <Type v="DataTypeBool" t="3" />
                </AttrVisible>
            </Attributes>
            <Body>
                <Attributes>
                    <AttrPortalGoalEdgeIndices>
                        <Data v="[0,4]" t="1" />
                        <Type v="DataTypeVectorInt" t="3" />
                    </AttrPortalGoalEdgeIndices>
                    <AttrPortalGoalPointPositions>
                        <Data v="[162.700000,0.030000,-11.750000,163.499997,0.030000,-11.750000]" t="2" />
                        <Type v="DataTypeVectorDouble" t="3" />
                    </AttrPortalGoalPointPositions>
                </Attributes>
                <Geometry>
                    <Geometry0>
                        <Faces v="[0,2,1,1,2,3]" t="1" />
                        <GeometryType v="MeshGeometry" t="3" />
                        <Vertices v="[162.500000,0.020000,-11.500000,162.500000,0.020000,-12.000000,163.699997,0.020000,-11.500000,163.699997,0.020000,-12.000000]" t="2" />
                    </Geometry0>
                </Geometry>
            </Body>
            <GlobalID v="cc5983dd-4b31-4f79-91e7-26d0ee4ccf4f" t="3" />
            <ID v="29" t="1" />
            <Name v="origin4" t="3" />
            <ObjectSubType v="PortalActor" t="3" />
            <ObjectType v="Actor" t="3" />
        </origin4>
        <origin5>
            <Attributes>
                <AttrDrawFlagGoalLine>
                    <Data v="1" t="0" />
                    <Type v="DataTypeBool" t="3" />
                </AttrDrawFlagGoalLine>
                <AttrDrawStartAngle>
                    <Data v="1" t="0" />
                    <Type v="DataTypeBool" t="3" />
                </AttrDrawStartAngle>
                <AttrEnabled>
                    <Data v="1" t="0" />
                    <Type v="DataTypeBool" t="3" />
                </AttrEnabled>
                <AttrNetworkActorDistanceCost>
                    <Data v="0.000000" t="2" />
                    <Type v="DataTypeDouble" t="3" />
                </AttrNetworkActorDistanceCost>
                <AttrObjectColor>
                    <Data v="[0.000000,0.533000,0.000000,1.000000]" t="2" />
                    <Type v="DataTypeColor" t="3" />
                </AttrObjectColor>
                <AttrPortalActionEnter>
                    <Data>
                        <ActionType v="ActionNone" t="3" />
                    </Data>
                    <Type v="DataTypeAction" t="3" />
                </AttrPortalActionEnter>
                <AttrPortalActionWaypoint>
                    <Data>
                        <ActionType v="ActionNone" t="3" />
                    </Data>
                    <Type v="DataTypeAction" t="3" />
                </AttrPortalActionWaypoint>
                <AttrPortalDistribution>
                    <Data>
                        <EnumString v="DistributionAlongLine" t="3" />
                        <EnumValue v="0" t="1" />
                    </Data>
                    <Type v="DataTypeEnum" t="3" />
                </AttrPortalDistribution>
                <AttrPortalNetworkBehavior>
                    <Data>
                        <EnumString v="NetworkBehaviorEntranceAndWaypoint" t="3" />
                        <EnumValue v="2" t="1" />
                    </Data>
                    <Type v="DataTypeEnum" t="3" />
                </AttrPortalNetworkBehavior>
                <AttrPortalSpawnAngleDegrees>
                    <Data v="0.000000" t="2" />
                    <Type v="DataTypeDouble" t="3" />
                </AttrPortalSpawnAngleDegrees>
                <AttrSceneObjectTransformGroup>
                    <Data v="00000000-0000-0000-0000-000000000000" t="3" />
                    <Type v="DataTypeGlobalID" t="3" />
                </AttrSceneObjectTransformGroup>
                <AttrVisible>
                    <Data v="1" t="0" />
                    <Type v="DataTypeBool" t="3" />
                </AttrVisible>
            </Attributes>
            <Body>
                <Attributes>
                    <AttrPortalGoalEdgeIndices>
                        <Data v="[0,4]" t="1" />
                        <Type v="DataTypeVectorInt" t="3" />
                    </AttrPortalGoalEdgeIndices>
                    <AttrPortalGoalPointPositions>
                        <Data v="[201.700000,0.030000,-11.750000,202.499997,0.030000,-11.750000]" t="2" />
                        <Type v="DataTypeVectorDouble" t="3" />
                    </AttrPortalGoalPointPositions>
                </Attributes>
                <Geometry>
                    <Geometry0>
                        <Faces v="[0,2,1,1,2,3]" t="1" />
                        <GeometryType v="MeshGeometry" t="3" />
                        <Vertices v="[201.500000,0.020000,-11.500000,201.500000,0.020000,-12.000000,202.699997,0.020000,-11.500000,202.699997,0.020000,-12.000000]" t="2" />
                    </Geometry0>
                </Geometry>
            </Body>
            <GlobalID v="ba8bea2d-7dba-492c-900e-66186a926299" t="3" />
            <ID v="27" t="1" />
            <Name v="origin5" t="3" />
            <ObjectSubType v="PortalActor" t="3" />
            <ObjectType v="Actor" t="3" />
        </origin5>
        <origin6>
            <Attributes>
                <AttrDrawFlagGoalLine>
                    <Data v="1" t="0" />
                    <Type v="DataTypeBool" t="3" />
                </AttrDrawFlagGoalLine>
                <AttrDrawStartAngle>
                    <Data v="1" t="0" />
                    <Type v="DataTypeBool" t="3" />
                </AttrDrawStartAngle>
                <AttrEnabled>
                    <Data v="1" t="0" />
                    <Type v="DataTypeBool" t="3" />
                </AttrEnabled>
                <AttrNetworkActorDistanceCost>
                    <Data v="0.000000" t="2" />
                    <Type v="DataTypeDouble" t="3" />
                </AttrNetworkActorDistanceCost>
                <AttrObjectColor>
                    <Data v="[0.000000,0.533000,0.000000,1.000000]" t="2" />
                    <Type v="DataTypeColor" t="3" />
                </AttrObjectColor>
                <AttrPortalActionEnter>
                    <Data>
                        <ActionType v="ActionNone" t="3" />
                    </Data>
                    <Type v="DataTypeAction" t="3" />
                </AttrPortalActionEnter>
                <AttrPortalActionWaypoint>
                    <Data>
                        <ActionType v="ActionNone" t="3" />
                    </Data>
                    <Type v="DataTypeAction" t="3" />
                </AttrPortalActionWaypoint>
                <AttrPortalDistribution>
                    <Data>
                        <EnumString v="DistributionAlongLine" t="3" />
                        <EnumValue v="0" t="1" />
                    </Data>
                    <Type v="DataTypeEnum" t="3" />
                </AttrPortalDistribution>
                <AttrPortalNetworkBehavior>
                    <Data>
                        <EnumString v="NetworkBehaviorEntranceAndWaypoint" t="3" />
                        <EnumValue v="2" t="1" />
                    </Data>
                    <Type v="DataTypeEnum" t="3" />
                </AttrPortalNetworkBehavior>
                <AttrPortalSpawnAngleDegrees>
                    <Data v="0.000000" t="2" />
                    <Type v="DataTypeDouble" t="3" />
                </AttrPortalSpawnAngleDegrees>
                <AttrSceneObjectTransformGroup>
                    <Data v="00000000-0000-0000-0000-000000000000" t="3" />
                    <Type v="DataTypeGlobalID" t="3" />
                </AttrSceneObjectTransformGroup>
                <AttrVisible>
                    <Data v="1" t="0" />
                    <Type v="DataTypeBool" t="3" />
                </AttrVisible>
            </Attributes>
            <Body>
                <Attributes>
                    <AttrPortalGoalEdgeIndices>
                        <Data v="[0,4]" t="1" />
                        <Type v="DataTypeVectorInt" t="3" />
                    </AttrPortalGoalEdgeIndices>
                    <AttrPortalGoalPointPositions>
                        <Data v="[182.200000,0.030000,-11.750000,182.999997,0.030000,-11.750000]" t="2" />
                        <Type v="DataTypeVectorDouble" t="3" />
                    </AttrPortalGoalPointPositions>
                </Attributes>
                <Geometry>
                    <Geometry0>
                        <Faces v="[0,2,1,1,2,3]" t="1" />
                        <GeometryType v="MeshGeometry" t="3" />
                        <Vertices v="[182.000000,0.020000,-11.500000,182.000000,0.020000,-12.000000,183.199997,0.020000,-11.500000,183.199997,0.020000,-12.000000]" t="2" />
                    </Geometry0>
                </Geometry>
            </Body>
            <GlobalID v="56b441e6-6d7c-4db9-82bb-6f335fa91706" t="3" />
            <ID v="28" t="1" />
            <Name v="origin6" t="3" />
            <ObjectSubType v="PortalActor" t="3" />
            <ObjectType v="Actor" t="3" />
        </origin6>
        <origin7>
            <Attributes>
                <AttrDrawFlagGoalLine>
                    <Data v="1" t="0" />
                    <Type v="DataTypeBool" t="3" />
                </AttrDrawFlagGoalLine>
                <AttrDrawStartAngle>
                    <Data v="1" t="0" />
                    <Type v="DataTypeBool" t="3" />
                </AttrDrawStartAngle>
                <AttrEnabled>
                    <Data v="1" t="0" />
                    <Type v="DataTypeBool" t="3" />
                </AttrEnabled>
                <AttrNetworkActorDistanceCost>
                    <Data v="0.000000" t="2" />
                    <Type v="DataTypeDouble" t="3" />
                </AttrNetworkActorDistanceCost>
                <AttrObjectColor>
                    <Data v="[0.000000,0.533000,0.000000,1.000000]" t="2" />
                    <Type v="DataTypeColor" t="3" />
                </AttrObjectColor>
                <AttrPortalActionEnter>
                    <Data>
                        <ActionType v="ActionNone" t="3" />
                    </Data>
                    <Type v="DataTypeAction" t="3" />
                </AttrPortalActionEnter>
                <AttrPortalActionWaypoint>
                    <Data>
                        <ActionType v="ActionNone" t="3" />
                    </Data>
                    <Type v="DataTypeAction" t="3" />
                </AttrPortalActionWaypoint>
                <AttrPortalDistribution>
                    <Data>
                        <EnumString v="DistributionAlongLine" t="3" />
                        <EnumValue v="0" t="1" />
                    </Data>
                    <Type v="DataTypeEnum" t="3" />
                </AttrPortalDistribution>
                <AttrPortalNetworkBehavior>
                    <Data>
                        <EnumString v="NetworkBehaviorEntranceAndWaypoint" t="3" />
                        <EnumValue v="2" t="1" />
                    </Data>
                    <Type v="DataTypeEnum" t="3" />
                </AttrPortalNetworkBehavior>
                <AttrPortalSpawnAngleDegrees>
                    <Data v="0.000000" t="2" />
                    <Type v="DataTypeDouble" t="3" />
                </AttrPortalSpawnAngleDegrees>
                <AttrSceneObjectTransformGroup>
                    <Data v="00000000-0000-0000-0000-000000000000" t="3" />
                    <Type v="DataTypeGlobalID" t="3" />
                </AttrSceneObjectTransformGroup>
                <AttrVisible>
                    <Data v="1" t="0" />
                    <Type v="DataTypeBool" t="3" />
                </AttrVisible>
            </Attributes>
            <Body>
                <Attributes>
                    <AttrPortalGoalEdgeIndices>
                        <Data v="[0,4]" t="1" />
                        <Type v="DataTypeVectorInt" t="3" />
                    </AttrPortalGoalEdgeIndices>
                    <AttrPortalGoalPointPositions>
                        <Data v="[104.200000,0.030000,-11.750000,105.000001,0.030000,-11.750000]" t="2" />
                        <Type v="DataTypeVectorDouble" t="3" />
                    </AttrPortalGoalPointPositions>
                </Attributes>
                <Geometry>
                    <Geometry0>
                        <Faces v="[0,2,1,1,2,3]" t="1" />
                        <GeometryType v="MeshGeometry" t="3" />
                        <Vertices v="[104.000000,0.020000,-11.500000,104.000000,0.020000,-12.000000,105.200005,0.020000,-11.500000,105.200005,0.020000,-12.000000]" t="2" />
                    </Geometry0>
                </Geometry>
            </Body>
            <GlobalID v="a2178337-4522-441a-8ea4-5851e2223e72" t="3" />
            <ID v="32" t="1" />
            <Name v="origin7" t="3" />
            <ObjectSubType v="PortalActor" t="3" />
            <ObjectType v="Actor" t="3" />
        </origin7>
        <origin8>
            <Attributes>
                <AttrDrawFlagGoalLine>
                    <Data v="1" t="0" />
                    <Type v="DataTypeBool" t="3" />
                </AttrDrawFlagGoalLine>
                <AttrDrawStartAngle>
                    <Data v="1" t="0" />
                    <Type v="DataTypeBool" t="3" />
                </AttrDrawStartAngle>
                <AttrEnabled>
                    <Data v="1" t="0" />
                    <Type v="DataTypeBool" t="3" />
                </AttrEnabled>
                <AttrNetworkActorDistanceCost>
                    <Data v="0.000000" t="2" />
                    <Type v="DataTypeDouble" t="3" />
                </AttrNetworkActorDistanceCost>
                <AttrObjectColor>
                    <Data v="[0.000000,0.533000,0.000000,1.000000]" t="2" />
                    <Type v="DataTypeColor" t="3" />
                </AttrObjectColor>
                <AttrPortalActionEnter>
                    <Data>
                        <ActionType v="ActionNone" t="3" />
                    </Data>
                    <Type v="DataTypeAction" t="3" />
                </AttrPortalActionEnter>
                <AttrPortalActionWaypoint>
                    <Data>
                        <ActionType v="ActionNone" t="3" />
                    </Data>
                    <Type v="DataTypeAction" t="3" />
                </AttrPortalActionWaypoint>
                <AttrPortalDistribution>
                    <Data>
                        <EnumString v="DistributionAlongLine" t="3" />
                        <EnumValue v="0" t="1" />
                    </Data>
                    <Type v="DataTypeEnum" t="3" />
                </AttrPortalDistribution>
                <AttrPortalNetworkBehavior>
                    <Data>
                        <EnumString v="NetworkBehaviorEntranceAndWaypoint" t="3" />
                        <EnumValue v="2" t="1" />
                    </Data>
                    <Type v="DataTypeEnum" t="3" />
                </AttrPortalNetworkBehavior>
                <AttrPortalSpawnAngleDegrees>
                    <Data v="0.000000" t="2" />
                    <Type v="DataTypeDouble" t="3" />
                </AttrPortalSpawnAngleDegrees>
                <AttrSceneObjectTransformGroup>
                    <Data v="00000000-0000-0000-0000-000000000000" t="3" />
                    <Type v="DataTypeGlobalID" t="3" />
                </AttrSceneObjectTransformGroup>
                <AttrVisible>
                    <Data v="1" t="0" />
                    <Type v="DataTypeBool" t="3" />
                </AttrVisible>
            </Attributes>
            <Body>
                <Attributes>
                    <AttrPortalGoalEdgeIndices>
                        <Data v="[0,4]" t="1" />
                        <Type v="DataTypeVectorInt" t="3" />
                    </AttrPortalGoalEdgeIndices>
                    <AttrPortalGoalPointPositions>
                        <Data v="[65.200000,0.030000,-11.750000,66.000000,0.030000,-11.750000]" t="2" />
                        <Type v="DataTypeVectorDouble" t="3" />
                    </AttrPortalGoalPointPositions>
                </Attributes>
                <Geometry>
                    <Geometry0>
                        <Faces v="[0,2,1,1,2,3]" t="1" />
                        <GeometryType v="MeshGeometry" t="3" />
                        <Vertices v="[65.000000,0.020000,-11.500000,65.000000,0.020000,-12.000000,66.199997,0.020000,-11.500000,66.199997,0.020000,-12.000000]" t="2" />
                    </Geometry0>
                </Geometry>
            </Body>
            <GlobalID v="135e53ad-e324-4ce3-a39b-d181cd4c123f" t="3" />
            <ID v="34" t="1" />
            <Name v="origin8" t="3" />
            <ObjectSubType v="PortalActor" t="3" />
            <ObjectType v="Actor" t="3" />
        </origin8>
        <platform>
            <Attributes>
                <AttrEnabled>
                    <Data v="1" t="0" />
                    <Type v="DataTypeBool" t="3" />
                </AttrEnabled>
                <AttrNetworkActorDistanceCost>
                    <Data v="0.000000" t="2" />
                    <Type v="DataTypeDouble" t="3" />
                </AttrNetworkActorDistanceCost>
                <AttrNetworkMemberActionEnter>
                    <Data>
                        <ActionType v="ActionNone" t="3" />
                    </Data>
                    <Type v="DataTypeAction" t="3" />
                </AttrNetworkMemberActionEnter>
                <AttrNetworkMemberActionExit>
                    <Data>
                        <ActionType v="ActionNone" t="3" />
                    </Data>
                    <Type v="DataTypeAction" t="3" />
                </AttrNetworkMemberActionExit>
                <AttrNetworkZonesAsPrimaryMember>
                    <Data v="[]" t="3" />
                    <Type v="DataTypeSetGlobalID" t="3" />
                </AttrNetworkZonesAsPrimaryMember>
                <AttrObjectColor>
                    <Data v="[0.584314,0.729412,0.788235,0.784314]" t="2" />
                    <Type v="DataTypeColor" t="3" />
                </AttrObjectColor>
                <AttrSceneObjectTransformGroup>
                    <Data v="00000000-0000-0000-0000-000000000000" t="3" />
                    <Type v="DataTypeGlobalID" t="3" />
                </AttrSceneObjectTransformGroup>
                <AttrSurfaceMapResolution>
                    <Data>
                        <EnumString v="SurfaceMapResolution10cm" t="3" />
                        <EnumValue v="2" t="1" />
                    </Data>
                    <Type v="DataTypeEnum" t="3" />
                </AttrSurfaceMapResolution>
                <AttrVisible>
                    <Data v="1" t="0" />
                    <Type v="DataTypeBool" t="3" />
                </AttrVisible>
                <AttrWalkableActorIsIgnoreBarrieres>
                    <Data v="0" t="0" />
                    <Type v="DataTypeBool" t="3" />
                </AttrWalkableActorIsIgnoreBarrieres>
                <AttrWalkableActorIsIgnoreNeighbors>
                    <Data v="0" t="0" />
                    <Type v="DataTypeBool" t="3" />
                </AttrWalkableActorIsIgnoreNeighbors>
                <AttrWalkableActorIsVirtual>
                    <Data v="0" t="0" />
                    <Type v="DataTypeBool" t="3" />
                </AttrWalkableActorIsVirtual>
                <AttrWalkableActorLocalAgentRadius>
                    <Data v="0.250000" t="2" />
                    <Type v="DataTypeDouble" t="3" />
                </AttrWalkableActorLocalAgentRadius>
                <AttrWalkableActorLocalAgentRadiusEnabled>
                    <Data v="0" t="0" />
                    <Type v="DataTypeBool" t="3" />
                </AttrWalkableActorLocalAgentRadiusEnabled>
                <AttrWalkableActorLocalDirectionBias>
                    <Data>
                        <EnumString v="DirectionBiasRightStrong" t="3" />
                        <EnumValue v="4" t="1" />
                    </Data>
                    <Type v="DataTypeEnum" t="3" />
                </AttrWalkableActorLocalDirectionBias>
                <AttrWalkableActorLocalDirectionBiasEnabled>
                    <Data v="0" t="0" />
                    <Type v="DataTypeBool" t="3" />
                </AttrWalkableActorLocalDirectionBiasEnabled>
                <AttrWalkableActorLocalMaxSpeedEnabled>
                    <Data v="0" t="0" />
                    <Type v="DataTypeBool" t="3" />
                </AttrWalkableActorLocalMaxSpeedEnabled>
                <AttrWalkableActorLocalMaxSpeedFlat>
                    <Data v="1.000000" t="2" />
                    <Type v="DataTypeDouble" t="3" />
                </AttrWalkableActorLocalMaxSpeedFlat>
                <AttrWalkableActorLocalMovementStandard>
                    <Data>
                        <EnumString v="MovementStandardFruin" t="3" />
                        <EnumValue v="1" t="1" />
                    </Data>
                    <Type v="DataTypeEnum" t="3" />
                </AttrWalkableActorLocalMovementStandard>
                <AttrWalkableActorLocalMovementStandardEnabled>
                    <Data v="0" t="0" />
                    <Type v="DataTypeBool" t="3" />
                </AttrWalkableActorLocalMovementStandardEnabled>
            </Attributes>
            <Body>
                <Geometry>
                    <Geometry0>
                        <Faces v="[0,1,3,0,3,2,0,4,1,0,5,4,2,3,6,2,6,7,4,5,6,5,7,6]" t="1" />
                        <GeometryType v="MeshGeometry" t="3" />
                        <Vertices v="[55.000000,0.000000,0.000000,125.000000,0.000000,-4.000000,55.000000,0.000000,-12.000000,125.000000,0.000000,-8.000000,137.000000,0.000000,-4.000000,217.000000,0.000000,0.000000,137.000000,0.000000,-8.000000,217.000000,0.000000,-12.000000]" t="2" />
                    </Geometry0>
                </Geometry>
            </Body>
            <GlobalID v="b4dd33df-6e6c-47b4-968e-8140d274d4f3" t="3" />
            <ID v="53" t="1" />
            <Name v="platform" t="3" />
            <ObjectSubType v="FloorActor" t="3" />
            <ObjectType v="Actor" t="3" />
        </platform>
        <stair1>
            <Attributes>
                <AttrCEActorActionAlphaEnter>
                    <Data>
                        <ActionType v="ActionNone" t="3" />
                    </Data>
                    <Type v="DataTypeAction" t="3" />
                </AttrCEActorActionAlphaEnter>
                <AttrCEActorActionAlphaExit>
                    <Data>
                        <ActionType v="ActionNone" t="3" />
                    </Data>
                    <Type v="DataTypeAction" t="3" />
                </AttrCEActorActionAlphaExit>
                <AttrCEActorActionOmegaEnter>
                    <Data>
                        <ActionType v="ActionNone" t="3" />
                    </Data>
                    <Type v="DataTypeAction" t="3" />
                </AttrCEActorActionOmegaEnter>
                <AttrCEActorActionOmegaExit>
                    <Data>
                        <ActionType v="ActionNone" t="3" />
                    </Data>
                    <Type v="DataTypeAction" t="3" />
                </AttrCEActorActionOmegaExit>
                <AttrCEActorBank>
                    <Data v="64dd335f-7cc3-495a-a7f9-f97d75a07972" t="3" />
                    <Type v="DataTypeGlobalID" t="3" />
                </AttrCEActorBank>
                <AttrCEActorControlFlowEnabled>
                    <Data v="0" t="0" />
                    <Type v="DataTypeBool" t="3" />
                </AttrCEActorControlFlowEnabled>
                <AttrCEActorControlFlowRate>
                    <Data v="100.000000" t="2" />
                    <Type v="DataTypeDouble" t="3" />
                </AttrCEActorControlFlowRate>
                <AttrCEActorControlFlowRatePerMeter>
                    <Data v="50.000000" t="2" />
                    <Type v="DataTypeDouble" t="3" />
                </AttrCEActorControlFlowRatePerMeter>
                <AttrCEActorControlFlowType>
                    <Data>
                        <EnumString v="FlowRateAbsolute" t="3" />
                        <EnumValue v="0" t="1" />
                    </Data>
                    <Type v="DataTypeEnum" t="3" />
                </AttrCEActorControlFlowType>
                <AttrCEActorDelayInDistribution>
                    <Data>
                        <!--Constant: [value,,,], Uniform: [min,max,,], Normal: [min,max,mean,std], Triangular: [min,max,mode,], Exponential: [min,max,lambda]-->
                        <Type v="Constant" t="3" />
                        <Values v="[0.000000]" t="2" />
                    </Data>
                    <Type v="DataTypeDistribution" t="3" />
                </AttrCEActorDelayInDistribution>
                <AttrCEActorDelayOutDistribution>
                    <Data>
                        <!--Constant: [value,,,], Uniform: [min,max,,], Normal: [min,max,mean,std], Triangular: [min,max,mode,], Exponential: [min,max,lambda]-->
                        <Type v="Constant" t="3" />
                        <Values v="[0.000000]" t="2" />
                    </Data>
                    <Type v="DataTypeDistribution" t="3" />
                </AttrCEActorDelayOutDistribution>
                <AttrCEActorDirection>
                    <Data>
                        <EnumString v="DirectionOmegaToAlpha" t="3" />
                        <EnumValue v="1" t="1" />
                    </Data>
                    <Type v="DataTypeEnum" t="3" />
                </AttrCEActorDirection>
                <AttrCEActorGateCost>
                    <Data v="20.000000" t="2" />
                    <Type v="DataTypeDouble" t="3" />
                </AttrCEActorGateCost>
                <AttrCEActorGateDefaultState>
                    <Data>
                        <EnumString v="CommandClose" t="3" />
                        <EnumValue v="1" t="1" />
                    </Data>
                    <Type v="DataTypeEnum" t="3" />
                </AttrCEActorGateDefaultState>
                <AttrCEActorGateEnabled>
                    <Data v="0" t="0" />
                    <Type v="DataTypeBool" t="3" />
                </AttrCEActorGateEnabled>
                <AttrCEActorGateIgnoreOthersWhenWaiting>
                    <Data v="0" t="0" />
                    <Type v="DataTypeBool" t="3" />
                </AttrCEActorGateIgnoreOthersWhenWaiting>
                <AttrCEActorGateWaitStyle>
                    <Data>
                        <WaitStyleType v="WaitFocus" t="3" />
                    </Data>
                    <Type v="DataTypeWaitStyle" t="3" />
                </AttrCEActorGateWaitStyle>
                <AttrCEActorMarshalEnabled>
                    <Data v="1" t="0" />
                    <Type v="DataTypeBool" t="3" />
                </AttrCEActorMarshalEnabled>
                <AttrCEActorOpposingFlowCostFactor>
                    <Data v="1.000000" t="2" />
                    <Type v="DataTypeDouble" t="3" />
                </AttrCEActorOpposingFlowCostFactor>
                <AttrCEActorPerimeters>
                    <Data v="[]" t="3" />
                    <Type v="DataTypeSetGlobalID" t="3" />
                </AttrCEActorPerimeters>
                <AttrCEActorPriorityCommitWhenWaiting>
                    <Data v="0" t="0" />
                    <Type v="DataTypeBool" t="3" />
                </AttrCEActorPriorityCommitWhenWaiting>
                <AttrCEActorPriorityCost>
                    <Data v="10.000000" t="2" />
                    <Type v="DataTypeDouble" t="3" />
                </AttrCEActorPriorityCost>
                <AttrCEActorPriorityDirection>
                    <Data>
                        <EnumString v="DirectionAlphaToOmega" t="3" />
                        <EnumValue v="0" t="1" />
                    </Data>
                    <Type v="DataTypeEnum" t="3" />
                </AttrCEActorPriorityDirection>
                <AttrCEActorPriorityDistance>
                    <Data v="1.000000" t="2" />
                    <Type v="DataTypeDouble" t="3" />
                </AttrCEActorPriorityDistance>
                <AttrCEActorPriorityEnabled>
                    <Data v="0" t="0" />
                    <Type v="DataTypeBool" t="3" />
                </AttrCEActorPriorityEnabled>
                <AttrCEActorPriorityPrimaryYieldToSecondary>
                    <Data v="0" t="0" />
                    <Type v="DataTypeBool" t="3" />
                </AttrCEActorPriorityPrimaryYieldToSecondary>
                <AttrCEActorPrioritySecondaryClearArea>
                    <Data v="1" t="0" />
                    <Type v="DataTypeBool" t="3" />
                </AttrCEActorPrioritySecondaryClearArea>
                <AttrCEActorPrioritySecondsUntilOpen>
                    <Data v="2.000000" t="2" />
                    <Type v="DataTypeDouble" t="3" />
                </AttrCEActorPrioritySecondsUntilOpen>
                <AttrDrawCEDirection>
                    <Data v="1" t="0" />
                    <Type v="DataTypeBool" t="3" />
                </AttrDrawCEDirection>
                <AttrDrawFlagGate>
                    <Data v="1" t="0" />
                    <Type v="DataTypeBool" t="3" />
                </AttrDrawFlagGate>
                <AttrDrawFlagGoalLine>
                    <Data v="1" t="0" />
                    <Type v="DataTypeBool" t="3" />
                </AttrDrawFlagGoalLine>
                <AttrDrawPriorityFlow>
                    <Data v="1" t="0" />
                    <Type v="DataTypeBool" t="3" />
                </AttrDrawPriorityFlow>
                <AttrEnabled>
                    <Data v="1" t="0" />
                    <Type v="DataTypeBool" t="3" />
                </AttrEnabled>
                <AttrNetworkActorDistanceCost>
                    <Data v="0.000000" t="2" />
                    <Type v="DataTypeDouble" t="3" />
                </AttrNetworkActorDistanceCost>
                <AttrNetworkActorQueueCostFactor>
                    <Data v="1.000000" t="2" />
                    <Type v="DataTypeDouble" t="3" />
                </AttrNetworkActorQueueCostFactor>
                <AttrNetworkZonesAsPrimaryMember>
                    <Data v="[]" t="3" />
                    <Type v="DataTypeSetGlobalID" t="3" />
                </AttrNetworkZonesAsPrimaryMember>
                <AttrObjectColor>
                    <Data v="[0.867000,0.434000,0.000000,1.000000]" t="2" />
                    <Type v="DataTypeColor" t="3" />
                </AttrObjectColor>
                <AttrSceneObjectTransformGroup>
                    <Data v="00000000-0000-0000-0000-000000000000" t="3" />
                    <Type v="DataTypeGlobalID" t="3" />
                </AttrSceneObjectTransformGroup>
                <AttrSurfaceMapResolution>
                    <Data>
                        <EnumString v="SurfaceMapResolution10cm" t="3" />
                        <EnumValue v="2" t="1" />
                    </Data>
                    <Type v="DataTypeEnum" t="3" />
                </AttrSurfaceMapResolution>
                <AttrVerticalCEActorRiseAngle>
                    <Data v="36.800000" t="2" />
                    <Type v="DataTypeDouble" t="3" />
                </AttrVerticalCEActorRiseAngle>
                <AttrVerticalCEActorRiseAngleType>
                    <Data>
                        <EnumString v="ValueProvenanceAutoGenerated" t="3" />
                        <EnumValue v="0" t="1" />
                    </Data>
                    <Type v="DataTypeEnum" t="3" />
                </AttrVerticalCEActorRiseAngleType>
                <AttrVisible>
                    <Data v="1" t="0" />
                    <Type v="DataTypeBool" t="3" />
                </AttrVisible>
                <AttrWalkableActorIsIgnoreBarrieres>
                    <Data v="1" t="0" />
                    <Type v="DataTypeBool" t="3" />
                </AttrWalkableActorIsIgnoreBarrieres>
                <AttrWalkableActorIsIgnoreNeighbors>
                    <Data v="0" t="0" />
                    <Type v="DataTypeBool" t="3" />
                </AttrWalkableActorIsIgnoreNeighbors>
                <AttrWalkableActorIsVirtual>
                    <Data v="0" t="0" />
                    <Type v="DataTypeBool" t="3" />
                </AttrWalkableActorIsVirtual>
                <AttrWalkableActorLocalAgentRadius>
                    <Data v="0.250000" t="2" />
                    <Type v="DataTypeDouble" t="3" />
                </AttrWalkableActorLocalAgentRadius>
                <AttrWalkableActorLocalAgentRadiusEnabled>
                    <Data v="0" t="0" />
                    <Type v="DataTypeBool" t="3" />
                </AttrWalkableActorLocalAgentRadiusEnabled>
                <AttrWalkableActorLocalDirectionBias>
                    <Data>
                        <EnumString v="DirectionBiasRightStrong" t="3" />
                        <EnumValue v="4" t="1" />
                    </Data>
                    <Type v="DataTypeEnum" t="3" />
                </AttrWalkableActorLocalDirectionBias>
                <AttrWalkableActorLocalDirectionBiasEnabled>
                    <Data v="0" t="0" />
                    <Type v="DataTypeBool" t="3" />
                </AttrWalkableActorLocalDirectionBiasEnabled>
                <AttrWalkableActorLocalMaxSpeedDown>
                    <Data v="1.000000" t="2" />
                    <Type v="DataTypeDouble" t="3" />
                </AttrWalkableActorLocalMaxSpeedDown>
                <AttrWalkableActorLocalMaxSpeedEnabled>
                    <Data v="0" t="0" />
                    <Type v="DataTypeBool" t="3" />
                </AttrWalkableActorLocalMaxSpeedEnabled>
                <AttrWalkableActorLocalMaxSpeedUp>
                    <Data v="1.000000" t="2" />
                    <Type v="DataTypeDouble" t="3" />
                </AttrWalkableActorLocalMaxSpeedUp>
                <AttrWalkableActorLocalMovementStandard>
                    <Data>
                        <EnumString v="MovementStandardFruin" t="3" />
                        <EnumValue v="1" t="1" />
                    </Data>
                    <Type v="DataTypeEnum" t="3" />
                </AttrWalkableActorLocalMovementStandard>
                <AttrWalkableActorLocalMovementStandardEnabled>
                    <Data v="0" t="0" />
                    <Type v="DataTypeBool" t="3" />
                </AttrWalkableActorLocalMovementStandardEnabled>
            </Attributes>
            <Body>
                <Attributes>
                    <AttrCEActorGoalPointPositions>
                        <Data v="[114.899994,-7.170000,-7.600000,114.899994,-7.170000,-6.200000,137.157837,0.030000,-6.200000,137.157837,0.030000,-7.600000]" t="2" />
                        <Type v="DataTypeVectorDouble" t="3" />
                    </AttrCEActorGoalPointPositions>
                    <AttrCEActorGoalVertexIndices>
                        <Data v="[0,3,19,17]" t="1" />
                        <Type v="DataTypeVectorInt" t="3" />
                    </AttrCEActorGoalVertexIndices>
                </Attributes>
                <Geometry>
                    <Geometry0>
                        <Faces v="[0,3,4,0,4,1,1,4,5,1,5,2,2,5,8,2,8,6,6,8,9,6,9,7,7,9,12,7,12,10,10,12,14,10,14,15,11,13,18,11,15,13,11,18,16,13,15,14,16,18,19,16,19,17]" t="1" />
                        <GeometryType v="MeshGeometry" t="3" />
                        <Vertices v="[114.699997,-7.180000,-7.800000,115.199997,-7.180000,-7.800000,118.800003,-5.380000,-7.800000,114.699997,-7.180000,-6.000000,115.199997,-7.180000,-6.000000,118.800003,-5.380000,-6.000000,120.599998,-5.380000,-7.800000,124.199997,-3.580000,-7.800000,120.599998,-5.380000,-6.000000,124.199997,-3.580000,-6.000000,126.000000,-3.580000,-7.800000,131.399994,-1.780000,-7.800000,126.000000,-3.580000,-6.000000,131.399994,-1.780000,-6.000000,129.600006,-1.780000,-6.000000,129.600006,-1.780000,-7.800000,135.000000,0.020000,-7.800000,137.357834,0.020000,-7.800000,135.000000,0.020000,-6.000000,137.357834,0.020000,-6.000000]" t="2" />
                    </Geometry0>
                </Geometry>
            </Body>
            <GlobalID v="c5eb058b-0f8f-430f-a078-b86407548796" t="3" />
            <ID v="44" t="1" />
            <Name v="stair1" t="3" />
            <ObjectSubType v="StairActor" t="3" />
            <ObjectType v="Actor" t="3" />
        </stair1>
    </Objects>
    <Settings>
        <Attributes>
            <AttrSettingsDebugFolder>
                <Data v="debug" t="3" />
                <Type v="DataTypeString" t="3" />
            </AttrSettingsDebugFolder>
            <AttrSettingsDefaultBookmark>
                <Data v="00000000-0000-0000-0000-000000000000" t="3" />
                <Type v="DataTypeGlobalID" t="3" />
            </AttrSettingsDefaultBookmark>
            <AttrSettingsDumpCostTrees>
                <Data v="0" t="0" />
                <Type v="DataTypeBool" t="3" />
            </AttrSettingsDumpCostTrees>
            <AttrSettingsDumpSurfaceMaps>
                <Data v="0" t="0" />
                <Type v="DataTypeBool" t="3" />
            </AttrSettingsDumpSurfaceMaps>
            <AttrSettingsFileName>
                <Data v="F:/Master/Code/MassMotionRun/mmFiles/validation.mm" t="3" />
                <Type v="DataTypeString" t="3" />
            </AttrSettingsFileName>
            <AttrSettingsFrameRate>
                <Data v="5" t="1" />
                <Type v="DataTypeInt" t="3" />
            </AttrSettingsFrameRate>
            <AttrSettingsPopulationMultiplier>
                <Data v="1.000000" t="2" />
                <Type v="DataTypeDouble" t="3" />
            </AttrSettingsPopulationMultiplier>
            <AttrSettingsRandomSeed>
                <Data v="1234" t="1" />
                <Type v="DataTypeInt" t="3" />
            </AttrSettingsRandomSeed>
            <AttrSettingsSimTimeRange>
                <Data>
                    <BoundedEndTime v="00:07:00" t="3" />
                    <BoundedStartTime v="00:00:00" t="3" />
                    <TimeRangeType v="TimeRangeBounded" t="3" />
                </Data>
                <Type v="DataTypeTimeRange" t="3" />
            </AttrSettingsSimTimeRange>
            <AttrSettingsWorkingPath>
                <Data v="E:\Master\小论文\Validation" t="3" />
                <Type v="DataTypeString" t="3" />
            </AttrSettingsWorkingPath>
            <AttrSettingsXSIExportVersion>
                <Data v="" t="3" />
                <Type v="DataTypeString" t="3" />
            </AttrSettingsXSIExportVersion>
        </Attributes>
    </Settings>
</DataRoot>
