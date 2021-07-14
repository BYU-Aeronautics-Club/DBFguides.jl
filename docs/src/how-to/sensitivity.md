# General Sensitivity

## Overview

Part of the DBF proposal is a sensitivity study, that is, a study of the sensitivity of the mission objectives to the design parameters.  There are some things about the project that may seem at first like mission objectives, but are actually mission constraints.  These are not the things we focus on in the sensitivity study, for example, there's no reason to include the design report in the sensitivity study since it is simply a requirement. (Although, you may want to mention it, since it does have an effect on the overall score as a multiplier or some other addition.)

### Constraints
Some other constraints include:
- Payload Design:  There are usually constraints on the mission that require specific payload and/or fuselage designs to meet criteria.  There are some variable parameters for most payloads---these are covered later.
- Wing size: There is usually a maximum wing span length.  Since the mission requirements are sensitive to weight, teams usually try to maximize their wing span to allow for more carrying capacity, but don't be too hasty, an optimial design might not maximize carrying capactiy.
- Take-off distance:  Sometimes there will be a requirement to take off in a particlular distance, or from some sort of launch pad/ramp.
- Minimum Flight Time: There is typically a set of missions that require a specific number of laps, this means that the aircraft must have at least that much endurance and speed. There is usually a mission without any payload mass, and one with payload mass.
- Ground Mission: There is usually some sort of ground mission involving some sort of assembly or configuration of the aircraft, usually within a specific time window. (This is scored relative to the fastest time of all competitors, but is not directly affected by first principles, so is likely not included in the sensitivity study.)
- Safety: There are always safety requirements, usually in the form of a arm/disarm button, but there may be other requirements as well.
- Battery Capacity: Depending the the battery type (LiPo), there may be a upper limit to total and individual battery size, usually in the form of watt-hour capacity. (Read the rules carefully here, there were a lot of battery rule additions in 2020.)
- Structural safety: Usually some safety test of the structure is required, something like a simulation of a 2.5g load case (wing tip test).
- Misc:  There may be some miscellaneous requirements like folding wings, or transported size or some other convenience requirement. There are also other safety requirements that do not affect the sensitivity study, but are important to avoid disqualification.

### Objectives
When we come to mission objectives that are senstive to design parameters:
- Payload Mass:  There is typically an increase in points for a given increase of mass.  Usually this increase in mass is related to payload components.
- Payload Drag:  Sometimes, there is additional drag required for the payload, such as a towed banner or some other drouge.  This can also be step-wise, but might also be continuous, e.g., points = f(L), where L is the banner length.
- Endurance: Beyond the minimum endurance requirement, we usually see an endurance objective envolving flying as many laps as possible, acheiving specific mission goals at the same time.
- Speed: There is usually a flight mission where speed is the metric of success, well, minimizing the time to complete the mission is really the metric, but that means greater speed.

## Sensitivities

Although it is often the case that the mission objectives are measured in step-wise increments, e.g., number of laps, it is generally easiest to do a sensitivity study in a continuous manner, breaking down the mission objectives according to typical hand-calculations, and then breaking those down according to design parameters. Also, by including mission constraints, you can develop an envelope of feasible design space in which to perform the sensitivity study.

Because the total score over all missions is simply a summation of the individual scores, it is possible to obtain a single objective function, which is a function of the various design variables.  What are the design variables?

- Lift Coefficients (cruise, max, takeoff)
- Drag Coefficients (cruise, takeoff)
- Various Masses (airframe, battery, payload)
- Wing Geometry (span, chord)
- Cruise Velocity
- Battery Discharge Rate (C-rating)
- Battery Capacity
- Various Efficiencies (motor, prop, battery, wing)
- Payload or other year specific items (payload geometry, etc.)
- Etc.

Here, we'll  look at the first step of breaking down the mission objectives into design parameters, and we'll  leave the rest for a [code template](https://github.com/BYU-Aeronautics-Club/DBF/blob/master/codes/sensitivity.jl).

#### Example Point Breakdown:

In 2020, the final score breakdown could be expressed in terms of the following:

M1 = 1.0, where a 1 = completion and a zero is a fail.

M2 = 1 + (num_containers/time) / (num_containers/time)_max, where num_containers is the number of containers, and time is time.

M3 = 2 + (num_laps x length_sensor x weight_sensor) / (num_laps x length_sensor x weight_sensor)_max,

GM = (time_min)/(time)

Total = M1 + M2 + M3 + GM + Report Score

Note that the _max and _min are associated with the maximum and minumum values among all competition participants.  Since these have no bearing on our sensitivity analysis, and we are positive thinkers, we just set those to 1.0, assuming we'll be the best at everything.

**Mission 1** is a pass/fail, so there is no sensitivity to be studied there.  If you can do the other missions, you should be able to do that one, so we'll skip it.

**Mission 2** is basically a weight over time metric.  The weight is comprised of the airframe weight, the battery weight, and the payload weight.  This is pretty direct, but the structural weight of the aircraft could also be thought of as partially a function of the wing size, since a larger wing requires more material.

The time is a function of velocity and lap distance (which can be found in the rules). If we assume maximum velocity, max velocity is an function power available (which is a function of batter capacity, discharge rate, and voltage), total weight, wing area, drag coefficient, and wing efficiency.  The lap distance may actually be a function of velocity depending on how you turn and, if the entire lap is defined or there are undefined loop distances.

**Mission 3** is similar to mission 2, but adds some variables from payload.  Mission 3 has a maximum time allowed, but is still a function of velocity, and could be a function of endurance; which is a function of battery energy density, lift to drag ratio, battery mass to total mass ratio, cruise velocity, and propulsion/battery efficiency.

**Ground Mission** The ground mission is mostly a function of sound engineering design, but isn't directly based on first principles the same way the flight missions are. (It is difficult to know, a priori, how fast something can be assembled, for example, due to the human factor.) For this reason, we also don't include it in the sensitivity study.

#### The Study

At this point, it's probably best to get out all the hand-calculations, like those you might find in the [ME 415 Book](https://scholarsarchive.byu.edu/cgi/viewcontent.cgi?article=1027&context=books) or [other lecture notes](https://engineering.purdue.edu/AAECourses/aae251/2005a/fall2005/LECTURES/), as well as your coding language of choice, from which you can make some sort of plot, or table of derivatives to show the various sensitivities of the parameters to the overall mission objective score. You can [find an example here](https://github.com/BYU-Aeronautics-Club/DBF/blob/master/codes/sensitivity.jl).