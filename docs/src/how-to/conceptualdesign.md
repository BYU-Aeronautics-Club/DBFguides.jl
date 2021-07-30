# Conceptual Design

The conceptual design phase is all about making intelligent choices about the approach you will take to meet the design requirements.  In reality, there are many different designs that can perform equally well.  Even if you could develop an omnicient optimizer, you'd possibly still find that there are more than one correct "answer" to the problem.  Thus, conceptual design is about choices.  In this context, choices are often made with weighted decision, or Pugh, matrices.

## Decision Matrices

A decision matrix starts with assigning figures of merit. This is basically a prioritization of various design outcomes.  How do you know what is most important? You need to perform a sensitivity study.  At the end of the day, you need to draw lines between design concepts, design variables, and design outcomes. For example, let's say that the mission objectives are more sensitive to speed than weight.  Then you would probably want to prioritize speed over weight in your figures of merit. An example set of figures of merit might look something like this:

| Figure | Value |
|:-----|:-----:|
|Speed|1.0|
|Payload Capacity|0.8|
|Structual Weight|0.6|
|Ease of Manufacture|0.4|
|Ease of Design|0.2|

Note that you can choose anything you want as a figure of merit, and you can prioritize them in any way you desire.  You can also asign whatever values you want to each of them.  The key here is to make intelligent decisions that you can justify with engineering logic.

Next you need to assemble decision matrices for each basic configuration decision (you also need to do this for manufacturing methods and materials).  Let's do an example of wing configuration.  There are typically a few options to choose from: single wing + tail, bi-wing + tail, blended wing/body, wing+canard, and any combination in between and beyond.  For our purposes, let's stick with single wing, blended wing/body, and wing+canard.

We could start building our matrix thusly:

| Figure | Value | Single Wing | Blended Wing | Canard |
|:-----|:-----:|:-----:|:-----:|:-----:|
|Speed|1.0|
|Payload Capacity|0.8|
|Structual Weight|0.6|
|Ease of Manufacture|0.4|
|Ease of Design|0.2|
|**Total:**|

For each of these, you need to decide how it ranks in each figure of merit, relative to the others.

For speed, we can reasonably assume that we could get the same speed out of all three, so we'll give them neutral scores.

For payload capacity, we might decide from experience that we'll have an easier time with the standard single wing layout, a harder time with blended wing, and maybe something in between for the canard style.

For structural weight, we think that without a tail, the blended wing will do best, then the canard setup, then the single wing and tail.

For ease of manufacture, you might decide that your team has the most experience with standard single wing builds, so that could win here, then canards, then blended wings.

Finally, for ease of design, you might again decide that your team has the most experience with the standard wing and tail, then the blended wing, and lastly the canard.

All along you've been filling out your matrix and you end up with something that looks like this:

| Figure | Value | Single Wing | Blended Wing | Canard |
|:-----|:-----:|:-----:|:-----:|:-----:|
|Speed|1.0|0|0|0|
|Payload Capacity|0.8|1|-1|0|
|Structual Weight|0.6|-1|1|0|
|Ease of Manufacture|0.4|1|-1|0|
|Ease of Design|0.2|1|0|-1|
|**Total:**|

Finally, you need to add up each of the columns, each entry multiplied by the figure of merit value.  The option with the highest total, is your chosen design.  If at the end you find that the "best" option doesn't really make sense, then you need to revisit your figures of merit, but if you've chosen intelligently thus far, you should be left with the best choice to move forward with.

| Figure | Value | Single Wing | Blended Wing | Canard |
|:-----|:-----:|:-----:|:-----:|:-----:|
|Speed|1.0|0|0|0|
|Payload Capacity|0.8|1|-1|0|
|Structual Weight|0.6|-1|1|0|
|Ease of Manufacture|0.4|1|-1|0|
|Ease of Design|0.2|1|0|-1|
|**Total:**||**0.8**|-0.6|-0.2|

Note again that you can pick any range of numbers that you want. Make sure to choose something that makes sense and will  lead to a clear choice at the end.

Once you've completed a decision matrix for all of the major configuration options, you can move on to the math.

## Conceptual Analysis: Your Rough Draft

### Initial Sizing



### Airfoil Selection

At the conceptual stage, you can basically pick any airfoil that fits in the general parameters you want.  Typically, you'll want to maximize lift and minimize drag (maximizing efficiency is an easy way to look at both simultaneously), and you'll want an airfoil that can be manufactured with your chosen methods (watch out for very small wedge angles at the trailing edge.)

Later, after you've started the preliminary design process, you can revisit your airfoil selection and pin down an option that is better for your design.

Some common starting point airfoils include the Clark-Y and NACA 2412 airfoils, but these are mediocre and you should probably find or design something that is better for your application.

### Prototyping

You should get into the habit of starting to prototype very early, especially for any specialty payload or functionality.  Many times, it's faster to build and test something rather than painstakingly analyzing it, especially if it's outside your current set of expertises.

A prototype of the conceptual airframe is also possible.  A quick foamie can give you a lot of insight and intuition for a better than average starting point for your preliminary designs.  A first prototype is usually just a glider, which may or may not include control surfaces.

Don't be afraid to build something fast and ugly that will help you learn faster than guessing at unknown parameters in some low-fidelity simulation.