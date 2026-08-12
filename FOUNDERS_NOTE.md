# Founder’s Note

## Why I am building the Open Tinnitus Lab

I am a musician.

I also have tinnitus.

Those two facts are the starting point for the Open Tinnitus Lab.

I have spent a large part of my life around music. I make music, I listen to music, I care deeply about sound, and I understand how important hearing is to a musician.

Having tinnitus changes that relationship with sound.

Like a lot of people with tinnitus, I have spent time looking for answers. What causes it? Why does it persist? Why does it change? Why does it affect some people differently from others? What actually works? What doesn't? And perhaps most importantly:

**Can we actually solve it?**

I would very much like to solve my tinnitus.

And, frankly, I don't think anybody is doing a particularly good job of that yet.

That isn't meant as an attack on tinnitus researchers or clinicians. There are many excellent scientists doing serious and important work. There is also an enormous amount of research.

But from the perspective of someone actually living with tinnitus, the scientific landscape can feel remarkably fragmented.

There are thousands of papers, competing theories, different classifications, measurements, proposed mechanisms and potential treatments. There are promising findings, contradictory findings, biomarkers that don't yet seem to translate into useful diagnosis or treatment, and hypotheses that have been around for years without being conclusively resolved.

There is clearly a huge amount of intelligence and effort being applied to the problem.

So why don't we have better answers?

That question is what led me here.

## I have absolutely no idea what I am doing

This is probably the part where I should establish my credentials.

I don't have any.

I am not a neuroscientist.

I am not an audiologist.

I am not a physician.

I am not a tinnitus researcher.

I am not an expert in ontology design.

I am, fundamentally, a musician with tinnitus who has become sufficiently frustrated and curious to start digging into the problem.

I am learning as I go.

Some of what I build will probably be wrong.

Some of my assumptions will probably be wrong.

Some of the ideas in this project may turn out to be naïve, impractical or completely useless.

That's okay.

The point of making the project open is that other people can tell me where I'm wrong.

I am not pretending to be qualified to solve tinnitus.

I am trying to build something that might help qualified people solve it.

And perhaps, in the process, learn enough to ask better questions.

## The slightly ridiculous experiment

There is also a larger experiment happening here.

I have no idea whether AI is actually going to be useful for something like this.

There is an enormous amount of hype around AI at the moment. We are constantly being told that AI is going to transform everything, revolutionise every industry and eventually make large numbers of humans redundant.

I'm not convinced.

In fact, as a musician, I'm pretty sceptical.

So I've decided to conduct a rather simple experiment.

I'm going to give AI a genuinely difficult human problem.

Not:

> "Make me a song."

Not:

> "Write a novel."

Not:

> "Generate a picture of a musician."

And certainly not:

> "Take millions of pieces of art made by humans and use them to make something that competes with the humans who made them."

Instead:

**Here is a huge, fragmented, complicated scientific problem that humans haven't solved yet.**

Let's see if AI can actually help.

I don't know what the answer will be.

Maybe AI will turn out to be remarkably useful.

Maybe it will expose connections that humans have struggled to see.

Maybe it will help organise an enormous scientific literature, identify contradictions, find research gaps and generate genuinely useful hypotheses.

Or maybe it will produce a tremendous amount of confident-sounding nonsense.

If it does the latter, that's useful information too.

So, in the slightly ridiculous terms I use when thinking about this project:

**I am going to use this project to either prove that AI is largely useless to the human race, or help solve tinnitus.**

I realise those aren't the only possible outcomes.

But they're the two I'm interested in.

## Why AI — despite my reservations about it

There is a slightly ironic part of this project.

I am not particularly enthusiastic about AI.

As a musician, I have watched with increasing frustration as AI companies and parts of the technology industry have pushed systems designed to generate music and other creative work from enormous quantities of human-created material.

There is a lot of talk about "AI music", but much of what I see is essentially technology being used to imitate, reproduce or replace human creative work using art that humans spent their lives creating.

I don't find that particularly inspiring.

In fact, I think a lot of the criticism of AI from musicians and artists is completely justified.

I don't want AI to replace musicians.

I don't want it to replace artists.

I don't want human creativity to become merely raw material for machines that then compete with the people who created that material.

But there is another side to the technology.

If we are going to have AI, then I'd rather see it used for something worthwhile.

Tinnitus research is a problem where that makes sense.

There is an enormous scientific literature that no individual researcher can realistically read, compare and continuously re-evaluate in its entirety.

AI may be able to help us organise that information.

It may be able to identify relationships between papers.

It may be able to find apparently contradictory results.

It may be able to extract measurements and observations.

It may help identify research gaps.

It may help formulate hypotheses and predictions that researchers can then actually test.

That is a use of AI I can get behind.

**Use AI to help humans solve difficult problems — not to replace the humans who make the things we value.**

## The AI is not the scientist

There is an important distinction here.

I don't want to build an AI that tells us what tinnitus is.

I want to build infrastructure that helps us understand what the scientific literature actually says.

AI-generated interpretations should be identifiable as such.

Sources should be preserved.

Provenance should be retained.

Claims should be reviewable.

Contradictory evidence should not disappear because an AI system happens to prefer one explanation.

The AI should be a tool.

The science remains the authority.

And where the science doesn't know the answer, the system should be capable of saying:

**We don't know yet.**

That may be one of the most important outputs of the entire project.

## Why an ontology

The first part of this project is therefore not an AI system, a website or a database.

It is an ontology.

That may sound unnecessarily academic, but I think it is important.

If we want humans — and eventually machines — to reason across scientific literature, we first need to be precise about what we mean by things.

An observation is not the same as a measurement.

A measurement is not the same as a biological mechanism.

An association is not the same as causation.

A hypothesis is not a fact.

A prediction is not an observation.

A paper reporting a result is not the same thing as evidence establishing a causal relationship.

These distinctions matter enormously when dealing with a complicated condition such as tinnitus.

OTL-O is an attempt to create a formal structure in which those distinctions can be preserved.

## I don't want to build another database of papers

The ambition is not simply to collect tinnitus publications.

There are already excellent systems for discovering and indexing scientific literature.

Instead, I want to investigate whether we can build a layer that sits **across** the literature.

A study should be able to contribute observations.

Observations can be associated with measurements.

Measurements relate to constructs and instruments.

Claims can be connected to the observations and evidence from which they arise.

Hypotheses can generate predictions.

Predictions can be tested by studies.

Evidence can support or contradict claims.

And competing explanations can remain visible rather than being prematurely resolved.

The goal is to preserve the scientific chain of reasoning.

## What I hope this becomes

I don't know exactly what the final system will look like.

That is deliberate.

The first objective is to find out whether the underlying model is actually useful.

Can we represent tinnitus research consistently?

Can we connect observations from different studies?

Can we distinguish phenotype from mechanism?

Can we identify genuinely unresolved questions?

Can we find contradictions that deserve investigation?

Can we generate better hypotheses and predictions?

Can we eventually identify relationships that are difficult for humans to see when the literature is considered one paper at a time?

If the answer to those questions is yes, the project could become much more than an ontology.

It could become open research infrastructure for tinnitus science.

And perhaps, eventually, it could help researchers get closer to treatments that actually work.

## A personal reason

Ultimately, this is personal.

I would like to be able to make music without tinnitus being part of the equation.

I would like other musicians to be able to do the same.

And I would like the millions of other people living with tinnitus to have better answers than the ones currently available.

I don't think building an open ontology is going to magically cure tinnitus.

But I do think there is something profoundly frustrating about having an enormous body of scientific knowledge and still struggling to see the bigger picture.

If better organisation of that knowledge can help someone find a connection that would otherwise have been missed, identify an assumption that doesn't hold up, uncover a contradiction worth investigating, or formulate an experiment that produces a useful answer, then the effort is worthwhile.

## The principle

The Open Tinnitus Lab is therefore being built around a fairly simple principle:

**Don't pretend we know more than we know.**

Preserve the observations.

Preserve the evidence.

Preserve the contradictions.

Separate facts from interpretations.

Make hypotheses explicit.

Make predictions testable.

Keep provenance.

Use technology where it genuinely helps.

And make the whole thing open enough that other people can challenge it, improve it and — ideally — make it better than I could have made it myself.

I am starting this project without claiming to have the answers.

I am starting it because I want the answers.

And if nobody else seems to be doing a particularly good job of finding them, then perhaps it's worth having a go.

Maybe this will fail.

Maybe I'll discover that the problem is much harder than I imagined.

Maybe the AI will turn out to be useless.

Or maybe, somewhere in all those thousands of papers, there are connections that have simply been waiting for somebody to put the pieces together.

I'm going to find out.

— **Founder, Open Tinnitus Lab**
