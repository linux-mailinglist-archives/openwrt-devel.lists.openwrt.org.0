Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4ACF11D15D
	for <lists+openwrt-devel@lfdr.de>; Tue, 14 May 2019 23:35:58 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:To:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/xhlMs1GE9lshncZOLtgg63SxN424msxIhfwMsmRyfY=; b=dkRXfQHV7XJm6b
	rU0eUEzOI9wYLEUNCU4XF9z1fSs9tp55dvRE6WLk707/sFJI/7uOuJM4JPxSdCZtkk/vrxla7k48w
	kqpx26mKr0gHRc2AsJ22usAxYJNVzh1MFA8GrMMyVRSXTAZ6zR7S/LxvkYtV1yPvOA0OhHYZ72DGD
	vOmLzcIo6vfvLiIQs0X10FhKD8ZTUxPaqYesMNx6qwmGoAnvAtkH7gpbWFAdKvPtPB6m8Njw1LRJg
	z49JXZKR4f4KAO8QIllT4xbGcg8MvpLSnF8lwYhK4g14ZrwCEjQ/f1ng/APgtWomxGsmqxJJNttoC
	33iNtfK/SX5BABOYl7xw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hQf5R-0007eN-Tz; Tue, 14 May 2019 21:35:49 +0000
Received: from mail-pf1-x442.google.com ([2607:f8b0:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hQf5K-0007de-Sm
 for openwrt-devel@lists.openwrt.org; Tue, 14 May 2019 21:35:44 +0000
Received: by mail-pf1-x442.google.com with SMTP id n19so183330pfa.1
 for <openwrt-devel@lists.openwrt.org>; Tue, 14 May 2019 14:35:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=Yfwg12l2fCRcHGd2HnsGoUuTzoY/35Prjm9oj20kNOk=;
 b=jfX7DuS7zVbk5dIjqw3ywFmDkQaeUm2C37yBkl3UJoT09+5C3fWgqYwOczCSifcYN8
 sPxniX2teCAqTDpCbnhFRbU5SK+sWJvbF54hMZlJB9oBipGGI4EnrwieboiRC41SZbtE
 O3bKzefye8QE2Bmp2jI3gk3v2D7OGZaNKQcFd7V79KQeonZ6K1PFZetMPtAYkyVVivS+
 4Z4vciLjqEgyCnThzyCehQYQQ0BNZjefNFjhwATVBYkC00rGV5ux21CxealHAZiY8MxN
 K87rgB+pTBp1hqe0fLuhfJ8NFIWHM4wPi8WhbIrP9OQsPOQ2XdbNHgucfuPdR0kisbIx
 LIIA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=Yfwg12l2fCRcHGd2HnsGoUuTzoY/35Prjm9oj20kNOk=;
 b=iagCvke9JZN/2iaKWItfV9sMtKRDMv0+0bidFRndXJ5ZgRpsRTjtBG7IXi9g7CsgQE
 3eap1Ic5+RWSLLevhddkBEJ1ShHok1GcIN030SK8/KOfh/gLSZlKAOHDgCLnDfCliuJk
 xJ9tFfm29bZdy5LSLYEL66AKJK4uc8VoXZi3QN3/fryUdOcfSuYixJm5+AC+bcZ8g4/1
 aFEKBPK/tqf5HIBy7uox3GINImwH98MKAATYC9jzCo+7BZyj8SSdlUZbn8Ya78822H5T
 qf+M8kQhDzR78ZGyiHHvhj0Lnf10FfBWSBS1oGQ40Iw8qk98yfu9hWSjzkjvc95QjmPm
 SfoA==
X-Gm-Message-State: APjAAAV3G+ZefYJh6z5gUzWm84H+zY6tEoXnmWsSwVdwED7TA+Vxdt9s
 rHop7DiqAGrslC6wXWfFgnwQjLJyuta7qW03Zg==
X-Google-Smtp-Source: APXvYqxR0GtodL5VppPlv65ez95mBQSzM0wCDK2cqVCtSysQpCYbxjgl5NYc/8HXybbpxjwO7ac9NbzsFPxrHMYw0zE=
X-Received: by 2002:a62:6585:: with SMTP id z127mr3952690pfb.179.1557869741962; 
 Tue, 14 May 2019 14:35:41 -0700 (PDT)
MIME-Version: 1.0
References: <CAPGJ1o-fdnMVqoSL-8jDQUQJqBzzFDWttTPomFvm30R=iM-fkQ@mail.gmail.com>
 <8244904.XkRuOMmhsn@bentobox>
In-Reply-To: <8244904.XkRuOMmhsn@bentobox>
From: Sam Samy <to.swami1@gmail.com>
Date: Tue, 14 May 2019 14:35:30 -0700
Message-ID: <CAPGJ1o-72CevknK8b=MwNcH-Zn+EMmU0zaJTnf4M18t4nzihVg@mail.gmail.com>
To: Sven Eckelmann <sven@narfation.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190514_143542_956759_CA996E32 
X-CRM114-Status: GOOD (  23.93  )
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:442 listed in]
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

Thanks Sven for detailed information. Answers inline..

> It could be the boarddata which contains more than the targetpower and CTLs
> (and thus not necessarily visible in tpc_stats). As first check, test whether
> your board-2.bin has the md5sum 34c1e73e609a27eb9848fdc89cbc2be7 for
> /lib/firmware/ath10k/QCA4019/hw1.0/board-2.bin. Also check that the correct
> BDF (with the variant string is loaded). But this should only affect
> the QCA4019 5GHz PHY because the QCA9886 boarddata is generated here using the
> pre-cal data from art (unsure whether this is valid or not for this board and
> bootup sequence).

The board-2.bin md5sum matches to the one you mentioned above.

The openwrt pre-cal-ahb-a000000.wifi.bin/pre-cal-ahb-a800000.wifi.bin
files md5sum did not match the one in board-2.bin.
I replaced it with stock bin files and now it matches. Atleast for the
AHB radios cal_data matches with bin file.
The stock AHB boarddata files does not seem to match the one in the
flash that openwrt is extracting.

But still the openwrt tpc_stats does not match with stock firmware
tpc. Its still has low power limits.

AHB board-2.bin:
=============

~/ath10k-fw-tools/qca-swiss-army-knife/tools/scripts/ath10k$
./ath10k-bdencoder -i board-2.bin
FileSize: 24324
FileCRC32: 4329f4ee
FileMD5: 34c1e73e609a27eb9848fdc89cbc2be7
BoardNames[0]: 'bus=ahb,bmi-chip-id=0,bmi-board-id=20,variant=ASUS-MAP-AC2200'
BoardLength[0]: 12064
BoardCRC32[0]: d7d6a9ea
BoardMD5[0]: 238abb9e48096f217531b5a40398595b
BoardNames[1]: 'bus=ahb,bmi-chip-id=0,bmi-board-id=21,variant=ASUS-MAP-AC2200'
BoardLength[1]: 12064
BoardCRC32[1]: 9c975c5b
BoardMD5[1]: ea158f8c0d5ddd11bb32e7d7a7979e4c

PCIe board-2.bin: * There is no ASUS variant in this file in openwrt. *
=============
~/ath10k-fw-tools/qca-swiss-army-knife/tools/scripts/ath10k$
./ath10k-bdencoder -i board-2.bin
FileSize: 84928
FileCRC32: d65c17b1
FileMD5: 600730b0f0672c22ef2cfab32fda2a71
BoardNames[0]: 'bus=pci,bmi-chip-id=0,bmi-board-id=16'
BoardLength[0]: 12064
BoardCRC32[0]: 165f27d1
BoardMD5[0]: c0fd21abadf20443153780b57f4c46a5
BoardNames[1]: 'bus=pci,bmi-chip-id=0,bmi-board-id=17'
BoardLength[1]: 12064
BoardCRC32[1]: ccfed209
BoardMD5[1]: dbf42e5d3cf1680ab1d718354d493214
BoardNames[2]: 'bus=pci,bmi-chip-id=0,bmi-board-id=18'
BoardLength[2]: 12064
BoardCRC32[2]: a7f0e9d9
BoardMD5[2]: ec1ff2be1b61ae53d8752fe6b1b0fa2e
BoardNames[3]: 'bus=pci,bmi-chip-id=0,bmi-board-id=23'
BoardLength[3]: 12064
BoardCRC32[3]: 795cc344
BoardMD5[3]: 1ae64807b2a91269878574aa1cabc185
BoardNames[4]: 'bus=pci,bmi-chip-id=0,bmi-board-id=24'
BoardLength[4]: 12064
BoardCRC32[4]: 9ec997a9
BoardMD5[4]: f9828e262a6827c772f62ec0bc7306ae
BoardNames[5]: 'bus=pci,bmi-chip-id=0,bmi-board-id=25'
BoardLength[5]: 12064
BoardCRC32[5]: 04d9857f
BoardMD5[5]: 37cc0eda80791408a9f2c436bf976a4a
BoardNames[6]: 'bus=pci,bmi-chip-id=0,bmi-board-id=16,variant=OM-A62'
BoardLength[6]: 12064
BoardCRC32[6]: bbfad0fc
BoardMD5[6]: 6cb4b86098bf996215bb579e7c0cdb9d

How do I create a board-2.bin from a Jason file to add the Asus variant?


> The next big problem are filters in the rx/tx chains [1]. The ieee80211-freq-
> limit in the DTS file should assist you and not allow you to chose the wrong
> channel/frequency for a specific PHY. But maybe the author accidentally
> switched the settings in the board and actually wanted the lower 5GHz channels
> on the SoC 5GHz PHY and the the upper 5GHz channels on the PCIe card? This
> would be at least worth a try.

This did not make a difference.

> Yes, the implemented method for reading the data is not correct for the
> wave 2 cards (and maybe also other). You can try the attached hack. At
> least this worked in 2017 when I've poked around in the stuff with
> Christian Lamparter.

I have not tried this yet. I will update later today.


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
