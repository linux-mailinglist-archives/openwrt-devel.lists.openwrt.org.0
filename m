Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1F21C10DFA5
	for <lists+openwrt-devel@lfdr.de>; Sat, 30 Nov 2019 23:44:09 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6xcycIlnTzx3GSmWOygfbw2T5HycD4A2hWF9uFrXWQE=; b=JcBoks4jvKdZeP
	vfJ/xO1pZek4fwY2LoXcB2Oby409U5I2euwTVHZH1km76a5t5qUXur6+f9bPzXuv5WJN7ozFQ3pFD
	XHQfGuDA3tA5WQF0fTSFf+wyl9r7IOMRu9Sjf3U/YHT/VTywQ3vsKDIEt1gCa3eVAn9ex33PGlZ6t
	WI8J75oLJQ/Ul+/KSB+C3WmJxi/MymkOeQ7USkDLAopPhGipl2B3x0KFeOihs4mvCxWca2yGfbIDx
	i/5qTFmpkO9APtoFXa0udXWIxiN8Wc4aYSRCrhewuJRX9qgstNXCtpLHv6gUMK+ijAzVbPfIqb84V
	1MTr5NQ/ZveWCp7ArUww==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ibBT9-0001ic-Bf; Sat, 30 Nov 2019 22:44:03 +0000
Received: from mail.tintel.eu ([2001:41d0:8:1644:0:ff:fe5c:6a54])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ibBSz-0001i1-Pm
 for openwrt-devel@lists.openwrt.org; Sat, 30 Nov 2019 22:43:56 +0000
Received: from localhost (localhost [IPv6:::1])
 by mail.tintel.eu (Postfix) with ESMTP id 228F7423414B;
 Sat, 30 Nov 2019 23:43:48 +0100 (CET)
Received: from mail.tintel.eu ([IPv6:::1])
 by localhost (mail.tintel.eu [IPv6:::1]) (amavisd-new, port 10032)
 with ESMTP id X_zVfGP9x0N1; Sat, 30 Nov 2019 23:43:47 +0100 (CET)
Received: from localhost (localhost [IPv6:::1])
 by mail.tintel.eu (Postfix) with ESMTP id 39625423417C;
 Sat, 30 Nov 2019 23:43:47 +0100 (CET)
DKIM-Filter: OpenDKIM Filter v2.10.3 mail.tintel.eu 39625423417C
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linux-ipv6.be;
 s=502B7754-045F-11E5-BBC5-64595FD46BE8; t=1575153827;
 bh=AMGpbANJFxtNYP11w3ZeHK9DXDpPfTXbmO4VF5hOlrE=;
 h=To:From:Message-ID:Date:MIME-Version;
 b=YfY63ZX896gWtRV22bsLPImZRmzGRZfcTqGgPzWSXNxSG6xjjVnSEXHDBAN0iO75E
 rs39+bbxNPu47he+qViFl+5Tykv8BZOSLvL5U1rjN5pXDMkHQfybV0Y8u9YrQzqYYV
 yNbySaaGqNjJIIsz0/F3EB+ycY9BFCj44DpDHx68=
X-Virus-Scanned: amavisd-new at mail.tintel.eu
Received: from mail.tintel.eu ([IPv6:::1])
 by localhost (mail.tintel.eu [IPv6:::1]) (amavisd-new, port 10026)
 with ESMTP id 1T5sZEP7kk3I; Sat, 30 Nov 2019 23:43:47 +0100 (CET)
Received: from [IPv6:2001:67c:21bc:24::adb] (taz.sof.bg.adlevio.net
 [IPv6:2001:67c:21bc:24::adb]) (Authenticated sender: stijn@tintel.eu)
 by mail.tintel.eu (Postfix) with ESMTPSA id 53DAE423414B;
 Sat, 30 Nov 2019 23:43:46 +0100 (CET)
To: Tom Psyborg <pozega.tomislav@gmail.com>
References: <d530eff4-2b67-0bfe-78d0-510185e416b9@hauke-m.de>
 <7d4516c2-c9d2-102a-cb33-796497baa611@linux-ipv6.be>
 <CAKR_QV+KnepnZURdc_tHA06rdTYKJr-JYmsc4d_YFv=qzD_A2g@mail.gmail.com>
From: Stijn Tintel <stijn@linux-ipv6.be>
Message-ID: <fba68e8d-ae30-a88e-9973-3bbdedb40e86@linux-ipv6.be>
Date: Sun, 1 Dec 2019 00:43:45 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.2.2
MIME-Version: 1.0
In-Reply-To: <CAKR_QV+KnepnZURdc_tHA06rdTYKJr-JYmsc4d_YFv=qzD_A2g@mail.gmail.com>
Content-Language: en-GB
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191130_144354_119182_485EE348 
X-CRM114-Status: GOOD (  11.39  )
X-Spam-Score: 0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 0.1 DKIM_INVALID           DKIM or DK signature exists, but is not valid
Subject: Re: [OpenWrt-Devel] OpenWrt 19.07 status
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

On 30/11/2019 22:44, Tom Psyborg wrote:
> On 26/11/2019, Stijn Tintel <stijn@linux-ipv6.be> wrote:
>> On 26/11/2019 00:34, Hauke Mehrtens wrote:
>>> It looks like there is a throughput problem with ath10k-ct on QCA9984,
>>> https://bugs.openwrt.org/index.php?do=details&task_id=2593
>>> there are multiple reports in the Forum.
>>>
>>> For me QCA9880 on a BTHH5A with ath10k-ct on 5GHz works in openwrt 19.07
>>> The AP can do 180 MBit/s TX and only 40 Mbit/s RX over about 8m with a
>>> wall in between with sae-mixed to a Intel iwl8265.
>>> It is also very close to 40MBit/s not much changing the lowest I saw in
>>> about 30 outputs from iperf3 was 38.8 MBit/s and them highest 41.2 MBit/s
>> I am seeing the same low RX with a qca988x AP and an 8265 client. This
>> did not happen earlier this year. I first noticed this on September 5th,
>> but I don't have known good commit hash. The problem goes away when I
>> disable 802.11w. Without 802.11w, I get 300-400Mbps TX and RX.
> Hi
>
> Do you ever plan to merge your lbe-5ac-gen2 branch into main tree?
> Would be nice if the device would get 19.07 release binaries. Code
> testing really sucks if I need to build from source for almost all of
> my devices...

I never got around to test and write installation notes for the commit
message. I've just rebased that branch on master, and am doing that now,
but it seems the ethernet port is no longer functioning now. Link is up
but no traffic received. I'll try to get that sorted but can't promise
anything.

Stijn


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
