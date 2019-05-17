Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 89DA921A8F
	for <lists+openwrt-devel@lfdr.de>; Fri, 17 May 2019 17:30:47 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=1piqoyIc5tV6OTbveSUAyh9ujgKQBDjUQT/tLznDYhk=; b=YnB3qZkoeuU5ne
	fZ0LO6SoOYfxvPBTNARnNq/emz8/pJY0f3d4AqlFsVBVYULtUg1EVawTDxYF+Xea1oJKo82W4nxfE
	/xR82FkICu1/8XOhPBprb2i2vwzcqnZ1Z/MRL9enNUaWAbwe/9AEpBjuaNvdMmPDkxfoZ5rL06DgK
	a/BElAz+P9wxJvF9A/dHpxr3XuY+Rl5oRcNPeq9Zgt0jN4ntgEnJscdgoe6e8aT0UuVOouD/6o0R4
	r+Do+UMvjs+rI5IUgMtLuRIiJvNfYtHNx8JUnZDY2VwJZoBn9XvT6O2eRc6GtqZjM68G1truVDNqR
	T3kZty1dDgu+Q+ELmeEg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hReof-0005lF-VS; Fri, 17 May 2019 15:30:38 +0000
Received: from mail-wm1-x343.google.com ([2a00:1450:4864:20::343])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hReoY-0005kn-Cl
 for openwrt-devel@lists.openwrt.org; Fri, 17 May 2019 15:30:31 +0000
Received: by mail-wm1-x343.google.com with SMTP id f204so7372713wme.0
 for <openwrt-devel@lists.openwrt.org>; Fri, 17 May 2019 08:30:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=NXfH6JJ+5f5+SBQR0HYm+JP+5AZPQF6+YVkl3wCuyz0=;
 b=KqNVVPTY6PgDwE74A8x90lfQQ5z5UX4QRqJdyhTUuoMt7oFRqtMlJfU8qBmzEa3Hgl
 ptBOd3W2z6K5/QoACmA9GP+y2RQXEagJt1pW4FoEJkVRxPhmHmY29oSlqK6Ou5/XcepD
 H4DlCgI1+7wzpdTTb5iBSg5KK9vp1TUMVFBHgTGwxR/N18iaDzBjNCFStuRzZzsyOHUg
 PNdfgf2KNu5vq7GijfaAyrXY3a2SCOTVJK6C8Z3OIxyMPZ/ws2Pu1mhROQ0RmoxAoIVS
 syLPTXsJmt1D3ziOg5I9IPzIslzgHMuQwv5JgIrOTWFv3W2Sg1a5ynt/NlRaMMCsF1gN
 qV8A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=NXfH6JJ+5f5+SBQR0HYm+JP+5AZPQF6+YVkl3wCuyz0=;
 b=kINJtdG+cfc3vX26K9YCQj8nmVHliqL7D1EIaifdwnFyHRy8/DAJq2Tajw1wIxc7B8
 k/uksTl1opsFkESiPlVKLOBlN5KceLLzvPuHM39KvN/kyIVRR4kxp011wjZJX0P6FE8y
 cS6uVdJ4bCpm4eDHdgXXCydYznkQN5zAzOEjayPzar0QQYw/nGcrT7eU6uG5FCScOuAl
 3GNHPqZp1LfgZi9K3MTFYfEJ7v4/XO/eiEsSww4Ywq3cm1QzderosoqYz4FK4BWRhfMX
 Zfv+KZZwNjr1bqjJYZQlwv73Dt7e/dbmJohnhhCmFNhlhH/8HLNeXKNnDiNwbJRilOC+
 b8QA==
X-Gm-Message-State: APjAAAVB0Ri2bdX62wOD8NYJmFifctRFyIrNI5mueFSswGbRF2A47zLm
 viisVthFnqh3Pf27fvW33as=
X-Google-Smtp-Source: APXvYqzou4jEg3s1Rt6F52ehVP/yKRhyfViI4NQcGBVBaCgt1I3zphwmUO/dUUSy7d1Xu0B2DJydOA==
X-Received: by 2002:a7b:c3c3:: with SMTP id t3mr31470482wmj.88.1558107028726; 
 Fri, 17 May 2019 08:30:28 -0700 (PDT)
Received: from kontron.lan
 (2001-1ae9-0ff1-f191-915b-387e-1507-33c4.ip6.tmcz.cz.
 [2001:1ae9:ff1:f191:915b:387e:1507:33c4])
 by smtp.gmail.com with ESMTPSA id 6sm12241142wrd.51.2019.05.17.08.30.27
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Fri, 17 May 2019 08:30:27 -0700 (PDT)
To: =?UTF-8?Q?Petr_=c5=a0tetiar?= <ynezz@true.cz>
References: <1675e3e2-da4b-79e9-f9e4-895be7cf7882@gmail.com>
 <20190517102434.GH63920@meh.true.cz>
From: Petr Cvek <petrcvekcz@gmail.com>
Message-ID: <b95234fd-7753-79d7-fa37-0d7f164f2206@gmail.com>
Date: Fri, 17 May 2019 17:31:50 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <20190517102434.GH63920@meh.true.cz>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190517_083030_428662_F01383CD 
X-CRM114-Status: GOOD (  19.81  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:343 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (petrcvekcz[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
Subject: Re: [OpenWrt-Devel] [PATCH v5] kernel: lantiq: add support for SMP
 IRQ routing
X-BeenThere: openwrt-devel@lists.openwrt.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <openwrt-devel.lists.openwrt.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/openwrt-devel>, 
 <mailto:openwrt-devel-request@lists.openwrt.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/openwrt-devel/>
List-Post: <mailto:openwrt-devel@lists.openwrt.org>
List-Help: <mailto:openwrt-devel-request@lists.openwrt.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/openwrt-devel>,
 <mailto:openwrt-devel-request@lists.openwrt.org?subject=subscribe>
Cc: pakahmar@hotmail.com, Hauke Mehrtens <hauke@hauke-m.de>,
 openwrt-devel@lists.openwrt.org
Content-Type: text/plain; charset="iso-8859-2"
Content-Transfer-Encoding: quoted-printable
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

Dne 17. 05. 19 v 12:24 Petr =A9tetiar napsal(a):
> Petr Cvek <petrcvekcz@gmail.com> [2019-05-17 05:44:35]:
> =

> Hi,

Hi,

> =

>> +--- a/arch/mips/lantiq/irq.c	2019-03-10 20:44:58.755134326 +0100
>> ++++ b/arch/mips/lantiq/irq.c	2019-05-17 05:13:50.302149058 +0200
> =

> is there any particular reason this shouldn't go through upstream first?

You mean the linux-next upstream?

Yes definitely.

The patch is changing devicetree files which does not exist in the
current linux-next tree. Without these files I cannot test the rest of
the patch in linux-next.

It also changes the format of the devicetree's register definition and
it is tested only on single VR9 device (there are different VR9 based
modems/routers which doesn't use SMP) and on other platforms with the
same IRQ controller I don't know register adresses (they will be
probably same, but there is always room for complications).

Also there are people who wants to use this now on the current openwrt
kernel, but with vanilla-next they would have to wait for v5.1+ or
backport the patch anyway and it seems my patch is depending on some
other patch in the openwrt which is not yet in the linux-next.

Anyway I can send at least the partial patch to the linux-next if
somebody confirms me the definitions for AR9/danube/falcon/amazon are OK.

The code review for affinity cycling would be nice too (the code looks a
little weird to me as it is a software solution for HW problem, but I've
copied the idea from some vanilla powerpc driver :-D ).

> =

> BTW I'm wondering how to handle your 4 other RFC patches[1] which are
> lingering in the patchwork. Could you please take care of them? Thanks.
> =


These are just RFCs for the HW info as I'm developing the code sort of
blindly (as there is no public technical reference manual for VR9 SoC).
Only other code is the ethernet driver which is in queue, but it sort of
depends on this IRQ patch and is still not finished. After that the rest
of the RFC patches will be obsoleted. Is there some command for the
mailing list with which I can remove them?

best regards
Petr

> 1. https://patchwork.ozlabs.org/project/openwrt/list/?submitter=3D75850
> =

> -- ynezz
> =


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
