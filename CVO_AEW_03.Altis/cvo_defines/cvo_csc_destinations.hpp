/*
*   CVO Custom Supply Crates Define
*
*   TBA
*
*/

class cvo_csc_destinations {
    import base_infrontPlayer from cvo_csc_destinations;
    import base_mapClick from cvo_csc_destinations;

    class AEW_tarp: base_infrontPlayer {
        displayName = "On the black tarp";   // Just as an example
        description = "On the black tarp";

        scope = 2;

        class parameters {
            mode = "OFFSET"; // "BEHIND", "OFFSET"
            offset[] = { 0, 0, 0.5 };   // only used by OFFSET
            reference = "cvo_csc_tarp"; // TARGET, PLAYER or missionNamespace variablename
            randomOffset = 2;           // Only be used on X and Y
        };
    };
};
