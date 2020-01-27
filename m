Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 85CD914A9BD
	for <lists+openwrt-devel@lfdr.de>; Mon, 27 Jan 2020 19:21:58 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:In-Reply-To:MIME-Version:Date:Message-ID:
	From:References:To:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=6x3144msqi/LY4HFp31V24DMZcfgy9/N9wsOeA0p6zg=; b=V80+0DwMj5AU6RqA8kCTkwRnG
	tDhrzVPlflGnDk06uLGhFVpEMNwb5GSHI+a9omtXcVr6p7CU4HLCxjV+s2u4mn3w06IkRwRsXFDgV
	5KBUVTO9fVZvceX71hyMkmSBZVlE37CGebWI2TlTGce1ns8zCKqtuTtXUireiQDPxeHtslj/M3aA2
	8AnWxptt4EWzOL+bq3VAaRKg79lQuXVoCgtEknK24BHVkio6avw+vZdArjTuAS3o0q43yOyybiq8n
	FuYzQwrBhkae68v3ZxEBvPKnsfpofW78rSEeGUaf1L6tThEmjoC5K4eOCt35PSMOc9SCIiLUuB4sH
	MRyy5qMFw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iw91I-0002tQ-W4; Mon, 27 Jan 2020 18:21:57 +0000
Received: from mail-lf1-x142.google.com ([2a00:1450:4864:20::142])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iw91A-0002sn-IY
 for openwrt-devel@lists.openwrt.org; Mon, 27 Jan 2020 18:21:50 +0000
Received: by mail-lf1-x142.google.com with SMTP id m30so6915580lfp.8
 for <openwrt-devel@lists.openwrt.org>; Mon, 27 Jan 2020 10:21:45 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=j18MeTntjI4j/DSOMtgUICpfyHOVVH0UgbZCYUOW/Ds=;
 b=ULfHDoKMy/BekXQqsZvXAVQfEPw7QK7SCp0pTbD2UPrYKWkUrIl3Q+V8EF4oFZ4zj+
 L7nHW2aXn53e06A7zK5XZknoqS4q/TCFW4udDX6pZtgLMTzVW+LsgEwneURgPBCTkHhi
 GtSKrzrLG+WK0mlFeFDF+Bw+7FEDJNKQkkVJ20L+JRYNQoa+uZ3XCHtZK3pzQbmLJW8j
 L52+R7c142m8UZEyZrLUgcgWquvY9c+lNNq0HaZXNh/wbgQV5BzwR6YObQRoPclj72VU
 okeEYod0UBo68MW2UV2uMqwkpbiO6aYYxuPIjCpMam3RxPWD7mF+0Fccao499C+mNaBC
 uViQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=j18MeTntjI4j/DSOMtgUICpfyHOVVH0UgbZCYUOW/Ds=;
 b=it99LSCWDPncDOfeXkEjg6o+E2fFXK810feabg+9fPaZlZzWfLGyGGc8ICHpAfmPbN
 eK2uKZ7J9btNqP63ODAkJMZmtXPdO9efU9BGXgHeHRyWJilxqaYawbgSRuVgCSMKkD/V
 ok25VcM+p147fovI/jfkRxvp+w7LiKAsiBUgKuYkExkyhqV6S9OXRQP+hTu93S9hU/jQ
 KdNWSpy76Sc57k9GJhRHED4wFRns3fBDtR/p9TwGmPcQxlNwPMcUQ8nZLgjdhxXUjc5s
 nlNhimyn6W1pyVp/dlzUEaR06FJ+Qi4OC7yP/O1PCkmlPWIqROCHCeUSMXqXdvPzTF23
 FKog==
X-Gm-Message-State: APjAAAX+G2jB2fwpAZjSPEwbaUIB1v8yXziR05tg2+TdNCZLrPSUB18N
 zy7GMCw6oqgZnMIRPpKJkQw=
X-Google-Smtp-Source: APXvYqy5OIfokeYrXO/spMCluoqE3R1hHizeiNO7LwXXED66eL5s+ZsEXz24sTAdi0o5W/qveZYW+A==
X-Received: by 2002:a05:6512:15d:: with SMTP id
 m29mr8994668lfo.51.1580149303608; 
 Mon, 27 Jan 2020 10:21:43 -0800 (PST)
Received: from [192.168.55.103] (031011201135.warszawa.vectranet.pl.
 [31.11.201.135])
 by smtp.gmail.com with ESMTPSA id m13sm8560925lfo.40.2020.01.27.10.21.42
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Mon, 27 Jan 2020 10:21:42 -0800 (PST)
To: Adrian Schmutzler <mail@adrianschmutzler.de>, gch981213@gmail.com
References: <020101d563fa$a14539a0$e3cface0$@adrianschmutzler.de>
 <b46a0006-a510-0a59-600c-c31d94093caf@david-bauer.net>
 <003201d56565$33a9b580$9afd2080$@adrianschmutzler.de>
 <d1100196-b9cc-22cb-55d3-5dd6937a9b38@gmail.com>
 <015201d5d064$8f5d96c0$ae18c440$@adrianschmutzler.de>
From: Piotr Dymacz <pepe2k@gmail.com>
Message-ID: <81df4caf-8f04-74a1-dd1c-0beea3fca222@gmail.com>
Date: Mon, 27 Jan 2020 19:21:41 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.4.1
MIME-Version: 1.0
In-Reply-To: <015201d5d064$8f5d96c0$ae18c440$@adrianschmutzler.de>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200127_102148_640065_56B9384B 
X-CRM114-Status: GOOD (  31.00  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [pepe2k[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:142 listed in]
 [list.dnswl.org]
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: openwrt-devel@lists.openwrt.org, ansuelsmth@gmail.com,
 'David Bauer' <mail@david-bauer.net>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

Hi Adrian,

On 21.01.2020 15:10, Adrian Schmutzler wrote:

[...]

>> I'm in the middle of migrating some devices from soon-to-be-obsolete
>> ar71xx to ath79 target and was wondering about status of the eth0/eth1
>> vs. LAN/WAN assignment issue.
> 
> To start with the end: I've decided to stop working on this.
> 
> The two major problems are obvious:
> 1. How to make sure we find every possible location of eth0/eth1 in user code
> 
> This is a problem which can be solved, and if it does not cover every single special case I could live with it.
> 
> 2. How to find out whether we are updating from ar71xx or not.
> 
> This is a hard one: We cannot rely on the ethernet setup itself, as the user might have changed it for whatever reason. We could rely on some other parameters as suggested (wmac path etc.), but that would not be generally applicable and still would impose some boundary conditions (e.g. start before the wmac migration, as then config would be "old" and paths on the device would already be "new", making identification of the update possible).
> 
> An alternative way would be to exploit /etc/board.json for that, given that it is not updated during sysupgrade (I'm not sure what's happening here). If it is not updated, it would give us access to the configuration when the user installed the device, and without the changes the user would have made to /etc/config/network. One could then parse and compare /etc/board.json to some (device-specific) reference (e.g. wan=eth0) and base the decision to apply migration on that. Afterwards, a new /etc/board.json is generated, so the condition is not met anymore. Despite for the device-specific condition, this would also be a generally applicable concept.

IMHO, that would never look like a clean and nice solution and we would 
need to carry it in code for who knows how long (imagine some ar71xx 
board will get migrated after 20.x release).

> All in all, this second problem (when to migrate) is the bigger problem. We also have a similar case in https://github.com/openwrt/openwrt/pull/2649
> 
> So far for the technical aspects. From the organizational point of view, for a long time I thought I'm the only one caring about this topic. Since there was not much interest in bringing this to 19.07 before the release, I do not see much use of adding it afterwards now.

As the 19.07 was released with ar71xx I didn't consider that important 
at the time. Now it's time to consider it as a problem and prepare 
solution _before_ the next release which won't include ar71xx.

> In any case, the migration script will be a complicated task and will certainly introduce cornercases as well. All in all, I do not think it's worth it, and we should keep to advise people to flash with "-n" that single time when upgrading from ar71xx to ath79. For the pros that will change their Ethernet setup by hand later without using "-n", I'd still provide the "easy" migrations like e.g. LED names.

At the very beginning, ath79 was considered as a brand new target 
without _any_ concerns about migration path from ar71xx. But then, 
things got complicated (broken).

Either we support seamless ar71xx -> ath79 migration for _all_ devices 
supported in both targets or we just... don't. There shouldn't be cases 
where user has to check or ask whether owned device can be upgraded with 
preserving settings.

And I really don't consider LED naming migration as important as network 
interfaces naming swap (LED naming convention in upstream got changed 
anyway so we are expecting another change/migration at some point in 
future). Also, LEDs names isn't the only problem, in some cases type of 
trigger has to be changed (e.g. netdev vs. switch).
>> I'm aware of the 8dde11d521 ("ath79: dts: drop "simple-mfd" for gmacs in
>> SoC dtsi") [0] and following changes but that "fixed" the problem only
>> for devices which were following already reversed (I wouldn't call it
>> wrong or incorrect, I also prefer to have LAN on eth0 interface) SOC's
>> GMACx <> ethx assignment/register under ar71xx target - e.g. LAN on eth0
>> which is in fact SOC's GMAC1 and WAN on eth1 which is SOC's GMAC0. Good
>> explanation of that inverted assignment can be found in Jeff's patch
>> here: [1].
> 
> Well, effectively a lot of devices match ar71xx order again, but also several do not match anymore after that.
> 
> For the underlying logic, I think Chuanhong will be the best person to discuss with.

Chuanhong, could you join the discussion?

> I've tried to start a list of devices where eth0/eth1 are swapped compared to ar71xx _now_ here:
> https://openwrt.org/docs/guide-user/installation/ar71xx.to.ath79#devices_with_known_config_changes_without_migration_available

There is easy way to check GMACx <> ethX assignment order in mach-*.c 
files. Just check order of ath79_register_eth() calls:

ath79_register_eth(0);
ath79_register_eth(1);

Will register GMAC0 as eth0, GMAC1 as eth1

ath79_register_eth(1);
ath79_register_eth(0);

Will register GMAC1 as eth0, GMAC0 as eth1 (current ath79 "order")

>> I have a feeling that the idea with migration script got abandoned
>> (Adrian?), so I was wondering if there is any other way we could
>> preserve ar71xx LAN/WAN <> ethX assignment in ath79?
> 
> See above, yes, I effectively abandoned that.

Got it, so alternative solution is required.

>> For example, I have a QCA9531 based device with PHY4 (connected directly
>> to GMAC0) labeled as LAN (and registered as eth0 in kernel) and PHY3
>> (connected to GMAC1 over internal switch) labeled as WAN. On ath79, due
>> to change introduced in 8dde11d521, LAN and WAN order gets swapped (as
>> expected) but partially reverting above change (adding back "simple-mfd"
>> to eth1 in device's DTS, see below) brings back the "old" order of
>> interfaces.
>> 
>> &eth1 {
>> 	compatible = "qca,ar9330-eth", "syscon", "simple-mfd";
>> 	mtd-mac-address = <&art 0x6>;
>> };
>> 
>> But it doesn't seem as a proper fix to me (maybe I'm wrong?) thus the
>> question about any other, better approach?
> 
> That's how I feel. For me, this always looked like a hack to me (based on my shallow level of understanding, though).
> There might be special cases where this is necessary (e.g. force a device to be eth0 due to failsafe), but I still do not like it.

I was considering also aliases in DTSes.

> With the first device where I observed the swapped eth0/eth1, the GLinet AR150, Chuanhong explained me that the setup in ath79 would be more correct than the one in ar71xx.
> After all, if we advise to flash with -n anyway, I would prefer to have the "more correct" setup in ath79 compared to having to stick to the setup from ar71xx where that applies.

It's just semantics. I don't think there is a "more correct" setup here. 
And what's more, there is no single "correct" setup in ar71xx either as 
you could register GMACs in two different orders (see above comment 
about mach-*.c files).

> So, no matter what we do, there is no easy way forward.

We could remove all ar71xx -> ath79 migration helper scripts, ar71xx 
board names from supported devices lists in ath79 images and make the 
target a brand new, without any concerns about soon-to-be obsolete ar71xx ;)

-- 
Cheers,
Piotr

> 
> Best
> 
> Adrian
> 
>> 
>> [0] https://github.com/openwrt/openwrt/commit/8dde11d521
>> [1]
>> https://www.mail-archive.com/openwrt-
>> devel@lists.openwrt.org/msg48526.html
>> 
>> --
>> Cheers,
>> Piotr
>> 
>> 
>> _______________________________________________
>> openwrt-devel mailing list
>> openwrt-devel@lists.openwrt.org
>> https://lists.openwrt.org/mailman/listinfo/openwrt-devel
> 


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
