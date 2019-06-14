Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 18D2B46822
	for <lists+openwrt-devel@lfdr.de>; Fri, 14 Jun 2019 21:29:07 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:References:
	In-Reply-To:Message-ID:Date:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=8VucPoy66zuOaz3s2+xrv6YU3X5L/TATCbkU9S5CEUQ=; b=ZHwOkxpBeMD7SZ
	EcCJUqcz6nNGPe1wAc3FYGHIaF7RGXAtMSc1cQGjifmH3WbU9SAs2BDwX5NKEYb2eeJrDfv7x011/
	0JuS6gLbLn2WaltWnkZcDlrevZYmloJ2fyUZVZ+5IwNP5PH5wE0xtWZ98IEAQ5BdqR7rlsx/+9AZI
	YSsCUVIG2IswQ97+JV5HJRVeSls5LSFnjQXfSQ0JX5ybSIdLH1jBYgEZesBA3jw3Ck1JQk6wKHDPR
	A7iZLySOv5WUS7TaMG2E85sN5BrRRJqCZJIF6vXod87vYgR7r1rRcoKq5u8MJs/24hgZrKZNPFc+k
	RVaEeYNQqMWbsunqQVRA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hbrsj-0005LF-4S; Fri, 14 Jun 2019 19:29:01 +0000
Received: from mail-wm1-x341.google.com ([2a00:1450:4864:20::341])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hbrsY-0005Kp-Ik
 for openwrt-devel@lists.openwrt.org; Fri, 14 Jun 2019 19:28:52 +0000
Received: by mail-wm1-x341.google.com with SMTP id c6so3390879wml.0
 for <openwrt-devel@lists.openwrt.org>; Fri, 14 Jun 2019 12:28:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=5t4O4EsJZFhSJIjDo3XwPTfo4ETy/P8sXQmZYjRWuLE=;
 b=s9XF2gVDgS0NkMnWZO8Q2CPc7pZ9OC/sRjEcM8B+8VE0vYrvCK42/VIwNgC07AZyQf
 /1QJjVJM2nzXsGfA33XRLX0npiUjCm9Y+s+NaHsrEZo7zEiqeu0bkZa4upCXwdW+ujja
 3905pl+wp8sIJA4bIMxCpnrh3sFLI6WQfh5Oo54J8amM7usN54bLifvnTLX5N0wamTLB
 lc/sx9798XNUKvNtXtle8kcVvGSQdv6oHt5ZgneV2i2xlDOTbw4lDpdhLgc1tNp2GmDH
 JKJp9GntSnfeaXBzxSmne4uXsA/8Dl4myGp4jEhwnuhnJAscksMLHPIHZpT4vQUJ1rcL
 pCjA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=5t4O4EsJZFhSJIjDo3XwPTfo4ETy/P8sXQmZYjRWuLE=;
 b=aYc3K0Oz+eHOeIRXEVeqHtSzhQ60wytfrZiUMNqKsjcmV5T/BxlTvGbHaTfK+0cXDx
 DvMjsYEAkzzK9ZBkN5ig8mrWFFiIJa+zJHrn5aLaT3TkDjf1A3EzDbYvjM7ed3IfW4Y6
 nN9es9Prl0/JaZhpw4SHdCor3BI49b1L0Fl8pQiaF2MTq5NmnQlkFrnCpMvNwKgVKsX6
 OlbYrK2PKi2OEl20A2E9O2WV9cOIZsdtmC7Z+pR5j1XYTF82O2JNSZyJrn7KuYyZ2zgE
 KbfiQYrCfWF6LAbv26RV/cwHwrySwB2hMBphPHxkZkZulWMrvsm7+AroigSWir3iKKJq
 tK2A==
X-Gm-Message-State: APjAAAXx/JzzwNfNifLp6uekAcT1+Lk7KHmK/iQxkPPbAUTjCBpR/0Gv
 MGRJkKjFeVR5AdD8xP3QuA4j21Xc
X-Google-Smtp-Source: APXvYqxOJaq8THXmcLVO31KA+wI3Paa/A+FRkGjTOFzfbWqe4nyRDsraYp2WaCVfs5fzrqT5gZe86g==
X-Received: by 2002:a1c:cb4d:: with SMTP id b74mr9440644wmg.43.1560540528449; 
 Fri, 14 Jun 2019 12:28:48 -0700 (PDT)
Received: from debian64.daheim (pD9E29824.dip0.t-ipconnect.de.
 [217.226.152.36])
 by smtp.gmail.com with ESMTPSA id z7sm2591211wrs.22.2019.06.14.12.28.46
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Fri, 14 Jun 2019 12:28:47 -0700 (PDT)
Received: from localhost.daheim ([127.0.0.1] helo=debian64.localnet)
 by debian64.daheim with esmtp (Exim 4.92)
 (envelope-from <chunkeey@gmail.com>)
 id 1hbrsU-00064C-6i; Fri, 14 Jun 2019 21:28:46 +0200
From: Christian Lamparter <chunkeey@gmail.com>
To: David Bauer <mail@david-bauer.net>
Date: Fri, 14 Jun 2019 21:28:45 +0200
Message-ID: <7513956.bV6BmdoukA@debian64>
In-Reply-To: <20190613210036.30922-1-mail@david-bauer.net>
References: <20190613210036.30922-1-mail@david-bauer.net>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190614_122850_624347_0AB324D4 
X-CRM114-Status: GOOD (  19.58  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:341 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (chunkeey[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
Subject: Re: [OpenWrt-Devel] [PATCH] gpio-button-hotplug: gpio-keys: read
 initial state
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

On Thursday, June 13, 2019 11:00:36 PM CEST David Bauer wrote:
> This commit reads the initial state for interrupt triggered gpio-keys.
> Without this commit, the switch to the initial stable input-state
> triggers a button-event. Button events are now only triggered when the
> button state differs fromt the initial state.
> 
> Effectively, this reverts commit 6c5bfaac84b0 ("gpio-button-hotplug:
> gpio-keys: fix always missing first event"), but in addition, we read
> the initial button state on driver probe. This commit caused some devices
> to enter failsafe mode every time when booting.
> 
> Run-tested on devolo WiFi pro 1200e & 1200i.
> 
> Signed-off-by: David Bauer <mail@david-bauer.net>

Oh boy, I think the problem is in the failsafe button handler instead.

|
|#!/bin/sh
|
|[ "${TYPE}" = "switch" ] || echo ${BUTTON} > /tmp/failsafe_button
|
|return 0
|

It's not checking the button state, so even a single "released" message
can do something. If this turns out to be even more troublesome I think
we should enlist Linus Walleij... he might be interested too, since he's
the upstream linux-gpio maintainer and gemini target contributor.

Maybe he can point to a specifc reason why the interrupt gets triggered
when the module is loaded and how to handle it. Because this behavior
seems to be common between different platforms now and the upstream
gpio-keys (which does work differently!) seems to handle it just fine.

@Linus: Do you have any inside knowledge about the issue? That when
gpio-keys is loaded (in OpenWrt it's a module due to kernel size
constraint on various routers) the associated interrupt fires and
this results in a ghost key event. I have to add that OpenWrt's
gpio-button-hotplug.c (which registers the gpio-keys and
gpio-keys-polled) is a special, out-of-tree module that sends broadcast
events (netlink) rather than using the input-subsystem (again due
to space issues). 

the OpenWrt's gpio-button-hotplug.c source is right here:
https://git.openwrt.org/?p=openwrt/openwrt.git;a=blob;f=package/kernel/gpio-button-hotplug/src/gpio-button-hotplug.c

Regards,
Christian

> ---
>  .../src/gpio-button-hotplug.c                  | 18 +++++++++++++-----
>  1 file changed, 13 insertions(+), 5 deletions(-)
> 
> diff --git a/package/kernel/gpio-button-hotplug/src/gpio-button-hotplug.c b/package/kernel/gpio-button-hotplug/src/gpio-button-hotplug.c
> index daa4b2a4f7..5bc783e015 100644
> --- a/package/kernel/gpio-button-hotplug/src/gpio-button-hotplug.c
> +++ b/package/kernel/gpio-button-hotplug/src/gpio-button-hotplug.c
> @@ -341,8 +341,16 @@ static void gpio_keys_irq_work_func(struct work_struct *work)
>  	struct gpio_keys_button_data *bdata = container_of(work,
>  		struct gpio_keys_button_data, work.work);
>  
> -	button_hotplug_event(bdata, bdata->b->type ?: EV_KEY,
> -			     gpio_button_get_value(bdata));
> +	int state = gpio_button_get_value(bdata);
> +
> +	if (state != bdata->last_state) {
> +		unsigned int type = bdata->b->type ?: EV_KEY;
> +
> +		if (bdata->last_state != -1 || type == EV_SW)
> +			button_hotplug_event(bdata, type, state);
> +
> +		bdata->last_state = state;
> +	}
>  }
>  
>  static irqreturn_t button_handle_irq(int irq, void *_bdata)
> @@ -607,6 +615,9 @@ static int gpio_keys_probe(struct platform_device *pdev)
>  
>  		INIT_DELAYED_WORK(&bdata->work, gpio_keys_irq_work_func);
>  
> +		schedule_delayed_work(&bdata->work,
> +			      msecs_to_jiffies(bdata->software_debounce));
> +
>  		ret = devm_request_threaded_irq(&pdev->dev,
>  			bdata->irq, NULL, button_handle_irq,
>  			irqflags, dev_name(&pdev->dev), bdata);
> @@ -620,9 +631,6 @@ static int gpio_keys_probe(struct platform_device *pdev)
>  			dev_dbg(&pdev->dev, "gpio:%d has irq:%d\n",
>  				button->gpio, bdata->irq);
>  		}
> -
> -		if (bdata->b->type == EV_SW)
> -			button_hotplug_event(bdata, EV_SW, gpio_button_get_value(bdata));
>  	}
>  
>  	return 0;
> 





_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
