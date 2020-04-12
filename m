Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F3FCB1A6089
	for <lists+openwrt-devel@lfdr.de>; Sun, 12 Apr 2020 22:37:43 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-ID:Date:To
	:From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=cEStRmJUw4g8YMDI7npPALFDSQET66/C0eqyjxEBwaI=; b=hzIU+2oiGAQrEb
	G9vPVGQoESNSnfwNeVruGbJYmP2Z4Im6RT7nGq3n18zNbC3pXZzITMFwyoziY7mzft1kjFF4L58Fr
	sNZ7Ng0XmCgbogZ2nOUmet6FZ2L52ahsg8ROdpUtyC2eAVIfJnlTM4g7QLIwV3cssfNStzr/ODag0
	DmJkZ79qclo4m/Dt6BWRoQfNAQrF9VLcGDyDnTgUg5jjRiQLIwzxtUa4ePeisWHyLrSMM2UwEEL7z
	7ROm4HsLifjQ2Aw6vjXXi8vMKKy/NDwNzfSZW8iPsQkrUpvM8HBmT/PU6HzJW+u12fuGPcQVF4hd/
	BfZvRuDJ6okhBehtHgnA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jNjMD-0004Qg-6o; Sun, 12 Apr 2020 20:37:33 +0000
Received: from casper.infradead.org ([2001:8b0:10b:1236::1])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jNjM7-0004QN-JC
 for openwrt-devel@bombadil.infradead.org; Sun, 12 Apr 2020 20:37:27 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=casper.20170209; h=Subject:Content-Type:
 Content-Transfer-Encoding:MIME-Version:Message-ID:Date:To:From:Sender:
 Reply-To:Cc:Content-ID:Content-Description:In-Reply-To:References;
 bh=ZNE4JKfkP5h+dSiqvMwpnFWHZvHPJmCGJnn0TvclO88=; b=mrZ/LvMtoVcn6kiiBA0ZZlaS5e
 RuD4fTzzfrPEBuc6LnPqUlz++j+CSv4qrmFoK5AZy1g5f3Ok7qrxtfFKXBX9u0W8DoYchzstrfLw2
 yFV9CKyky9hp/M+QnCObnXfBQylcM1CIIZp01lhXaTDIfM2JhARQtby7KcoSCHYiCU175cDInys7k
 WQ6+LHgiD9m6IlVaPe2tABgRTEk/QgzF2GnUpR1maCr7FTTMoahGUhahMnovXilwvIXXgMV9uIVMo
 KMg8nMS2olQy0eO1bQw9w7qmAp9SuoLXSFD8PkKtX3aGNHlfVnSCbBA8qAvq4gjTzR/cv/hojITnY
 2SL51FLA==;
Received: from dazzle.geroedel.de ([2a02:180:6:1::b3])
 by casper.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jNjLq-00059b-IC
 for openwrt-devel@lists.openwrt.org; Sun, 12 Apr 2020 20:37:26 +0000
Received: from [192.168.15.2] (helo=feeble.bln.roederer.dhs.org)
 by dazzle.geroedel.de with esmtps (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.89) (envelope-from <devel-sven@geroedel.de>)
 id 1jNjLb-00026w-7r
 for openwrt-devel@lists.openwrt.org; Sun, 12 Apr 2020 22:36:56 +0200
Received: from strike.bln.roederer.dhs.org ([192.168.8.36]
 helo=strike.localnet)
 by feeble.bln.roederer.dhs.org with esmtp (Exim 4.92)
 (envelope-from <devel-sven@geroedel.de>) id 1jNZqt-0008NZ-SL
 for openwrt-devel@lists.openwrt.org; Sun, 12 Apr 2020 12:28:35 +0200
From: Sven Roederer <devel-sven@geroedel.de>
To: openwrt-devel@lists.openwrt.org
Date: Sun, 12 Apr 2020 12:28:35 +0200
Message-ID: <1616459.iLOMmbcGoA@strike>
MIME-Version: 1.0
X-Spam_score: -1.4
X-Spam_score_int: -13
X-Spam_bar: -
X-Spam_report: Spam detection software, running on the system "dazzle",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 @@CONTACT_ADDRESS@@ for details.
 Content preview:  Hi, I took out an shell-script that I used on lede-17.01 to
 work with uci network configuration. The script is iterating over all
 interfaces
 an checks for the physical devices attached to it. With lede-17 [...] 
 Content analysis details:   (-1.4 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -1.0 ALL_TRUSTED            Passed through trusted hosts only via SMTP
 1.5 DATE_IN_PAST_06_12     Date: is 6 to 12 hours before Received: date
 -1.9 BAYES_00               BODY: Bayes spam probability is 0 to 1%
 [score: 0.0000]
X-SA-Exim-Connect-IP: 192.168.15.2
X-SA-Exim-Mail-From: devel-sven@geroedel.de
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on dazzle
X-Spam-Level: 
X-Spam-Status: No, score=-1.4 required=5.0 tests=ALL_TRUSTED,BAYES_00,
 DATE_IN_PAST_06_12 autolearn=no autolearn_force=no version=3.4.2
X-SA-Exim-Version: 4.2.1 (built Tue, 02 Aug 2016 21:08:31 +0000)
X-SA-Exim-Scanned: Yes (on dazzle.geroedel.de)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200412_213711_275480_55DE2E70 
X-CRM114-Status: UNSURE (   0.47  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.4 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on casper.infradead.org summary:
 Content analysis details:   (-0.4 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -1.9 BAYES_00               BODY: Bayes spam probability is 0 to 1%
 [score: 0.0000]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 1.5 DATE_IN_PAST_06_12     Date: is 6 to 12 hours before Received: date
Subject: [OpenWrt-Devel] changes in UCI-reply after lede-17.01
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

Hi,

I took out an shell-script that I used on lede-17.01 to work with uci network 
configuration.
The script is iterating over all interfaces an checks for the physical devices 
attached to it. With lede-17.01 I was able to query the "ifname"-option to get 
the interfacename and "devices"-option returned the physical-devices of the 
interface. For regular interfaces "ifname" and "device" are the same, for e.g. 
bridges "ifname" returned the bridge-name and "devices" the connected 
interfaces.

Log for lede-17.01.7 on a fresh installed board:
> root@LEDE:~# sh /tmp/uci-test.sh 
> checking interface loopback
>  ifnames:lo
>  devices:lo
> checking interface lan
>  ifnames:br-lan
>  devices:eth0
> checking interface wan
>  ifnames:eth1
>  devices:eth1
> checking interface wan6
>  ifnames:eth1
>  devices:eth1

Since openwrt-18.06+ the "devices"-option always reutrns nothing.

Log for openwrt-18.06.8 on a fresh installed board:
> root@OpenWrt:~# sh /tmp/uci-test.sh 
> checking interface loopback
>  ifnames:lo
>  devices:
> checking interface lan
>  ifnames:br-lan
>  devices:
> checking interface wan
>  ifnames:eth1
>  devices:
> checking interface wan6
>  ifnames:eth1
>  devices:

I wonder how to lookup the interfaces connected to a bridge?
It the absence of the "devices"-option by intention?


Sven



_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
