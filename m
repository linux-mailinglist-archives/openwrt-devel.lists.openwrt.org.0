Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A02CFFECBE
	for <lists+openwrt-devel@lfdr.de>; Sat, 16 Nov 2019 15:51:07 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:In-Reply-To:MIME-Version:Date:Message-ID:
	From:References:To:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=bE9uNkzNLbRvTxLfcn67I0CgbSqX0jfeG97Vuo/KSHo=; b=IkNCi2B3hF81dlrwd1z8kc3V6
	2KTEd3t+hlGsoz+B/N3I1jWYxNPRJwkEf0NI5JneTlZJVPZEuHm4pZzX+T/TtJnbq4g9Acymp4uN9
	4ZkrvH5sw+ii/PQlvj3BhSeAYAz6kZ2MXHXK6lwJi0s3al0+/8kPZh4Iyj0iebfa3nuokp12lRGpO
	eD1HgZhLhJfIAPQsb/Zh+vm7zoqDk4vqRetTT0MzgxX6MoIjxKpA49imHtcpk1/Y4VCBHx96+oU2L
	XihVQRpHIxZuscq0UCym2vDS5OtSSiXxz55NAqn447TOx0LsE77q3C0eDYTXXgeXjKROja+gfGL0w
	N9gHBBzyw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iVzPi-0005zO-IH; Sat, 16 Nov 2019 14:51:02 +0000
Received: from mail-lj1-x241.google.com ([2a00:1450:4864:20::241])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iVzPa-0005yt-Bk
 for openwrt-devel@lists.openwrt.org; Sat, 16 Nov 2019 14:50:56 +0000
Received: by mail-lj1-x241.google.com with SMTP id m4so8852890ljj.8
 for <openwrt-devel@lists.openwrt.org>; Sat, 16 Nov 2019 06:50:53 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=yTro1PnfHVh0kCtXg3QYTk8SbnelyY3SKjMZx1S4mfo=;
 b=csn3o3f7viK9vyqGiDGPpzvwG9XRPJOuHdueICFLJot2QAlE+n3wlTYHTNvJURl0BG
 vKaeKmbr7F+pB8vGCP7zLarWlFQBubaDHCV23hm3Nzn6QTQxZyzBX5vgtSzlFtVq+7fq
 +XlgerSq/wV2GHluWuKEM4NE4+7s0tokbMj3FEdUN6ci30m4RhA/AYE72CRWKqETEOXm
 TONMVsIY8I+Wnf5xzNy6Ep+NoRokoehfzdqwH5EslkErI3/0vKynfrovlFJvxQOl5bA4
 O++d3YRkYhzFCMlXlVhY207CREXK4063DTtuTddDclLaARiKAM7G1PLvKQ1X5qH7GNJ7
 OhFQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=yTro1PnfHVh0kCtXg3QYTk8SbnelyY3SKjMZx1S4mfo=;
 b=Hq1J0PvRgfW5oK6Lj5V7e7V1J8ZBc0WNSoM5gMRCM8qsP9fNrxXARGHvnzFYUR1Lv3
 Mb+9dkB8NlmLxXiwmwYp/+9s3n8AIXx0bZMDvY1PvtZFI0WsmMWfAAK+e++DZm9EAh8M
 MKH+8piOLtilsnJEKuWLJ3AnGyo1mC6BdDOV8LPcD0kg+sOE2Ne/AIQy1NW0CFzLWFw4
 3uwopxhVpBR3UgpfybprdisGkM5WvQp4ma1alVpho4xuYQ46tDGVsJ65OWaNK3MJghCV
 nnPxQH4jJinPJ1ZCptB8OVsd2Qx674ZxjGSZq28R3lV6C4Kj0XmHcBBHDluMzxPplUBK
 SawA==
X-Gm-Message-State: APjAAAU9ZJ8lebcVgfyUCHpdeO69mSmeJFhJkS7B2UOb2NcA4OXPvLQX
 TngKkypoDUzhcqi8FSIP0o4=
X-Google-Smtp-Source: APXvYqyegVA07CJINNEFjii6HN5yOo1dKUFCvbFCmMb9XBDfVE+kq+U7i28mTijWC11JAKu24YUIGQ==
X-Received: by 2002:a2e:b4f0:: with SMTP id s16mr14224444ljm.123.1573915850065; 
 Sat, 16 Nov 2019 06:50:50 -0800 (PST)
Received: from [31.11.183.129] (031011183129.warszawa.vectranet.pl.
 [31.11.183.129])
 by smtp.gmail.com with ESMTPSA id s11sm5446099ljo.42.2019.11.16.06.50.48
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Sat, 16 Nov 2019 06:50:49 -0800 (PST)
To: Adrian Schmutzler <mail@adrianschmutzler.de>,
 openwrt-devel@lists.openwrt.org
References: <20191105151202.4709-1-freifunk@adrianschmutzler.de>
 <00d201d5941e$a6b5a6f0$f420f4d0$@adrianschmutzler.de>
 <087b061c-d246-2eb9-7412-9a668784b4a6@gmail.com>
 <014001d5942e$c68d67a0$53a836e0$@adrianschmutzler.de>
 <eadbf51f-6c46-8d2b-673a-87cce7b360f0@gmail.com>
 <017e01d594b9$77d3af80$677b0e80$@adrianschmutzler.de>
From: Piotr Dymacz <pepe2k@gmail.com>
Message-ID: <d561e269-1a4b-e514-7a38-3b6a88aa14ea@gmail.com>
Date: Sat, 16 Nov 2019 15:50:48 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <017e01d594b9$77d3af80$677b0e80$@adrianschmutzler.de>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191116_065054_517641_E7A4581C 
X-CRM114-Status: GOOD (  20.39  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (pepe2k[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:241 listed in]
 [list.dnswl.org]
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Subject: Re: [OpenWrt-Devel] [PATCH v2] ath79: use gpio_hog instead of
 gpio-export
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
Cc: bjorn@mork.no, 'Enrico Mioso' <mrkiko.rs@gmail.com>,
 'Mathias Kresin' <dev@kresin.me>, 'Birger Koblitz' <mail@birger-koblitz.de>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

Hi Adrian,

Sorry for a late reply.

On 06.11.2019 16:47, Adrian Schmutzler wrote:
> Hi,
> 
>> Wouldn't it make more sense to spend time now on implementing
>> future-proof solution and switch to it when it's ready?
> 
> Obviously, yes. But for the meantime, I'd like to have a less-arbitrary status quo.

For me, in that case, I would leave decision to the author of support 
_and_ reviewer/committer.

>> I believe the major issue here is that there is no 'in place'
>> replacement for 'gpio-export' (or I'm just not aware of it).
>> 
> [...]
>> 
>> Are there any other reasons to get rid of 'gpio-export' _now_, other
>> than the fact upstream rejected this approach?
>> 
>   [...]
>> 
>> '03_gpio_switches' doesn't handle inputs.
>> 
>> Of course, it has advantages, like the fact it makes the GPIO setup
>> uci-based but on the other hand... it does its job fairly late during
>> bootup. In some cases, you might want to, for example, enable power for
>> 3/4G modem as early as possible, to give it time to register in network.
>> 
>> Anyway, under the hood, it's the same approach, export named GPIO using
>> _deprecated_ sysfs. Excluding uci and place in boot time where it
>> happens, the difference is where the GPIOs are defined, DTS vs.
>> user-space scripts.
>> 
> 
> So, both 03_gpio_switches and gpio-hogs provide less functionality than gpio-exports with no striking benefit. From that point of view we should actually allow gpio-exports in device support submissions again, and actually discourage gpio_hogs for the status quo ... (and it would be better to convert hogs to exports and not the other way around ...)

Someone could say that 'gpio-hog' is the accepted solution in upstream 
and the 'gpio-export' is the rejected one so we need to get rid of it ASAP.

Personally, I don't see now any good reason to convert everything back 
to 'gpio-export'. I would be just more pragmatic when reviewing and 
accepting boards support - if the author thinks that it would be better 
(look at it from usability point of view) to have user-space control on 
a specific GPIO line, I wouldn't ask him to use 'gpio-hog'. For me, also 
the uci approach is fine if there is no need to setup GPIO before the 
whole boot process finishes.

Still, in some cases maybe 'fixed-regulator' would fit even better than 
discussed solution. IIRC, at least in case of the USB, there is still a 
way to have control on the VBUS if 'fixed-regulator' is used (unload the 
driver, power goes off, load it back, power goes on).

I just don't think it makes sense to look for a consensus now on 
something which for sure has to go away/change in, I hope close future.

-- 
Cheers,
Piotr

> 
> Best
> 
> Adrian
> 
> 
> _______________________________________________
> openwrt-devel mailing list
> openwrt-devel@lists.openwrt.org
> https://lists.openwrt.org/mailman/listinfo/openwrt-devel
> 


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
