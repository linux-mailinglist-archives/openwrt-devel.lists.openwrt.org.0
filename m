Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 476134D6AF
	for <lists+openwrt-devel@lfdr.de>; Thu, 20 Jun 2019 20:11:08 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=wTObe5GTP7RnP/cjy1T6ZVfkaBw9WiRUbxxt7ULRDuk=; b=Lw4mYpZWqxjOWb
	4HYYlp2upTN/HNpDDr82M9AbdjcUeMpb6/tSRwUohawVNNNse4B7+JtEDQGDt+p5Ottx7osKBdluu
	6QbHdwNJnISYmG7z9FVz2fchecuBVoxUSqtMntzYk79pHDFpoSmVQw/hqkAsckp5fm17Y5+MHeBOm
	tIBe0+0T6h4awnuEBXulGCILUd5MCGhm0YqXjl0PCafzskytXFQuv+CSrK6kYlhDrB+o3T75jBTc2
	5up+L18zSiusktOJvT56dRscCp2L9C5+HnCxMNgLvmbsN1RpPFk0zyGPsX7kpY97NE4F/cpqA4yBm
	JzJ0vYWAp2TEqOzo2BDg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1he1Wa-0006kE-0P; Thu, 20 Jun 2019 18:11:04 +0000
Received: from mars.blocktrron.ovh ([2001:41d0:401:3000::cbd]
 helo=mail.blocktrron.ovh)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1he1W1-0006Sq-Np
 for openwrt-devel@lists.openwrt.org; Thu, 20 Jun 2019 18:10:32 +0000
Received: from [IPv6:2001:678:6e0:2e00:ed8c:f9a:637:5bdf] (unknown
 [IPv6:2001:678:6e0:1001:eccf:a4ff:feb4:d5e7])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.blocktrron.ovh (Postfix) with ESMTPSA id AD85122835;
 Thu, 20 Jun 2019 20:10:20 +0200 (CEST)
To: Christian Lamparter <chunkeey@gmail.com>
References: <20190618110612.11063-1-mail@david-bauer.net>
 <2379937.tmqAmWvn8S@debian64>
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
Message-ID: <2b8d4dac-322e-40e6-6113-a1be432da42b@david-bauer.net>
Date: Thu, 20 Jun 2019 20:10:18 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.1
MIME-Version: 1.0
In-Reply-To: <2379937.tmqAmWvn8S@debian64>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190620_111030_064998_76B13F41 
X-CRM114-Status: GOOD (  22.62  )
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
Cc: ynezz@true.cz, openwrt-devel@lists.openwrt.org, linus.walleij@linaro.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

Hello Christian,

On 20.06.19 17:21, Christian Lamparter wrote:
> On Tuesday, June 18, 2019 1:06:12 PM CEST David Bauer wrote:
>> This patch implements consistent handling of the debounce interval set
>> for the GPIO buttons. Hotplug events will only be fired if
>>
>> 1. It's the initial stable state (no state-change for duration of the
>> debounce interval) for a switch. Buttons will not trigger an event for
>> the initial stable state.
>>
>> 2. The input changes it's state and remains stable for the debounce
>> interval.
>>
>> Prior to this patch, this was handled inconsistently for interrupt-based
>> an polled gpio-keys. We unify the shared logic in button_hotplug_event
>> and modify both implementations to read the initial state.
>>
>> Run-tested for 'gpio-keys' and 'gpio-keys-polled' on
>>
>>  - devolo WiFi pro 1200e
>>  - devolo WiFi pro 1750c
>>  - devolo WiFi pro 1750x
>>
>> Signed-off-by: David Bauer <mail@david-bauer.net>
>> ---
>>  .../src/gpio-button-hotplug.c                 | 42 +++++++++----------
>>  1 file changed, 20 insertions(+), 22 deletions(-)
>>
>> diff --git a/package/kernel/gpio-button-hotplug/src/gpio-button-hotplug.c b/package/kernel/gpio-button-hotplug/src/gpio-button-hotplug.c
>> index e63d414284..25150344e0 100644
>> --- a/package/kernel/gpio-button-hotplug/src/gpio-button-hotplug.c
>> +++ b/package/kernel/gpio-button-hotplug/src/gpio-button-hotplug.c
>> @@ -241,6 +241,7 @@ static int button_get_index(unsigned int code)
>>  static void button_hotplug_event(struct gpio_keys_button_data *data,
>>  			   unsigned int type, int value)
>>  {
>> +	int last_state = data->last_state;
>>  	struct bh_priv *priv = &data->bh;
>>  	unsigned long seen = jiffies;
>>  	int btn;
>> @@ -250,6 +251,14 @@ static void button_hotplug_event(struct gpio_keys_button_data *data,
>>  	if ((type != EV_KEY) && (type != EV_SW))
>>  		return;
>>  
>> +	if (value == last_state)
>> +		return;
>> +
>> +	data->last_state = value;
>> +
>> +	if (last_state == -1 && type != EV_SW)
>> +		return;
>> +
>>  	btn = button_get_index(data->b->code);
>>  	if (btn < 0)
>>  		return;
>> @@ -285,22 +294,14 @@ static int gpio_button_get_value(struct gpio_keys_button_data *bdata)
>>  
>>  static void gpio_keys_polled_check_state(struct gpio_keys_button_data *bdata)
>>  {
>> -	int state = gpio_button_get_value(bdata);
>> -
>> -	if (state != bdata->last_state) {
>> -		unsigned int type = bdata->b->type ?: EV_KEY;
>> -
>> -		if (bdata->count < bdata->threshold) {
>> -			bdata->count++;
>> -			return;
>> -		}
>> -
>> -		if (bdata->last_state != -1 || type == EV_SW)
>> -			button_hotplug_event(bdata, type, state);
>> -
>> -		bdata->last_state = state;
>> +	if (bdata->count < bdata->threshold) {
>> +		bdata->count++;
>> +		return;
>>  	}
>>  
>> +	button_hotplug_event(bdata, bdata->b->type ?: EV_KEY,
>> +				gpio_button_get_value(bdata));
>> +
>>  	bdata->count = 0;
>>  }
> Doesn't this change the logic of the gpio-key-polled software-debounce
> a bit too aggressivly?
> 
> Previously, for the button event to happen the button new state had to
> be stable for bdata->threshold counts.
> 
> Whereas now, bdata->count is counted upwards on every "tick" and once
> bdata->count == bdata->threshold matches the "current state" gets passed
> on. This seems that it would interfere with the debounce since a signal
> doesn't have to be asserted stable for the whole duration now, instead
> it now just has to show up "just before" the
> bdata->count == bdata->threshold tick in order to be noticed. 

You are right, i will rework this part.

>> @@ -351,8 +352,8 @@ static irqreturn_t button_handle_irq(int irq, void *_bdata)
>>  	struct gpio_keys_button_data *bdata =
>>  		(struct gpio_keys_button_data *) _bdata;
>>  
>> -	schedule_delayed_work(&bdata->work,
>> -			      msecs_to_jiffies(bdata->software_debounce));
>> +	mod_delayed_work(system_wq, &bdata->work,
>> +			 msecs_to_jiffies(bdata->software_debounce));
>>  
>>  	return IRQ_HANDLED;
>>  }
>> @@ -608,6 +609,9 @@ static int gpio_keys_probe(struct platform_device *pdev)
>>  
>>  		INIT_DELAYED_WORK(&bdata->work, gpio_keys_irq_work_func);
>>  
>> +		schedule_delayed_work(&bdata->work,
>> +				      msecs_to_jiffies(bdata->software_debounce));
>> +
> Hm, well since the first state is -1 we could just as well schedule the work
> immediately here... 

Hmm, i have a bit trouble grasping your intention here.

Do you mean we can unify the scheduling for polled and interrupt-based keys?

Best wishes
David

>>  		ret = devm_request_threaded_irq(&pdev->dev,
>>  			bdata->irq, NULL, button_handle_irq,
>>  			irqflags, dev_name(&pdev->dev), bdata);
>> @@ -621,9 +625,6 @@ static int gpio_keys_probe(struct platform_device *pdev)
>>  			dev_dbg(&pdev->dev, "gpio:%d has irq:%d\n",
>>  				button->gpio, bdata->irq);
>>  		}
>> -
>> -		if (bdata->b->type == EV_SW)
>> -			button_hotplug_event(bdata, EV_SW, gpio_button_get_value(bdata));
>>  	}
>>  
>>  	return 0;
>> @@ -648,9 +649,6 @@ static int gpio_keys_polled_probe(struct platform_device *pdev)
>>  	if (pdata->enable)
>>  		pdata->enable(bdev->dev);
>>  
>> -	for (i = 0; i < pdata->nbuttons; i++)
>> -		gpio_keys_polled_check_state(&bdev->data[i]);
>> -
> 
> ...and leave this as is.
>>  	gpio_keys_polled_queue_work(bdev);
>>  
>>  	return ret;
>>
> 
> 
> 
> 

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
