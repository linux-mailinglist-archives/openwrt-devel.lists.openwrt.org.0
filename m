Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BC7D5A9C2E
	for <lists+openwrt-devel@lfdr.de>; Thu,  5 Sep 2019 09:49:43 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:MIME-Version:References:Message-ID:
	In-Reply-To:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=W997hqRlVpW8LJF26iETKH4Pv27gTys9v7d4uoTQ5xw=; b=WVHfAXvtsaTa8sEZOLQjk2bne
	GABTfdCfpSZGuumkYNNZxxiE/ZOymStEyco5/C/1cbuSDmYrAQJAzPNIHti245jSTaJNO4Zj7g7rV
	+AQAydFtCUeXA5tIxLXxKScbB3Z6vsZ1UsoeocrZDrq/MbTxGv8j0hs6Bn7VZ4lizbepg3C1U5fzj
	zE4H/ZEY/R2a2xvF7WMhONi5FkVzTKNxUteD/J1/EyWA1TBxkAUaRKf2bZfhRM9Cq+lvxUC+gF/0k
	UhyW/LrIq5xiYSMYelVqXSr+CyaqGL+H2dyAF0qdGlJRlBGmE+UORm94kPlW2n9cQcGe42KiTQiSN
	wt4scEmig==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i5mWL-00030O-7b; Thu, 05 Sep 2019 07:49:34 +0000
Received: from mail-wm1-x329.google.com ([2a00:1450:4864:20::329])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i5mW4-0002zr-By
 for openwrt-devel@lists.openwrt.org; Thu, 05 Sep 2019 07:49:17 +0000
Received: by mail-wm1-x329.google.com with SMTP id n10so1656456wmj.0
 for <openwrt-devel@lists.openwrt.org>; Thu, 05 Sep 2019 00:49:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:in-reply-to:message-id:references
 :mime-version; bh=bueaSqB8GefoTuLzq66XTUOE/KvVCwTDZZ4jqC9zzQQ=;
 b=GhE8Tjg5ap+2Ng99KHMdRl2g0ClkE60n8pYtg13xDlhMR/2f8Szj801JSLoZS7kevc
 UqFJZT9zhDxgEzMUwEycO+C0Vbbs2Py4uhd1TL0NzfDejTmCxpvRL0zng/lE10h0r84X
 Tz5XA9duSEQTUg9R/8ob+HHVtQhJiHwZuOdqHBylCIr6j9OfeIoFz5H3CfbbaXdwpzIT
 BIE8YO6Cg8ZB71K9XDqD1Kzc6vj3ZhroU9DQlFZXi2j1eCehNX1YjfQs1G2vnISsIpAX
 gc0/CTCxJ+JEa0kDGZPMw1LupHP8VrOYT/ilvusEHcocGgBCU8M3rKVa+erBLU1Wjd67
 9y4Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:in-reply-to:message-id
 :references:mime-version;
 bh=bueaSqB8GefoTuLzq66XTUOE/KvVCwTDZZ4jqC9zzQQ=;
 b=r1xCIIXcotbcrtCsZobKoCBG9/wsoWKRt4cizTCrvblFrMv4cDezzs4oE1NLypBftN
 HREtJ+7/ToD8yEBeJt6QSi6b/CL0WLDNEQ7liy5RhOUNPh32vDo/DakxzmAVyTaJdjXc
 hNvjYNBdzX5WsKbeDtrTQ9ZxtW8sU5G4VH0cywN3wtwLytF310rwaUnoTJDdzmpcQpAK
 xLpOuwDbtTXPorTy0Ct6rwI3chFhw7zHISksxEjdYEwTW9HXireNC4+TZ6SROO7Uqnmz
 fenWzKDDeQgFoNNEFGD8W+9uqsauQ/NqvfZh0owV/yNGlxB2qjE3b6/uAWfOSlFDsPAy
 /k/w==
X-Gm-Message-State: APjAAAVFZz7Q8QU1D1fZAt1foU/EVl/TSmZGvSWzGipKk2HbHhg3GINt
 gAq+8s7ExSf+3pCl5L35lJ0=
X-Google-Smtp-Source: APXvYqwzGDxSy166/4R4cr+N2eAwe9tBrYG8tHYBqlgIcDtkBRvwbpyKoQmXPijiGhYn68AWbUuNVA==
X-Received: by 2002:a1c:be19:: with SMTP id o25mr1659699wmf.54.1567669754951; 
 Thu, 05 Sep 2019 00:49:14 -0700 (PDT)
Received: from localhost.localdomain
 (host111-46-dynamic.5-87-r.retail.telecomitalia.it. [87.5.46.111])
 by smtp.gmail.com with ESMTPSA id g24sm1916432wrb.35.2019.09.05.00.49.13
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 05 Sep 2019 00:49:14 -0700 (PDT)
Received: from localhost (localhost [127.0.0.1])
 by localhost.localdomain (OpenSMTPD) with ESMTP id 4ef64271;
 Thu, 5 Sep 2019 07:49:12 +0000 (UTC)
Date: Thu, 5 Sep 2019 09:49:12 +0200 (CEST)
From: Enrico Mioso <mrkiko.rs@gmail.com>
X-X-Sender: mrkiko@localhost.localdomain
To: Mathias Kresin <dev@kresin.me>
In-Reply-To: <0d225f83-97ae-d3b3-4f56-9803f9b4f80f@kresin.me>
Message-ID: <alpine.LNX.2.21.99999.352.1909050946390.15086@localhost.localdomain>
References: <alpine.LNX.2.21.99999.352.1909020530360.2689@localhost.localdomain>
 <alpine.LNX.2.21.99999.352.1909020624220.2925@localhost.localdomain>
 <919fe9ff-bdf6-e3a4-1dfc-ca53284b5986@hauke-m.de>
 <alpine.LNX.2.21.99999.352.1909041159540.3532@localhost.localdomain>
 <0d225f83-97ae-d3b3-4f56-9803f9b4f80f@kresin.me>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190905_004916_435706_01B4CAC6 
X-CRM114-Status: UNSURE (   7.48  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 2.0 (++)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (2.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:329 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (mrkiko.rs[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 2.2 MALFORMED_FREEMAIL     Bad headers on message from free email
 service
Subject: Re: [OpenWrt-Devel] AR10 GPHYs (WAS: Re: [lantiq] general help on
 AR10 platform)
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
Cc: Hauke Mehrtens <hauke@hauke-m.de>, openwrt-devel@lists.openwrt.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org




On Thu, 5 Sep 2019, Mathias Kresin wrote:
...

>> In sysctrl.c, we have:
>> clkdev_add_pmu("1f203020.gphy", NULL, 1, 0, PMU_GPHY); // OK for GPHY0
>> clkdev_add_pmu("1f203068.gphy", NULL, 1, 0, PMU_GPHY); //problem for GPHY1

> The first parameter of clkdev_add_pmu doesn't match your dts. It has to be 
> "1f203058.gphy"
>
> Regards
> Mathias
>
thank you very much Mathias.
Yeah - infact I did this change, resulting in the first two GPHYs initializing, while the one at "1f2030ac.gphy" had more issues - and kernel oopsed.
So I was thinking the logic was wrong. I'll look at it again.

Enrico

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
