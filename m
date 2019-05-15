Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A075B1E674
	for <lists+openwrt-devel@lfdr.de>; Wed, 15 May 2019 03:00:39 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:To:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=YMPEOM5ngZu7RhzORlC3yTIMQ3EUkPxLpEMmFyDIAzU=; b=b4cFJJTS9f2ycZ
	3iyJKme6d7gSoJr/RNe5vAV6bE2AqYhWnXPm1kni1zF3nyryUayDVBMCI4OuHSihXoUSJBgS0Q1AZ
	lCQ67Mste1mBQJOoSvDteF+LxKESLW2D8H4F3nwPln/kI9FmzIdtq27PURZKvPgzIUSVEujTS3SBr
	vpVHDZOJmVHiYrop8A38imoyDLBpJdSYvt7FXG5BGNKgMoSHHdrVBKEB0WOZCUIjcLTIuBR1uUSp4
	UpuDvdl48p0Crr7MCdoVTFEtojq3Vx4qlfMCBvAKhOejxTk+BxZZRUNOW2GU3nLgQPmsJryOlXGqL
	Hbqdv7r9sAqeBzQ2WHIw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hQiHb-0004hh-Ep; Wed, 15 May 2019 01:00:35 +0000
Received: from mail-pl1-x641.google.com ([2607:f8b0:4864:20::641])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hQiHR-0004hA-4K
 for openwrt-devel@lists.openwrt.org; Wed, 15 May 2019 01:00:30 +0000
Received: by mail-pl1-x641.google.com with SMTP id w7so449246plz.1
 for <openwrt-devel@lists.openwrt.org>; Tue, 14 May 2019 18:00:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=tXk+0T8Ie3jt/MtD6x4HubfT79T5S8/Nu3BF894jPvQ=;
 b=EhFdncwcjxm9eo+Y+dIudQEcjI5UuaH6bYzFDtD8yCD9+h1EnRKRZgdkrGIuWMJKsa
 ezbsDyOzQS7jdhqmGVhWtv5F5fI4YrEEP1UtT4Lu9xmBRY7tK/BoZF0aNsTZr3JaMAsW
 fVoiPFgsOe5gT/HxsIFAl5U6sW68BlX4RGXibD4nFm7sIhEEuDNQklLkEOijw7FrFPFK
 wLQUOv9NyPWYuRkJ/86l0F8c2vlNCj/wvhoKizbr+ljIcabCJz/waXAWWP+LqGklYlsh
 DqtK7SolWwrZ6rHOIV+pJV+p4VdLM2BCp2lWJREqWOHWrL1lDrwLqc9nWKy0mG/jxSOB
 h8iA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=tXk+0T8Ie3jt/MtD6x4HubfT79T5S8/Nu3BF894jPvQ=;
 b=sWTyK+evl0AIoP64xnV8vsS+DCKTJ8CtMpFkZzQqCEUzGhOzXGMJu3suzSjl6TLvjK
 T4TBL1URPOQD3QO9a9Giokv7I2wUZmpL4YGu3acHpT56QZ2J4bK2aza3hqhoE8QWXMvN
 gmEzrKDGwH6qcwN2pS+ddXrRN8yX3pKWFBi56/0Iz1Eb3vPh0DQvLAcPQaC97r0lwFix
 cUu7JQUxNj6hgFrxEJCAGam6fgt1FcXx5lkixhW4QG/QNucQWbYtTZdUSzy/fHSgGO4j
 pgycQkYQtXCcgSg5aVaFclmuPHB4T3/krtvmfOkzqDUGE0V7B/G9B7GcHAPFqx68ju82
 9gPg==
X-Gm-Message-State: APjAAAUxjl+FlkWgXvAewsy6Q73VaqwGPm2guDbSDDCJUjs4wkCJFcfs
 VhC2a4jPV/0E8Cya/Wn2uqXggjMLMTFf4TBmEg==
X-Google-Smtp-Source: APXvYqxJleIVcquk2xK6Pbr8NN/F8uPij+WrjKOA8DLz0vij2ojBolBjBeQ4gRxEHf9waurjvIUey+VWb+4DMTAFVmU=
X-Received: by 2002:a17:902:322:: with SMTP id
 31mr28349798pld.204.1557882024206; 
 Tue, 14 May 2019 18:00:24 -0700 (PDT)
MIME-Version: 1.0
References: <CAPGJ1o-fdnMVqoSL-8jDQUQJqBzzFDWttTPomFvm30R=iM-fkQ@mail.gmail.com>
 <8244904.XkRuOMmhsn@bentobox>
In-Reply-To: <8244904.XkRuOMmhsn@bentobox>
From: Sam Samy <to.swami1@gmail.com>
Date: Tue, 14 May 2019 18:00:12 -0700
Message-ID: <CAPGJ1o9Pkp1QDbk2RpRhj0Uqgte+BOkYdj9cQmNphiHu9azRaA@mail.gmail.com>
To: Sven Eckelmann <sven@narfation.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190514_180025_172468_84564B4F 
X-CRM114-Status: GOOD (  20.43  )
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:641 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (to.swami1[at]gmail.com)
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (to.swami1[at]gmail.com)
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
Subject: Re: [OpenWrt-Devel] ath10k TPC reg. domain incorrect?
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
Cc: Ben Greear <greearb@candelatech.com>, openwrt-devel@lists.openwrt.org,
 Marius Genheimer <mail@f0wl.cc>, Kalle Valo <kvalo@qca.qualcomm.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

> Yes, the implemented method for reading the data is not correct for the
> wave 2 cards (and maybe also other). You can try the attached hack. At
> least this worked in 2017 when I've poked around in the stuff with
> Christian Lamparter.

Latest code already seem to be doing this.

Thanks

On Tue, May 14, 2019 at 1:33 AM Sven Eckelmann <sven@narfation.org> wrote:
>
> On Monday, 13 May 2019 22:58:00 CEST Sam Samy wrote:
> >  I installed master branch openwrt onto Asus MAP-AC2200 AP. It has tri
> > band. Its based on IPQ4019 DK04 QCA reference platform. 2 radios
> > (2Ghz/5Ghz) on AHB bus and one 5GHZ on PCIe bus. Its generally working
> > fine except one problem in 5Ghz. On both the 5Ghz radios the RSSI is
> > pretty low on any 5Ghz channel I put it in.  In one feet range I see -60dB
> > RSSI, where as the stock firmware that came with the AP gives an RSSI
> > of -36dB at one foot distance.The downstream transmit rates are MCS8/9
> > for most part. The 2Ghz is working fine.
>
> It could be the boarddata which contains more than the targetpower and CTLs
> (and thus not necessarily visible in tpc_stats). As first check, test whether
> your board-2.bin has the md5sum 34c1e73e609a27eb9848fdc89cbc2be7 for
> /lib/firmware/ath10k/QCA4019/hw1.0/board-2.bin. Also check that the correct
> BDF (with the variant string is loaded). But this should only affect
> the QCA4019 5GHz PHY because the QCA9886 boarddata is generated here using the
> pre-cal data from art (unsure whether this is valid or not for this board and
> bootup sequence).
>
> You can just check with the ath10k-bdencoder [0] from qca-swiss-army-knife
> whether the board files from board-2.bin are the ones which also your stock
> firmware is loading.
>
> The next big problem are filters in the rx/tx chains [1]. The ieee80211-freq-
> limit in the DTS file should assist you and not allow you to chose the wrong
> channel/frequency for a specific PHY. But maybe the author accidentally
> switched the settings in the board and actually wanted the lower 5GHz channels
> on the SoC 5GHz PHY and the the upper 5GHz channels on the PCIe card? This
> would be at least worth a try.
>
> > What is the reg. domains 0x20 and 0x58 value points to?
>
> It is 20 (0x14) and not 0x20. Same for 58 (0x3a)
>
> Btw. the regd numbers from QCA can be checked in regd_common.h [2]. The
> mapping in regDomainPairs is not necessarily correct because someone has to
> take them from the newest proprietary driver and use them to update the ath*k
> stuff.
>
> >   Looks like ./sys/kernel/debug/ieee80211/phy2/ath10k/cal_data is junk
> > for both the 5Ghz radios even though the
> > pre-cal-pci-0000:01:00.0.bin/pre-cal-ahb-a800000.wifi.bin is correct.
>
> Yes, the implemented method for reading the data is not correct for the
> wave 2 cards (and maybe also other). You can try the attached hack. At
> least this worked in 2017 when I've poked around in the stuff with
> Christian Lamparter.
>
> Kind regards,
>         Sven
>
> [0] https://github.com/qca/qca-swiss-army-knife/blob/master/tools/scripts/ath10k/ath10k-bdencoder
> [1] https://git.openwrt.org/?p=openwrt/openwrt.git;a=commit;h=41a86debe3c0a01e075e749d0bb1c6d631e35c32
> [2] https://git.kernel.org/pub/scm/linux/kernel/git/kvalo/ath.git/tree/drivers/net/wireless/ath/regd_common.h?id=5fad78689a9229d08ea11af53e48de3c2a845ea3#n29

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
