Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 299A467F42
	for <lists+openwrt-devel@lfdr.de>; Sun, 14 Jul 2019 16:22:28 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:In-Reply-To:MIME-Version:Date:Message-ID:
	From:References:To:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=jZWag4LzppPXYemfc1q8mkcCfSwlqZK0jONxFtwXT/I=; b=RGD3X+38IWrRXc/pBD4JyAF00
	Z7ZaqenqFsgugqlmiW5mDXWkv0hquLubFwQvogi+VjtC7tvXwX2BvlJfoMCqnyk+fTrkSXjSbYg9g
	4BRiKGfSzsEKUKLwg7wnkQ5vx5FellWPqNNtc+i/ARNLxVICb6b+rlqLWQLyGjZumKnVKUdw6tH4F
	NVocMhFoK2B86HegnxhXitmZqvhRSPoYC70Onb6csI0MxGRIoUllN4jDQeszPxdofWmHminvrlL1m
	r7drKMkFs0MtxxeX3/YTVt4XhI9QXTCkKTtkXOV+xpyrpjFzX/gL8RH6db3PGgKWZnduu6L2+p0Uk
	6AXx8htFw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hmfOD-0005Av-L5; Sun, 14 Jul 2019 14:22:09 +0000
Received: from mail-lf1-x142.google.com ([2a00:1450:4864:20::142])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hmfO3-0005A9-SL
 for openwrt-devel@lists.openwrt.org; Sun, 14 Jul 2019 14:22:01 +0000
Received: by mail-lf1-x142.google.com with SMTP id z15so5000752lfh.13
 for <openwrt-devel@lists.openwrt.org>; Sun, 14 Jul 2019 07:21:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=4CPC5Fx1+6w0py5olKs1FozxwK+JZqGxpbwDmFGh9iw=;
 b=ZmcBqGFBxKOSwllKgkwqL/acPBAd+ULzj5QlRlJVTiqlcPEUwszapCZHxCx0pEALGK
 ykCpwetovB+Guh9F4AUdx6pBvA/1SAfS3dwMWOjS13b7+PLv4OKuoKdjHuxFboD7zJ8O
 ay/WBdeezl+S0OB4i+sAZ6OmV70qPA6NKdYdHl8EXMICuACt+xP6DBWlIVIYLyvyJRMl
 P/ZVbSEroJj/QX8zGE63dm54JvBQDcGWMGnxQfQAfJMQviBvMkLoILxsvLtLLMmcTrrA
 MlAArengnpOm6Lxq7NkydO6KqK8JRmdpePMaILhz91bRciygIwN7hp8o6y4HSaWr9Hd0
 4rqA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=4CPC5Fx1+6w0py5olKs1FozxwK+JZqGxpbwDmFGh9iw=;
 b=QwWll88giLgt5btDk+cVAcEsCiOAYdjOjjqSNT8CmsxjWHm9rjDVSwEts09q3fONjx
 AekZOwazdo/647oIYDKyrJ9JkZZtVd6RMRwIoVEA6ASuA1l91fSToQO6i2SNHdzfHmnO
 WrU+Q9LbCcHcvC4u4StR2ssWJWGXOPsb3KeHlYYHFMaMqhEwKnfhXI+aVFZM0aKePZW1
 p63lMuLSKfy4X10s6MSgssf0LAc/Hg+pUSkkS0nbOHiYs77Lj14rctOE3tGu8+dsQ4Ya
 Q5cdgn0kiKPuwzUqUvtWdNvS+xo+UvXQfUjciGpI/6VMMbdKm+moLgwp7Pb11Gc07twi
 BORg==
X-Gm-Message-State: APjAAAUC5/1R/oJK4I5HwEQTLV4S25mSSmADr0o4d2cOELUfPW57pdZa
 IXwRcWFnpDjO9jnjFvwnbEsKsEmrhjI=
X-Google-Smtp-Source: APXvYqz7vKG8qms1WyBhGIlmoS7T4FWv/B1MSrqgN6wkUxpCEuXa0FoAKkb/JIHNBv6ltD+j9I/xvg==
X-Received: by 2002:a19:5f58:: with SMTP id a24mr8701833lfj.111.1563114115573; 
 Sun, 14 Jul 2019 07:21:55 -0700 (PDT)
Received: from [192.168.211.2] ([91.238.216.4])
 by smtp.gmail.com with ESMTPSA id p15sm2624643lji.80.2019.07.14.07.21.54
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Sun, 14 Jul 2019 07:21:54 -0700 (PDT)
To: Linus Walleij <linus.walleij@linaro.org>,
 Florian Fainelli <f.fainelli@gmail.com>
References: <20190712060734.9824-1-linus.walleij@linaro.org>
 <0fec8249-aae5-55b3-4bb7-4b83d829842d@hauke-m.de>
 <CACRpkdYWfrcAAvzOMvN6gq5rp6vE-Ot3RvwDJ3LPyHGs5zeCMw@mail.gmail.com>
 <c6151d84-a5c0-805e-c02c-6b0fa3f9a25f@gmail.com>
 <CACRpkdZnupszv8kSZD015KxGayF1W+zC0s2jNPXQKVp4O4LP3g@mail.gmail.com>
From: Pawel Dembicki <paweldembicki@gmail.com>
Message-ID: <b6533dea-4db8-3f4c-1fe9-b5d854d87cd2@gmail.com>
Date: Sun, 14 Jul 2019 16:21:53 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.2
MIME-Version: 1.0
In-Reply-To: <CACRpkdZnupszv8kSZD015KxGayF1W+zC0s2jNPXQKVp4O4LP3g@mail.gmail.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190714_072159_942977_9384DDEE 
X-CRM114-Status: GOOD (  16.15  )
X-Spam-Score: 1.3 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:142 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (paweldembicki[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 1.5 RCVD_IN_SORBS_WEB      RBL: SORBS: sender is an abusable web server
 [91.238.216.4 listed in dnsbl.sorbs.net]
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Subject: Re: [OpenWrt-Devel] [PATCH] gemini: Bring up DSA switches
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
Cc: Adrian Alonso <aalonso@freescale.com>,
 Christian Lamparter <chunkeey@gmail.com>, Roman Yeryomin <roman@advem.lv>,
 Hauke Mehrtens <hauke@hauke-m.de>, Hans Ulli Kroll <ulli.kroll@googlemail.com>,
 Sebastian Luft <sebastian.luft@gmail.com>,
 OpenWrt Development List <openwrt-devel@lists.openwrt.org>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

Hi Linus,

I work with P2020RDB and I stucked at the same problem.

On 14.07.2019 12:04, Linus Walleij wrote:
> On Sat, Jul 13, 2019 at 10:38 PM Florian Fainelli <f.fainelli@gmail.com> wrote:
> 
> I really tried to figure out a way to get both the Vitesse and Realtek
> switches to do internal tagging but they just don't.
> 

I'm afraid, that You have right.

> The Vitesse switches can do VLAN but I just haven't implemented
> it yet, but now that Adrian is using it on a Freescale board as well
> I might get to it as we have some more users.
> 

I plan to make support for VLAN filtering for this switch. Maybe we can 
work together?

> There are some patches to the kernel do do port separation using
> only VLAN (by Vladimir Oltean) but of course I have to implement
> VLAN first if I want to try to use that.
> 

I see three possible solutions for port separation after VLAN support:

1. Use this only:
https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/tree/Documentation/networking/dsa/configuration.rst#n211
2. Use 8021q tag based solution.
3. Use tag_8021q tag based solution and try to use VLAN_KEEP_TAG_ENA for 
dual vlan tagging.


Best Regards,
Pawel Dembicki

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
