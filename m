Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 18430121BAE
	for <lists+openwrt-devel@lfdr.de>; Mon, 16 Dec 2019 22:26:15 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:In-Reply-To:MIME-Version:Date:Message-ID:
	From:References:To:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=78t0pgoun54DEUWkh5PhJ9F/hUwTsh8ArkLSQDI8Bnc=; b=CJcxQdpRNFiY4qXE2MXd6q1F1
	SQshL5Ct2fpAunuhcdN0UOtnp1yXlrIihcpF/q3zFryk90IX+AMhQFW/hdUrGIMwRd5P3PUHxjJpj
	cS1yp+eZQZ60ombGV6vqFE5TNifUWH3JYA+c6kDeSgqhyz9m0pNueYY0awjluM3ewM+xEJCd9jiy1
	TqmfRBMsdj0Adn0n3kXiB/lcLkjBV5jPMuYGtyRG607LEwdZ0PGqpTY+hFcyZB2J5xtD/vM+UKU5u
	74T17DiM2ePAqKL0xopgn8ArhPvnigXv/hkJy+JuZ7IQkoQaqyWMpF43ttIp7I3rxFTb2q34ywCSG
	tYPE8aeRw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1igxsK-0004E1-8Y; Mon, 16 Dec 2019 21:25:56 +0000
Received: from mail-wr1-x441.google.com ([2a00:1450:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1igxsD-0004DZ-7r
 for openwrt-devel@lists.openwrt.org; Mon, 16 Dec 2019 21:25:51 +0000
Received: by mail-wr1-x441.google.com with SMTP id t2so9062445wrr.1
 for <openwrt-devel@lists.openwrt.org>; Mon, 16 Dec 2019 13:25:48 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=PFAox/ugJuc67Ih3g4dnpR93dDW73+a2U0Pp5enLdaY=;
 b=EhYVQT4jO1F3oQRETtWy9wHyLd9aah4sT//wWTT70AJRvM49hZUmwEOjDeOuh04hrY
 8z/LM2BbF8B1giiioqg3N81O8dyTrK1GREIobmC+7AwecAeKnekGjve3ovw2uhTbRz+m
 n9M4ejink0uqNYg+W1OOTZ+dkb2kUTEid3FLH2/+diOwC6W7qhSNSZNhVGl8qxQUUwck
 KmyX34VPmrHLrnPgNO1SY8N8mTBbbw1qaNCLxYJHt7ciZ7+VGzt+2XISxZDcZ/ZXnmtI
 l3tXMGqvTnLBlOtO2WsHL7kfESujIZnQhoKhPrwbDtUlUsRkYly95q7cBpWkvOzznEh1
 TFhQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=PFAox/ugJuc67Ih3g4dnpR93dDW73+a2U0Pp5enLdaY=;
 b=c49ajSodzvNAwxCG8ai1cxFrA2hIwUQwS/2BQFPEjBDab/5H2jI3UvFlKxhqcVXLFU
 9UP0yK6r02ESj3tY81PrKFCIkT+ONh7nHJ5/e06IQ5pKfxVNFxwBRq+OQrTHkOddwUZm
 zYo6Uu39GBYltquZJPcR/UhG7jLOyg+Upw5QrJGcTbBsRTXVYwa4j/A2BgJhMMemDhyS
 1daA9HvP/0toY12nnsYfgC4aJi18lioDOCQWqp5IH/G3zUUTyNovP+BvpyCfzuTBsjDW
 aqLfXl3axxR0JWcy23EvQpR10qmaNpyaR1aNOANPDqJ97rsdibsL/NJUUztoVb+FXE13
 JZSA==
X-Gm-Message-State: APjAAAXPzJ3gBT3ozVYy4kqQ2tYuqJTt364CvgjeenDjmi57W4R6nkOp
 vfbFdlY8LM9jm3EsbRZ5fooileaFjV5HSw==
X-Google-Smtp-Source: APXvYqygbZKYW/oQN2e37VUnXwjK/KySpesHN5Gs2iUZPje9KgoHrpseASPYz2EdVw9ngrWc7Jq59Q==
X-Received: by 2002:adf:bc4f:: with SMTP id a15mr32783640wrh.160.1576531547139; 
 Mon, 16 Dec 2019 13:25:47 -0800 (PST)
Received: from [192.168.1.230] ([134.90.239.71])
 by smtp.gmail.com with ESMTPSA id z6sm24315049wrw.36.2019.12.16.13.25.45
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Mon, 16 Dec 2019 13:25:46 -0800 (PST)
To: Christian Lamparter <chunkeey@gmail.com>
References: <4c10fab6-2a90-ea0b-8176-314638e1cb06@hauke-m.de>
 <5675304.dXXkMWVoIb@debian64> <20191215120114.GD11070@home.paul.comp>
 <4186246.Rc2P9gcx8s@debian64>
 <a8f56a23-108f-3f76-2ea3-a904726ed224@gmail.com>
 <CAAd0S9BT1y2F7tEXp720u4xx_3Xry0uZnyvaOExH-85X7ctyjg@mail.gmail.com>
From: Alberto Bursi <bobafetthotmail@gmail.com>
Message-ID: <c073338d-eea5-36f2-1fed-62f40613855b@gmail.com>
Date: Mon, 16 Dec 2019 22:25:43 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.3.0
MIME-Version: 1.0
In-Reply-To: <CAAd0S9BT1y2F7tEXp720u4xx_3Xry0uZnyvaOExH-85X7ctyjg@mail.gmail.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191216_132549_277869_AE76357D 
X-CRM114-Status: GOOD (  18.18  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:441 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (bobafetthotmail[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Subject: Re: [OpenWrt-Devel] [PATCH] kernel: ath10k-ct: provide a build
 variant for small RAM devices
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
Cc: OpenWrt Development List <openwrt-devel@lists.openwrt.org>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org



On 16/12/19 21:04, Christian Lamparter wrote:
> Hello,
> 
> On Mon, Dec 16, 2019 at 12:27 PM Alberto Bursi
> <bobafetthotmail@gmail.com> wrote:
>>
>>
>> On 15/12/19 14:09, Christian Lamparter wrote:
>>>
>>> But it seems that Ben had a change of heart in this regard. I don't know the
>>> details or why, But it makes sense because it would enable his company to save
>>> some money for the systems his company sells:
>>>    <https://www.candelatech.com/lf_systems.php> so there is some value
>>> in supporting these devices, especially if someone else does all the work
>>> for it.
>>
>> These are wifi/network testing equipment, not network devices.
>>
>> Also I don't see the value in "saving some money" by using a bit less RAM
>>
>> when the cheaper system is sold for 3k, and most stuff is above 10k.
>>
>> You could use standard whitebox x86 stuff at that price point.
> 
> I'm glad this is getting some attention and others are chiming in. But
> let me tell
> you first, that I'm not an opponent of the "American way", I'm trying
> to make sense
> of it though and also what would happen to the ath10k GPIO patches that got
> quietly dropped from your reply there...
I was just commenting about the fact that they clearly don't care about 
RAM consumption for their own hardware, I found it strange that you 
pulled that up as a "potential way to save money".

Saving 10-20$ (RAM prices) on a low-volume high-price item costing 
thousands of dollars is mostly irrelevant.

> 
> As for the "These are wifi/network testing equipment, not network devices."
> True and If you are interested you can buy cheaper devices like
> <https://www.candelatech.com/ct314_product.php> from the company as well:
> 

When I said "expensive devices" I was talking of their devices that 
could mount a ath10k-supported card. A Raspi really does not.

> 
> I know these have not much to do with the issue at hand ("low-memory system"
> support in ath10k(-ct) with OpenWrt). But as Ben explained in the follow-up that
> he has a keen interest for supporting the ath10k-ct driver+firmware
> and he's doing
> a great job with the ath10k-ct issue tracker.
> 

I fully agree with merging and possibly upstreaming the current patches 
about a build option to reduce buffer sizes so that this thing does not 
OOM on devices that OpenWrt supports.

My remarks about RAM usage being irrelevant was specifc to their own 
usecase in their "expensive test equipment".

-Alberto

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
