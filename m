Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A95B111F7E8
	for <lists+openwrt-devel@lfdr.de>; Sun, 15 Dec 2019 14:10:16 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:References:
	In-Reply-To:Message-ID:Date:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/OHMyel9/DEFgoRzUHmc1QvPji90ZqUUziLetUKiH/E=; b=VhAuW0aDkVFE4+
	jfVe0Xl6Yu+Zp9HefP16MbUBW28forGcI2d53coMbiHfh+TnKJOVYg3unYBh4pJTY81ZIYe6FD8AT
	sx1sH0SqbeYNj/U6KBRr011GbhIWLzyBlVwc/DQ8nGBOxJUQRnjzjc6RrcDcE9ldkvALleMQkiNZj
	RjZYJOxmcH4Ai1knPQcwjZPMRoPTvTru4OQZjdWhWWcklh0sOQBoEq3SVXpLJYE6eQvVgxdLBYPfX
	69t88M3I2oTydM+oxvK+xKC6ZLQa0NVTRQq+VJ1nkW7S3gof9CsD3qeUrMHOEPHaLUrW7e5iMlmZz
	km4DzExES2MdBLfkb8HA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1igTep-00080t-AQ; Sun, 15 Dec 2019 13:09:59 +0000
Received: from mail-wr1-x444.google.com ([2a00:1450:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1igTef-00080K-2b
 for openwrt-devel@lists.openwrt.org; Sun, 15 Dec 2019 13:09:50 +0000
Received: by mail-wr1-x444.google.com with SMTP id b6so3954728wrq.0
 for <openwrt-devel@lists.openwrt.org>; Sun, 15 Dec 2019 05:09:46 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=ZZdcHKQAxl2ZRShV+1/9DNGJ7hVGASWZ6QcHpZY4FDM=;
 b=IJqZX0JwIcefIBetoD/bbeHgFAH8Jiv862vCupymjCF+1z4MTLWTupUIBM+FFknbW4
 JEnZDo+0vLDaJ/aatsh4sh4Gnm0vdrwxhle4Vbey2kQ5KsnKt+GRaIYaj42eBMb25D4H
 M+TDabvfFKagt4o7CQIgtsS4qgUxbjrJeMjuyBu4LKzqk+J8hbh9Zb9ggY+xw96gegFV
 YJOnbwq/RA/R9iSRsM6lXd9ERwqjW7jqlr9QTpvDuZ1BHzXZA2JOZjW7LnAOoF/s7HQL
 zzrl0y3TtGF+f8DN7OkzF09mzw1VK15FLWDS66Dxjdjx8ty3aSZbrEtz2nYfah2YMl9d
 DnWg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=ZZdcHKQAxl2ZRShV+1/9DNGJ7hVGASWZ6QcHpZY4FDM=;
 b=crMaLz/tP1yRwCoFbVOwhG+8BnhDwcEhCcy0bCOoN9qDLHZbLP+mWNddK7uKUYAJHy
 ULkYDz1S3tNNfYwA+zoLZ8Uh/EKvTUIFma/MsmbO5AcySI+UZMjXUebkVQ1lX6D7qWTl
 FPM7up1Ym/kOxpLsUSKIprkuw4Cj+HUpbA9US6piGxlknVnu4484T/2mB1dOBKjfIa0h
 Ck8rYbdQpadOnzcgevSzTjWPZi2l/cNV4eq/r9J7PvFoNlYo2DcJOFgNZm4cjc0KpVO/
 rplmbx8BT6Bf97koytBjunNA/QRBeTVemcw23CHhxiN/4r4Grr17Tckd+cxJxjrDagHe
 loGw==
X-Gm-Message-State: APjAAAUxkP9ninN/rS1HEEQgfmR2bsLb+7TUK5pY5gu1RetGnbDXZyyo
 scTRZV9exrBbiO1p65mIL/A=
X-Google-Smtp-Source: APXvYqz44sZN1p8jo5hTsEYzvXR0Kt7LqAcxqMWdv+yK2r+meMyHBG9ofpOU5QxHCp6VkyV0wnf6Xg==
X-Received: by 2002:adf:f1cb:: with SMTP id z11mr24014933wro.375.1576415385072; 
 Sun, 15 Dec 2019 05:09:45 -0800 (PST)
Received: from debian64.daheim (pD9E29F10.dip0.t-ipconnect.de.
 [217.226.159.16])
 by smtp.gmail.com with ESMTPSA id t81sm17342229wmg.6.2019.12.15.05.09.43
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 15 Dec 2019 05:09:43 -0800 (PST)
Received: from localhost.daheim ([127.0.0.1] helo=debian64.localnet)
 by debian64.daheim with esmtp (Exim 4.93)
 (envelope-from <chunkeey@gmail.com>)
 id 1igTeZ-0003JI-E6; Sun, 15 Dec 2019 14:09:43 +0100
From: Christian Lamparter <chunkeey@gmail.com>
To: Paul Fertser <fercerpav@gmail.com>
Date: Sun, 15 Dec 2019 14:09:43 +0100
Message-ID: <4186246.Rc2P9gcx8s@debian64>
In-Reply-To: <20191215120114.GD11070@home.paul.comp>
References: <4c10fab6-2a90-ea0b-8176-314638e1cb06@hauke-m.de>
 <5675304.dXXkMWVoIb@debian64> <20191215120114.GD11070@home.paul.comp>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191215_050949_147504_C2463B43 
X-CRM114-Status: GOOD (  18.68  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:444 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (chunkeey[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Hauke Mehrtens <hauke@hauke-m.de>, Ben Greear <greearb@candelatech.com>,
 openwrt-devel@lists.openwrt.org, Petr =?utf-8?B?xaB0ZXRpYXI=?= <ynezz@true.cz>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

On Sunday, 15 December 2019 13:01:14 CET Paul Fertser wrote:
> Thank you for the answer Christian,
> 
> On Sun, Dec 15, 2019 at 12:00:48PM +0100, Christian Lamparter wrote:
> > I think for this to have any chance of moving forward you'll need to
> > pressure your ODMs and if that doesn't work: Go with a different WIFI
> > chip vendor that supports low memory devices, or add more RAM.
> > From what I can tell, Qualcomm nowadays gets what they want "for free"
> > and for the past four-five years, they certainly didn't feel pressured
> > to add "low memory" support to ath10k.
> 
> FWIW, OpenWrt's ath10k vendor is CT now, not QCA, so it's not much
> relevant what do ODMs and (whatever is left from) QCA say, I guess.
Well, not sure what you are trying to say here. But I think Ben is free
to do what he wants as well. For example see the:
"ath10k: add LED and GPIO controlling support for various chipsets"
patch that OpenWrt has been carrying because neither upstream (linux-wireless)
nor CT wants to integrate it.
<https://github.com/openwrt/openwrt/blob/master/package/kernel/ath10k-ct/patches/201-ath10k-4.16_add-LED-and-GPIO-controlling-support-for-various-chipsets.patch>

The situation with the "low memory" support wasn't much better. Because
from what I remember, there was a discussion about this very topic between
Ben an Hauke in the past (and you can see how it played out, since you wouldn't
have posted this series if it was integrated back then). 
But it seems that Ben had a change of heart in this regard. I don't know the
details or why, But it makes sense because it would enable his company to save
some money for the systems his company sells:
 <https://www.candelatech.com/lf_systems.php> so there is some value
in supporting these devices, especially if someone else does all the work 
for it.

> It would be kind of weird to force OpenWrt users of certain devices to
> downgrade to upstream ath10k (or to abandon hardware that is working
> fine for them with previous OpenWrt release) just because Atheros no
> longer exist and Qualcomm can't care less about free software
> community, don't you think so?
This is something like "another" 32/4 situation, right? Well, can you tell
me what was the result of that?

> I'll try to find the mailing list posts you're talking about to help
> Ben decide if he is still OK with those patches getting used on
> low-RAM devices in OpenWrt or not.
Well, if you look at ath10k-ct (<https://github.com/greearb/ath10k-ct>),
you see that Ben takes upstream ath10k, adds his patches and pulls upstream
fixes. So if you are willing to work for it anyways, you might as well go
with upstream Linux-wireless and see what they want. After all the QSDK has
the "Low Memory" mode.

Cheers,
Christian



_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
