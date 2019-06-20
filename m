Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6D1184D208
	for <lists+openwrt-devel@lfdr.de>; Thu, 20 Jun 2019 17:22:41 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:References:
	In-Reply-To:Message-ID:Date:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Z+x0XL9HT1l6m55ZNaSSNxgUq0IMNkPmExSyJV6ZHec=; b=dPQin1sdeoUs7d
	gtdWV8nlqY9NuIijYlyCpmui2Bhr/jEk8gtFa0/g+lt4SEOmc/juxkWo0hXfZZxAiGmXTOXK0XYXB
	0lBPnxmqcv0XgzaExB6uCCSeXmi5mKkNWayugc87SNzrrVgr5t3pgqnpKy9WP+g4kHs/BZmcmKa6o
	Z/jyfcjoshuwwSueoWymPPsphwcxIJojtvKchEwiqbdixbtDD+amQmCbaLPuE9ay3eAVmriUdY9o/
	NDgx9ZOpLBEuZZMGsze42o7GTvRYwSRx8BGahFeN/jWX0ntH9YYzW8UUggBvwZfQojq4evUlSTv2Y
	wglVCzEpelQeK6EdXepA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hdytC-0000Jw-Jr; Thu, 20 Jun 2019 15:22:14 +0000
Received: from mail-wr1-x444.google.com ([2a00:1450:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hdysw-0000JB-0i
 for openwrt-devel@lists.openwrt.org; Thu, 20 Jun 2019 15:21:59 +0000
Received: by mail-wr1-x444.google.com with SMTP id n9so3503447wru.0
 for <openwrt-devel@lists.openwrt.org>; Thu, 20 Jun 2019 08:21:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=FtZGq2vqBDSKou6t7mNb0VNT7C0mWNt4ClA7OPok+aU=;
 b=V/NevEwqNYQtfXZG3lAyw+twBXekm3xl0YYLmknMlwUwXISII2iOrmydU/anWBX5+N
 KAY1VZTkG5RUxXRg3RTWCcZStWaITevSZUIHLEL1WzimL01SfNU0ciDU7JU7dUu8/NRe
 kU8a7VdYwtBV/WoAoxMIkL//nqFB51thyRxOLfl13XshfdMlTBD7XhQIDTA+DcrDL63p
 NdcBb5m1Kwh+UKCIefqRJ53DcVkIRljkp2LSOjP4Z3RkuXX2SOd8W6G2rE1pBSmfaQiN
 uwfEyCRMhrNRXxkmiOdiK7nx6Mdwd4fAi8LiHMcP7C/b1srhBncIayFVoRCKY1ZpfWp9
 LPtg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=FtZGq2vqBDSKou6t7mNb0VNT7C0mWNt4ClA7OPok+aU=;
 b=O2hF4SLVxLFUh48q9U8xWs0+Fmxuz3Pc0F8X9zrbiTe+fBEn3iz3BQxva8tFdCOAFj
 Ye4TxaAcG0RScam2k9s6FH//3qPvAjUvieHkW+UOE98pMIgBT1p5zMkBKlpV6XLsCNi5
 CCjiYIdp3VFXg6EidV/gl+rFqtQd2n8gb6PfoyPcE+vXNyYrGu2XWrv8HnleAdyyeppq
 bUZ6MxBJB84KgigtD/aWbGk9kt1I8y1KWXLBZ7cwYSSdfm/nYWAox67gXEluE5w53klx
 3MIpmZ9GzE/2LmS+VFaz0BTyNiICALG3jw1tmLMWt0cd2bv1pwCndce8xSvwjWIMX/pL
 AVCg==
X-Gm-Message-State: APjAAAVh4SRzKvkfY6wsaSZ1SKH9YNu832d1Pmuyn02Tgz58r8ng7hZD
 /XIRm/FygmUxuQtNNOhjJcQ=
X-Google-Smtp-Source: APXvYqysiq4IXrxRK4U+DkqWuKJqDq5JuDJ1VU3f+vN1utR1en+6sNvVpCKb4CJnuWn/Ue36Z1x9VQ==
X-Received: by 2002:adf:ed41:: with SMTP id u1mr44658932wro.162.1561044116483; 
 Thu, 20 Jun 2019 08:21:56 -0700 (PDT)
Received: from debian64.daheim (pD9E29A96.dip0.t-ipconnect.de.
 [217.226.154.150])
 by smtp.gmail.com with ESMTPSA id b6sm19386749wrx.85.2019.06.20.08.21.55
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Thu, 20 Jun 2019 08:21:55 -0700 (PDT)
Received: from localhost.daheim ([127.0.0.1] helo=debian64.localnet)
 by debian64.daheim with esmtp (Exim 4.92)
 (envelope-from <chunkeey@gmail.com>)
 id 1hdyss-0003NP-Vu; Thu, 20 Jun 2019 17:21:55 +0200
From: Christian Lamparter <chunkeey@gmail.com>
To: David Bauer <mail@david-bauer.net>
Date: Thu, 20 Jun 2019 17:21:54 +0200
Message-ID: <2379937.tmqAmWvn8S@debian64>
In-Reply-To: <20190618110612.11063-1-mail@david-bauer.net>
References: <20190618110612.11063-1-mail@david-bauer.net>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190620_082158_067764_B7183AC1 
X-CRM114-Status: GOOD (  23.28  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:444 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (chunkeey[at]gmail.com)
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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

On Tuesday, June 18, 2019 1:06:12 PM CEST David Bauer wrote:
> This patch implements consistent handling of the debounce interval set
> for the GPIO buttons. Hotplug events will only be fired if
> 
> 1. It's the initial stable state (no state-change for duration of the
> debounce interval) for a switch. Buttons will not trigger an event for
> the initial stable state.
> 
> 2. The input changes it's state and remains stable for the debounce
> interval.
> 
> Prior to this patch, this was handled inconsistently for interrupt-based
> an polled gpio-keys. We unify the shared logic in button_hotplug_event
> and modify both implementations to read the initial state.
> 
> Run-tested for 'gpio-keys' and 'gpio-keys-polled' on
> 
>  - devolo WiFi pro 1200e
>  - devolo WiFi pro 1750c
>  - devolo WiFi pro 1750x
> 
> Signed-off-by: David Bauer <mail@david-bauer.net>
> ---
>  .../src/gpio-button-hotplug.c                 | 42 +++++++++----------
>  1 file changed, 20 insertions(+), 22 deletions(-)
> 
> diff --git a/package/kernel/gpio-button-hotplug/src/gpio-button-hotplug.c b/package/kernel/gpio-button-hotplug/src/gpio-button-hotplug.c
> index e63d414284..25150344e0 100644
> --- a/package/kernel/gpio-button-hotplug/src/gpio-button-hotplug.c
> +++ b/package/kernel/gpio-button-hotplug/src/gpio-button-hotplug.c
> @@ -241,6 +241,7 @@ static int button_get_index(unsigned int code)
>  static void button_hotplug_event(struct gpio_keys_button_data *data,
>  			   unsigned int type, int value)
>  {
> +	int last_state = data->last_state;
>  	struct bh_priv *priv = &data->bh;
>  	unsigned long seen = jiffies;
>  	int btn;
> @@ -250,6 +251,14 @@ static void button_hotplug_event(struct gpio_keys_button_data *data,
>  	if ((type != EV_KEY) && (type != EV_SW))
>  		return;
>  
> +	if (value == last_state)
> +		return;
> +
> +	data->last_state = value;
> +
> +	if (last_state == -1 && type != EV_SW)
> +		return;
> +
>  	btn = button_get_index(data->b->code);
>  	if (btn < 0)
>  		return;
> @@ -285,22 +294,14 @@ static int gpio_button_get_value(struct gpio_keys_button_data *bdata)
>  
>  static void gpio_keys_polled_check_state(struct gpio_keys_button_data *bdata)
>  {
> -	int state = gpio_button_get_value(bdata);
> -
> -	if (state != bdata->last_state) {
> -		unsigned int type = bdata->b->type ?: EV_KEY;
> -
> -		if (bdata->count < bdata->threshold) {
> -			bdata->count++;
> -			return;
> -		}
> -
> -		if (bdata->last_state != -1 || type == EV_SW)
> -			button_hotplug_event(bdata, type, state);
> -
> -		bdata->last_state = state;
> +	if (bdata->count < bdata->threshold) {
> +		bdata->count++;
> +		return;
>  	}
>  
> +	button_hotplug_event(bdata, bdata->b->type ?: EV_KEY,
> +				gpio_button_get_value(bdata));
> +
>  	bdata->count = 0;
>  }
Doesn't this change the logic of the gpio-key-polled software-debounce
a bit too aggressivly?

Previously, for the button event to happen the button new state had to
be stable for bdata->threshold counts.

Whereas now, bdata->count is counted upwards on every "tick" and once
bdata->count == bdata->threshold matches the "current state" gets passed
on. This seems that it would interfere with the debounce since a signal
doesn't have to be asserted stable for the whole duration now, instead
it now just has to show up "just before" the
bdata->count == bdata->threshold tick in order to be noticed. 

> @@ -351,8 +352,8 @@ static irqreturn_t button_handle_irq(int irq, void *_bdata)
>  	struct gpio_keys_button_data *bdata =
>  		(struct gpio_keys_button_data *) _bdata;
>  
> -	schedule_delayed_work(&bdata->work,
> -			      msecs_to_jiffies(bdata->software_debounce));
> +	mod_delayed_work(system_wq, &bdata->work,
> +			 msecs_to_jiffies(bdata->software_debounce));
>  
>  	return IRQ_HANDLED;
>  }
> @@ -608,6 +609,9 @@ static int gpio_keys_probe(struct platform_device *pdev)
>  
>  		INIT_DELAYED_WORK(&bdata->work, gpio_keys_irq_work_func);
>  
> +		schedule_delayed_work(&bdata->work,
> +				      msecs_to_jiffies(bdata->software_debounce));
> +
Hm, well since the first state is -1 we could just as well schedule the work
immediately here... 

>  		ret = devm_request_threaded_irq(&pdev->dev,
>  			bdata->irq, NULL, button_handle_irq,
>  			irqflags, dev_name(&pdev->dev), bdata);
> @@ -621,9 +625,6 @@ static int gpio_keys_probe(struct platform_device *pdev)
>  			dev_dbg(&pdev->dev, "gpio:%d has irq:%d\n",
>  				button->gpio, bdata->irq);
>  		}
> -
> -		if (bdata->b->type == EV_SW)
> -			button_hotplug_event(bdata, EV_SW, gpio_button_get_value(bdata));
>  	}
>  
>  	return 0;
> @@ -648,9 +649,6 @@ static int gpio_keys_polled_probe(struct platform_device *pdev)
>  	if (pdata->enable)
>  		pdata->enable(bdev->dev);
>  
> -	for (i = 0; i < pdata->nbuttons; i++)
> -		gpio_keys_polled_check_state(&bdev->data[i]);
> -

...and leave this as is.
>  	gpio_keys_polled_queue_work(bdev);
>  
>  	return ret;
> 





_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
