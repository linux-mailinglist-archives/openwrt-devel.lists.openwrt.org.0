Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 14D6714CD16
	for <lists+openwrt-devel@lfdr.de>; Wed, 29 Jan 2020 16:18:48 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:In-Reply-To:MIME-Version:Date:Message-ID:
	From:References:To:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=dJdXTJf8Bwc0MrAdxFnyF9beBtojlPk5j+Z6LWF4OeE=; b=gxFsJXJptNUtAgMXojPhm6+kY
	+RefT0oxtCxT551G71ylacvnTKJt1BehMic/gj4ZXJ7GUOSJIdcykN3SH6qo2DjYYz5vcui/OytwS
	XBguj/KzxakQvaUlClCUagFXCBGpTxtFJY/yHjZZ6fEUyQa+/od7hUQVaOyuRjAQszbTYdRN2FUNA
	26dqJBEOL2Zs8cGwq50bNYiJ+VSOTfEbMQJ5jKPUP2qs6PgW24I0qT3LWzdQVZBy9/nRY7tMqwFlI
	OsKnBjtvYy+gYA29qcCJLC0Q7ooby4jV9VvUIGemb1fdmHWwkgxxPxrdg5YlXg3kMf8fRhG4YZsYW
	ZhOSnxd0A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iwp77-0006PC-ND; Wed, 29 Jan 2020 15:18:45 +0000
Received: from mail-lj1-x241.google.com ([2a00:1450:4864:20::241])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iwp6z-0006OM-PN
 for openwrt-devel@lists.openwrt.org; Wed, 29 Jan 2020 15:18:39 +0000
Received: by mail-lj1-x241.google.com with SMTP id h23so18866332ljc.8
 for <openwrt-devel@lists.openwrt.org>; Wed, 29 Jan 2020 07:18:37 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=pepqA/1J6VloNq9X+dywI0hXtugEpaxrEzsLZsxR++4=;
 b=lcxVuMpplCe3dT2ynBb/VJZE7F2Gjdmm6Tm1j81VneRqPt1VIfu8X/RoOk3anBQWGM
 9OqqF596VMoIDVCx9m1E17Cyt/aR2DGNtIh5+ns64mbmUXvUq5Qy5zQ5BvzW8WbIjti9
 X8monNngr8wB8NSPqdA7/bBQJ5W+FAz4/3dTtGoNuu1z3CXGGa8oMT32egLRytGjU5YD
 y8lvd8qd9RM8edKYI4qji9VNX+h3/AF4aXvlhdFT7OfnVRBgVKQausCLRr0u00S50Efe
 YTnnv8eFR47frYtsq9jX6nLdlAzM0e6UN5eM840LAkw4akSThxtg4l/J+KpgOqX4Tbhg
 Y7dA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=pepqA/1J6VloNq9X+dywI0hXtugEpaxrEzsLZsxR++4=;
 b=r+6x0f4jDfnHlzQldleCN1OO3SOJBG5fyDcf+9KXfJ6zoQoT6+hdFeKX6+LCDTD6vb
 jZgxAViLW6Lgbj3RM/8c4T/3aZPHhVkaCyFwjybXYhXYD7uLJf7WlCrcrxyRuO79+yUN
 pEO/qktkfcWNAY9nKP3X+gKELAoDZdOh6lqvJ78vAuiZyNKa5488XJgYx1sSIY/i6TcS
 rIz5qTZtKzPMo8jwFHsJi5OM34rIdfAReRNViBr6vPjneIpl51NTJTkxnc4ZnyI0MfrM
 y+ppJ5Ni3iNEjjyR+++YjvAaApVGuFiyI5s5wCbu2gxqNSnshDrEQkgUtG5BNdCe241Q
 4Ppg==
X-Gm-Message-State: APjAAAUtM9PVTutoAeFQanHpVd/tUF5zM2IzvBdZ/lwV//zq+FZ0tbSy
 d7vUngmnxckRQkxSqRc2+N4=
X-Google-Smtp-Source: APXvYqz/GXej7/1qS49LAV6OdXHyxm9Pcm1kTctdEub5wMh3BSRAwXWyhH77ZteSFpa+BowQbIjrlg==
X-Received: by 2002:a2e:93c5:: with SMTP id p5mr16475353ljh.192.1580311115944; 
 Wed, 29 Jan 2020 07:18:35 -0800 (PST)
Received: from [192.168.55.103] (031011201135.warszawa.vectranet.pl.
 [31.11.201.135])
 by smtp.gmail.com with ESMTPSA id t1sm1171654lji.98.2020.01.29.07.18.34
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Wed, 29 Jan 2020 07:18:35 -0800 (PST)
To: Adrian Schmutzler <mail@adrianschmutzler.de>
References: <020101d563fa$a14539a0$e3cface0$@adrianschmutzler.de>
 <b46a0006-a510-0a59-600c-c31d94093caf@david-bauer.net>
 <003201d56565$33a9b580$9afd2080$@adrianschmutzler.de>
 <d1100196-b9cc-22cb-55d3-5dd6937a9b38@gmail.com>
 <015201d5d064$8f5d96c0$ae18c440$@adrianschmutzler.de>
 <81df4caf-8f04-74a1-dd1c-0beea3fca222@gmail.com>
 <00c201d5d5f3$ec9b5630$c5d20290$@adrianschmutzler.de>
From: Piotr Dymacz <pepe2k@gmail.com>
Message-ID: <543fab1e-e112-f643-32bb-e8aece69d9ac@gmail.com>
Date: Wed, 29 Jan 2020 16:18:34 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.4.1
MIME-Version: 1.0
In-Reply-To: <00c201d5d5f3$ec9b5630$c5d20290$@adrianschmutzler.de>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200129_071837_847308_CDDDB416 
X-CRM114-Status: GOOD (  22.40  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:241 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [pepe2k[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
Subject: Re: [OpenWrt-Devel] Migration in ath79 for swapped ethernet
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
Cc: openwrt-devel@lists.openwrt.org, gch981213@gmail.com, ansuelsmth@gmail.com,
 'David Bauer' <mail@david-bauer.net>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

Hi Adrian,

On 28.01.2020 16:59, Adrian Schmutzler wrote:
> Hi,
> 
>> There is easy way to check GMACx <> ethX assignment order in mach-*.c
>> files. Just check order of ath79_register_eth() calls:
>> 
>> ath79_register_eth(0);
>> ath79_register_eth(1);
>> 
>> Will register GMAC0 as eth0, GMAC1 as eth1
>> 
>> ath79_register_eth(1);
>> ath79_register_eth(0);
>> 
>> Will register GMAC1 as eth0, GMAC0 as eth1 (current ath79 "order")
> 
> I thought that once as well, but then found several cases where I couldn't rely
> on it for eth0/eth1 order on running device. (But it's too long ago for me to be
> more specific.)

There are two things here:
1. Mapping of physical ports to kernel interface naming.
2. Mapping of kernel interfaces to 'our' LAN/WAN system interfaces.

AFAIK, there wasn't any official or general rule about what should be 
LAN and WAN (in terms of mapping ethX to 'our' LAN/WAN), so it was 
always up to the device support author (personally I preferred to have 
LAN on eth0). And as you can see above, ar71xx allowed two different 
orders in which ethX interfaces where registered in kernel.

> Despite, from what I understand our current problem is the driver implementation
> in ath79, which needs to skip/delay initialization in certain cases.
> So, it's not so much about finding out the situation on ar71xx, but
> understanding the situation in ath79 as well. All-in-all, I think this will come
> down to having to check each device manually.

More or less, yes.

>> >> I have a feeling that the idea with migration script got abandoned
>> >> (Adrian?), so I was wondering if there is any other way we could
>> >> preserve ar71xx LAN/WAN <> ethX assignment in ath79?
>> >
>> > See above, yes, I effectively abandoned that.
>> 
>> Got it, so alternative solution is required.
>> 
>> >> For example, I have a QCA9531 based device with PHY4 (connected directly
>> >> to GMAC0) labeled as LAN (and registered as eth0 in kernel) and PHY3
>> >> (connected to GMAC1 over internal switch) labeled as WAN. On ath79, due
>> >> to change introduced in 8dde11d521, LAN and WAN order gets swapped (as
>> >> expected) but partially reverting above change (adding back "simple-mfd"
>> >> to eth1 in device's DTS, see below) brings back the "old" order of
>> >> interfaces.
>> >>
>> >> &eth1 {
>> >> 	compatible = "qca,ar9330-eth", "syscon", "simple-mfd";
>> >> 	mtd-mac-address = <&art 0x6>;
>> >> };
>> >>
>> >> But it doesn't seem as a proper fix to me (maybe I'm wrong?) thus the
>> >> question about any other, better approach?
>> >
>> > That's how I feel. For me, this always looked like a hack to me (based on my
>> shallow level of understanding, though).
>> > There might be special cases where this is necessary (e.g. force a device to
> be
>> eth0 due to failsafe), but I still do not like it.
>> 
>> I was considering also aliases in DTSes.
> 
> One could use that for failsafe (actually quite an interesting idea) and for
> specifying the corresponding ethX in ar71xx. However, this still won't help us
> with the migration script itself.

Lets forget about migration scripts now and try to find a way to keep 
old interfaces mapping in ar71xx the same in ath79, using DTS only.
As I wrote already, it's just semantics.

-- 
Cheers,
Piotr

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
