Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B0FEAEA0B0
	for <lists+openwrt-devel@lfdr.de>; Wed, 30 Oct 2019 17:02:08 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:In-Reply-To:MIME-Version:Date:Message-ID:
	From:References:To:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=DlCaklygpg0ggXKMLpOp+QZYH693diKBuyLKV8g7GVM=; b=iFNWTs3mPFbzAWPpAMXRFxJ4g
	huQ9epfjNnUtMRJrDQhFjsul95MSuBAYB0PaPLX36jdY3xTkZpYrbmBgtv4EIIJ3qhdch6sDivBIs
	wQER3DCdwBdS/SdG2EaX7nBwhApXYhnT4cadQ+eql4Pj9HIRSBwPmq7lG11DLF2l0jyz1yg0O9+C/
	sKnhtg32kgH1qOMtakcxx+yC2gbVEZx9tIBGb4jAucv88elB3CUMcnVLCF/eY2N2NgqSO3F4ryhCW
	umcEX7qUfzByym88TH3FGyM7+q5sfdVtEXn+7/Jtmbw0XIxXNkZ88dazyvWZBuGmOFVo0u7mIGuwY
	MN64vfn5g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iPqQ9-0000Co-CS; Wed, 30 Oct 2019 16:02:05 +0000
Received: from mail-lj1-x235.google.com ([2a00:1450:4864:20::235])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iPqPz-0000BV-4D
 for openwrt-devel@lists.openwrt.org; Wed, 30 Oct 2019 16:01:56 +0000
Received: by mail-lj1-x235.google.com with SMTP id y23so2892341ljc.5
 for <openwrt-devel@lists.openwrt.org>; Wed, 30 Oct 2019 09:01:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:references:from:message-id:date:user-agent:mime-version
 :in-reply-to:content-language:content-transfer-encoding;
 bh=ieVDQROr0WpQSl+Osf89seoCklC5guYKtKJFIEuKJ9c=;
 b=I1CscZCZx6sDhVLfedzRBwfpHPyvUfMOBprTtmsZZg/5W0vYuKsvyUSFYvX+xOofC2
 gjOVc1stWq5/B0uwFtsGvH3GnOQEDJDAevItCdjoR4UrBaDV/8QEzR4Cbyh73HR1qa94
 ly5tudw8mB0NBGc0bBKtKD0xzAwIB7NiYVyu43LCYMfsh/IMQNsJ0dQJHgHc7EXXqIjP
 d4tRWE333PfcjNt/7JxksqIq9CpvHAtZo9UZNrUh723f/ynYunbK+VKrXka9yvc8Ah4W
 VlkoVGZnIFUkjdR9JmbfX3ZP/Wdk2LH9GfxH9yW2GWh8LRLeVL/LDheRFqSI5CyI9Ybi
 f9cw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=ieVDQROr0WpQSl+Osf89seoCklC5guYKtKJFIEuKJ9c=;
 b=MVpXA28kTI4w2Hxx1MGxZVHQ7OOGrHLZZc12GxwLbzfKadPghBIZEi3tpn0LC6+5jo
 hIKwVRIvV0snAJtwhTdXzYXr01DEGDeOdGJ4sLYOpS7y6WvfjY/Vo7lFvKv9b4W9skAT
 FnwBLDaNZCXTZA1ZjNHTz/hJRHFLJN2zzqw5Qb+6/1kG6TNR38yDkoJ1TG1uCGrCJDGX
 U8GrmXgm39fMJ0Vf5qaeXgKBOj3B4lSAl8p+sbwFiLqXHcXzL/Zp1jHf+MgOFDXOnSB5
 Sn2y3IK3BdhmnG22gTS67j1PHkaMvKOsDgt/lyHYf5JD0pZs9CN839mw2g30C61Jap8e
 pVHQ==
X-Gm-Message-State: APjAAAXjJJXqiltPPDFnSMv3l9PljaZ/5acwzGwNrsUpfTX8TOQ5nMz2
 WLVqhtzfR0BZVIHv05Ef1UTEoEMX
X-Google-Smtp-Source: APXvYqxUwopDaSNx9kM5A7drXsgeBuR5iozQ63PYAnsJQfTsV+Qe49QrUEBJKeTQC+FZk/PnYIMslw==
X-Received: by 2002:a2e:868d:: with SMTP id l13mr365736lji.136.1572451312801; 
 Wed, 30 Oct 2019 09:01:52 -0700 (PDT)
Received: from [31.11.183.129] (031011183129.warszawa.vectranet.pl.
 [31.11.183.129])
 by smtp.gmail.com with ESMTPSA id f14sm123174ljn.105.2019.10.30.09.01.51
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Wed, 30 Oct 2019 09:01:52 -0700 (PDT)
To: Adrian Schmutzler <mail@adrianschmutzler.de>,
 openwrt-devel@lists.openwrt.org
References: <00b501d58f2e$a14292e0$e3c7b8a0$@adrianschmutzler.de>
From: Piotr Dymacz <pepe2k@gmail.com>
Message-ID: <73980892-153f-2618-48b2-0882973bd375@gmail.com>
Date: Wed, 30 Oct 2019 17:01:51 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <00b501d58f2e$a14292e0$e3c7b8a0$@adrianschmutzler.de>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191030_090155_172240_8CA70783 
X-CRM114-Status: GOOD (  14.62  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:235 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (pepe2k[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Subject: Re: [OpenWrt-Devel] ath79/qca9533rev2: Help needed on missing GPIO
 on ath9k-phy0
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

Hi Adrian,

On 30.10.2019 15:30, Adrian Schmutzler wrote:
> Hi,
> 
> we are still working on broken WiFi on CPE210v2/v3 (ath79, QCA9533
> rev. 2) and have found that on ath79 a GPIO is missing compared to
> ar71xx (where WIFI is working):

It's not missing, it's there, just not controlled by the ath9k driver. 
There is no separated radio (just the built-in one) on this platform so 
all GPIOs belong to the main SOC and can be controlled with ath79-gpio.

See also:
https://github.com/openwrt/openwrt/commit/d35f2a5565fc51fb277f72a8565c871ce1785588

-- 
Cheers,
Piotr

> 
> GPIO Config on the ar71xx:
> 
> gpiochip0: GPIOs 0-31, parent: platform/ath79-gpio, ath79-gpio: 
> gpio-11  (                    |tp-link:green:lan0  ) out hi gpio-13
> (                    |tp-link:green:link1 ) out hi gpio-14  (
> |tp-link:green:link2 ) out hi gpio-15  (
> |tp-link:green:link3 ) out hi gpio-16  (
> |tp-link:green:link4 ) out hi gpio-17  (                    |Reset
> button        ) in  hi
> 
> gpiochip1: GPIOs 494-511, ath9k-phy0: gpio-495 (
> |ath9k-phy0          ) in  lo
> 
> 
> On the ath79:
> 
> gpio-11  (                    |tp-link:green:lan   ) out lo gpio-13
> (                    |tp-link:green:link1 ) out hi gpio-14  (
> |tp-link:green:link2 ) out hi gpio-15  (
> |tp-link:green:link3 ) out hi gpio-16  (
> |tp-link:green:link4 ) out hi gpio-17  (                    |Reset
> button        ) in  hi
> 
> 
> Can somebody point out how we can introduce the ath9k gpio? Or may
> this be already the result of something broken at an earlier step?
> 
> Best
> 
> Adrian
> 
> 
> _______________________________________________ openwrt-devel mailing
> list openwrt-devel@lists.openwrt.org 
> https://lists.openwrt.org/mailman/listinfo/openwrt-devel
> 


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
