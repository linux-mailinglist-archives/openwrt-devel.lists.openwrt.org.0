Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C8E8767B90
	for <lists+openwrt-devel@lfdr.de>; Sat, 13 Jul 2019 19:53:45 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=K+AK5xNZLkFn/lSWvxRguVH7MBOC/POIM2MXC4vZyRw=; b=Bxjw77F6EWXpxc
	k7En/SLZYcJWAzEGthOQgMJxHcPkgonuj/sjfOJMipIMUWVx+srfuMpTMHebwL/3HVEfLbdCJ+Sh+
	INE7yoUcREIelkvCZ3tziJUCeweYHLV7p4t5DH6TnPdBePPLI7/mrQHNFeBj7061QdwMICRPN4KtH
	IQkd/D5dEEeGlFtTjc6s1+klfHJV1r09FC9Vu9rcyPtMGMjf7m1FtE1wdJhqQ7hd7X9OGrKIxmhQh
	7RhhCVOUQVYRUmt34Z2rcBAXP2us4NDjJbKZu6GYJ6jEfOj2W7WOlJ+jKew6BymQt1+Q4mTB1baWx
	2o5eOgizfhR2L1gOkJnw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hmMD6-0008UF-FR; Sat, 13 Jul 2019 17:53:24 +0000
Received: from mars.blocktrron.ovh ([2001:41d0:401:3000::cbd]
 helo=mail.blocktrron.ovh)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hmMCu-0008TO-Tu
 for openwrt-devel@lists.openwrt.org; Sat, 13 Jul 2019 17:53:15 +0000
Received: from [IPv6:2003:e5:3f35:2400:6062:5674:2d31:e5bf]
 (p200300E53F352400606256742D31E5BF.dip0.t-ipconnect.de
 [IPv6:2003:e5:3f35:2400:6062:5674:2d31:e5bf])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.blocktrron.ovh (Postfix) with ESMTPSA id 62E84221CC;
 Sat, 13 Jul 2019 19:53:06 +0200 (CEST)
To: Christian Lamparter <chunkeey@gmail.com>
References: <20190702215718.4891-1-mail@david-bauer.net>
 <3499829.cv7yEftivz@debian64>
 <765ea79c-1ba2-0956-e699-0f281c462397@david-bauer.net>
 <2579646.vlONLxg212@debian64>
From: David Bauer <mail@david-bauer.net>
Openpgp: id=D70432697B7C4C27380FCDA3BAB39714B4A4B878
Autocrypt: addr=mail@david-bauer.net; prefer-encrypt=mutual; keydata=
 mQENBFYkGEcBCADbRMHdOXmszxrmE9G/gWUD4/HXklOfn+hyBpEcOul+GKAet0oFxznkchJe
 hO5MbEFYsnM8TZVxjnEi70c3luF1m4JycjgQ91GJ52+xvLV0dVz+L99JBgVJNRDvvt68rLVq
 A8/LCdkXctZ+GBfrtTYQ6dOeuQf/qWuwlNTvuG92uWVZjncyWOmQX73gv+1MTRsCmIGNYQu1
 ZDVyhr3YsTgJIXTHUCxBHQBDglkb3L5lK9WHPf1puQ2grNbUg9VSmo4a9IzUpRauNtCDUFxi
 1m1e5VnmU5O5/xZyDzwmpWog9tUfScS7X9pdVNQ+2W3zCRrotFEn6FKdD01mhIsLnczjABEB
 AAG0IkRhdmlkIEJhdWVyIDxtYWlsQGRhdmlkLWJhdWVyLm5ldD6JAVkEEwEIAEMCGwMHCwkI
 BwMCAQYVCAIJCgsEFgIDAQIeAQIXgAIZARYhBNcEMml7fEwnOA/No7qzlxS0pLh4BQJbLRhu
 BQkIy2cnAAoJELqzlxS0pLh4It8IALb1ea/ezwy8v65zmTeIepeuO5umWzWIy7fLaAsxzJbH
 rO6rCTnRN5ZLyzuxNlhYMyvXAJL7kmPuEOOzHk5xh3soV24VZLSryzGeB6TG3g8L6D0guJ72
 JMM/2HGP8g1zu/IfIM94DZJk7WEuRKG5sndZp49s/voKhrMqAvAU4G03knpEN5SbJx5RA/Wf
 i5stipz2vqS87jHgOVTL1m67Wg9jhKuzJbSlt+m8rHZCQ9dCQQLtqbHugnyOrFhKxwfGFEMB
 aV0sKwoBfjtWP/g3kb9L5wOvRj8UnDRLTB/fVnOsMD18ILEiNqc6FCh4hIb4y2QQEc0nb68f
 imjr4Hz7TOe5AQ0EViQYRwEIALqz1V6kWIvCTVN/6QN9fepVSwSw+5IiiVBGtf2rtdqujCRD
 bGi96a2ZLYRQzlSQvCZ51skgoZFmIW2YhPP90qiZssSEQxgY1rf+DEYnjWmFSgi3iHqYXRk2
 cY7OI3ZT8D2tAFu9pIAxZpD5FdQznJmUhljeTJw+lGOoxctf1xjHZcRcU6GUFMpFBc4xaLC0
 hUN24HT5pDpklxskPFH91VncDaOsLesqszGaUHWx3hogRfogdADvycUp/bQB80kZO/XqexWN
 GUNJYS4axWM2ND25bWV1h9aFjPpOwFM7FwAyra0VihnnNn7dTL5vBpFztY0IFPlvqyc1Vw8y
 vgtShA0AEQEAAYkBPAQYAQgAJgIbDBYhBNcEMml7fEwnOA/No7qzlxS0pLh4BQJbLRiFBQkI
 y2c+AAoJELqzlxS0pLh4LIcH/jnL+ytxRSAh8VX3U2xrMOhBFOkJbW9fj6UgE2iFfZUEOBZl
 q6fZTYn1LOTOECrnLC6eNUQsnZ2u+/N93I5Fmof0MIICUbVabEVmbF/jCFkKjrTPFv/DbNZy
 c+X2ugyX7LsJT+CdvtPT9fObTLCS1nQc3G49syEGVEIzPNyIFzJbFLyh1AfRxmnzAwlal6xK
 S82CsKe+n2lwWg2dyyoJYqwM2G6hAg/ZFqRBZ1RH6TsACGMnwvmsfW/871mPt/mOTCDoH1s1
 tcsgxxtD87UnEqA4zL8dqi5uRA82ZznWaq3mzOGKcBkgEcxi8nnQWW+EyTiZWC+wJ9xT4kLh
 z03IzJQ=
Message-ID: <453b6bb7-ff2f-dd78-bb1b-6a9635348304@david-bauer.net>
Date: Sat, 13 Jul 2019 19:53:05 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.2
MIME-Version: 1.0
In-Reply-To: <2579646.vlONLxg212@debian64>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190713_105313_267236_76DC8FCB 
X-CRM114-Status: GOOD (  34.04  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
Subject: Re: [OpenWrt-Devel] [PATCH v2] gpio-button-hotplug: mind debounce
 interval consistently
X-BeenThere: openwrt-devel@lists.openwrt.org
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: <openwrt-devel.lists.openwrt.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/openwrt-devel>, 
 <mailto:openwrt-devel-request@lists.openwrt.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/openwrt-devel/>
List-Post: <mailto:openwrt-devel@lists.openwrt.org>
List-Help: <mailto:openwrt-devel-request@lists.openwrt.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/openwrt-devel>,
 <mailto:openwrt-devel-request@lists.openwrt.org?subject=subscribe>
Cc: linus.walleij@linaro.org, openwrt-devel@lists.openwrt.org,
 =?UTF-8?Q?Petr_=c5=a0tetiar?= <ynezz@true.cz>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

Hello Christian,

first of all, i wouldn't have imagined that there is so mush to talk about pressing buttons ;)

On 13.07.19 18:04, Christian Lamparter wrote:
> Hello David,
> 
> On Wednesday, July 10, 2019 12:31:12 AM CEST David Bauer wrote:
>> thanks for your reworked patch. I think i found two bugs around the debounce
>> interval for both flavors. I'll have to admit, they are both edgecases ;)
>>
>> On 06.07.19 23:57, Christian Lamparter wrote
>>> -static void gpio_keys_polled_check_state(struct gpio_keys_button_data *bdata)
>>> +static void gpio_keys_handle_button(struct gpio_keys_button_data *bdata)
>>>   {
>>> +	unsigned int type = bdata->b->type ?: EV_KEY;
>>>   	int state = gpio_button_get_value(bdata);
>>> +	unsigned long seen = jiffies;
>>>   
>>> -	if (state != bdata->last_state) {
>>> -		unsigned int type = bdata->b->type ?: EV_KEY;
>>> +	pr_debug(PFX "event type=%u, code=%u, pressed=%d\n",
>>> +		 type, bdata->b->code, state);
>>> +
>>> +	/* is this the initialization state? */
>>> +	if (bdata->last_state == -1) {
>>> +		/*
>>> +		 * Don't advertise unpressed buttons on initialization.
>>> +		 * Just save their state and continue otherwise this
>>> +		 * can cause OpenWrt to enter failsafe.
>>> +		 */
>>> +		if (type == EV_KEY && state == 0)
>>> +			goto set_state;
>>
>> As we are calling gpio_keys_handle_button every poll-interval, we need 
>> to make sure we save the initial state AFTER the button has been stable 
>> for the debounce interval. For irq-based keys we get this "for free" as 
>> we modify the execution timer for the irq handling function.
> 
> Ah, I think due to how the patch looks (as in this mail and not applied
> to the source code) this feature/behavior got lost there. 
> 
> I've added the gpio_keys_handle_button() below after that version of the
> patch is applied.
> 
> ---
> static void gpio_keys_handle_button(struct gpio_keys_button_data *bdata)
> {
>         unsigned int type = bdata->b->type ?: EV_KEY;
>         int state = gpio_button_get_value(bdata);
>         unsigned long seen = jiffies;
> 
>         pr_debug(PFX "event type=%u, code=%u, pressed=%d\n",
>                  type, bdata->b->code, state);
> 
>         /* is this the initialization state? */
>         if (bdata->last_state == -1) {
>                 /*
>                  * Don't advertise unpressed buttons on initialization.
>                  * Just save their state and continue otherwise this
>                  * can cause OpenWrt to enter failsafe.
>                  */
>                 if (type == EV_KEY && state == 0)
>                         goto set_state;
>                 /*
>                  * But we are very interested in pressed buttons and
>                  * initial switch state. These will be reported to
>                  * userland.
>                  */
>         } else if (bdata->last_state == state) {
>                 /* reset asserted counter (only relevant for polled keys) */
>                 bdata->count = 0;
>                 return;
>         }
> 
>         if (bdata->count < bdata->threshold) {
>                 bdata->count++;
>                 return;
>         }
> 
>         if (bdata->seen == 0)
>                 bdata->seen = seen;
> 
>         button_hotplug_create_event(button_map[bdata->map_entry].name, type,
>                                     (seen - bdata->seen) / HZ, state);
>         bdata->seen = seen;
> 
> set_state:
>         bdata->last_state = state;
>         bdata->count = 0;
> }
> ---
> 
> The pressed button state (for the polled) version will now always have to be
> stable for the debounce-duration (including on the initial state). That's
> guaranteed by the "if (bdata->count < bdata->threshold) { count++;return; }"
> path. If there's a laps during the initial state then last_state gets set to
> 0 and the counter is reset. But this bogus "released" event is not reported
> to userspace, so if it's an inital pressed state it will still be reported
> correctly, altough it might take another full debounce-duration. 

Hmm, i might have some problems grasping here, but let's take the following
situation:

     goto set_state called here
     |
0    5    10   15   20   25   30
|    |    |    |    |    |    |
1111110000000000000000000000000

Debounce: 10ms
Poll:     5ms

So, from my understanding (and to keep the behavior in line), the initial stable
state for GPIO-polled should be set to 0 at 20ms. No event should be created
for this.

With the gpio_keys_handle_button function you snipped above however, we would initially
set our state to 1 and would fire a release event at 20ms, even though this is our real
initial stable state.

failsafe is triggered on both edges, so pressed & released events would trigger it.

Or am i missing something here?


> 
> For the irq-driven case, threshold is now 0 and therefore this gets skipped.
> Which should be fine since we schedule the gpio_keys_handle_button() after
> the debounce-interval so it should be stable at that point (if not then the
> debounce interval needs tweaking).
> 
> So, the button behavoir should be Ok. The "switch" case is a definitely
> more lenient in that the initial state. It could jump between 0 and 1 and
> not reset. However, a "physical" switch that manages to constantly
> flip-flop during the poll interval probably has a electrical problem.
> 
>>> +		/*
>>> +		 * But we are very interested in pressed buttons and
>>> +		 * initial switch state. These will be reported to
>>> +		 * userland.
>>> +		 */
>>> +	} else if (bdata->last_state == state) {
>>> +		/* reset asserted counter (only relevant for polled keys) */
>>
>> This is also needed for irq-driven keys. If the state changes two times 
>> within the debounce interval, gpio_keys_handle_button is still executed 
>> and we need to terminate here. Otherwise, we would skip a "release" or
>> "push" action.
>>
>> I did rework those two parts a bit and tested it with the irq and
>> polled flavors without a problem. See below:
>>
> I don't follow there? In your v2, you have fixed the debounce-rearming
> timer for the irq-case by doing mod_delayed_work() function, which is
> correct! So, if a new event within the debounce interval, the timer
> will get rescheduled by another irq to fire after after a new
> debounce-interval passed (so it should be stable by then).

You are right. Your commit was relating to the reset of the counter, my remark was
about "There should be no events in case last_state == current_state also for irq
keys. So no functional problem to see here :)

Best wishes
David

> 
> If this is still a problem on ath79, I think the requested irq trigger
> method might have something to do with this, maybe it triggers on the
> wrong level or edge? (For apm821xx, I had to change it to just falling
> edge as the IRQ controller can only do either or but not both edges).
> 
> Cheers,
> Christian
> 
> I guess this is becoming a moot point since we both have commit access ;)
> Put please, take your pick!
> 
> 

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
