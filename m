Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5670F10ABDC
	for <lists+openwrt-devel@lfdr.de>; Wed, 27 Nov 2019 09:34:16 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:MIME-Version:References:In-Reply-To:
	Message-Id:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=EOmqdH+uut6p6DLzdFcwjuakha5KAXmiCFwAoCYCwv4=; b=TZ5vhmzmeuABGReiztgDYXgeQ
	uW4eYnlIvAHT7z8wMvDODu+gIdIJLERIl8cKQP99PbAnEgTzLHk58uJ6rE/7WGHIwGZpg2JBe3ssI
	v0yrxH+KxXule8ZbQVm20ZTkQiagnMpPSHT1Ev9KuoxGCTDEli7bFu4fI+qj2pKh8WomHEIxS8Gv8
	fgZnYL5LRAOFxSGRZM7nn/Ybjonh9HAbIEWepCf8FWUwj4wECeQbf7HWtirKaqz46ryPPnmZnyXwK
	F3WjeNWB/q5hh7AFmXTvgVnNwgNOF3PHvjePVnIaMj6r+c8gzlOQEUu/RXqWlQLLDRairz4dXyG3c
	O5JRdCcWQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iZsm4-0007QW-AB; Wed, 27 Nov 2019 08:34:12 +0000
Received: from volatilesystems.org ([51.91.248.52])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iZslx-0007Q2-Mp
 for openwrt-devel@lists.openwrt.org; Wed, 27 Nov 2019 08:34:07 +0000
Received: by volatilesystems.org (Postfix, from userid 112)
 id A3C14FA82E; Wed, 27 Nov 2019 09:33:55 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=volatilesystems.org;
 s=mail; t=1574843635;
 bh=bUfu+z/5Yl65UggL5POytEdfY9q12lSoGA/wL7jOeeU=;
 h=Date:From:Subject:To:Cc:In-Reply-To:References:From;
 b=LaE7scN13bghr+scHHFJsjQkuj/dr6zpQpdfTftwCJj1cRz+WiEREgv5iYH5DZRUF
 O3dl70c9V+Sg9jFzafH4BlVED2bR4WNoqfS0E22KkJlKj1vTPneOaZqmyz5Fwez4p3
 2qQ+uArPum6i5XgGifm7W/7QHgrwI94dCWgzA2fA=
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on atalanta
X-Spam-Level: 
X-Spam-Status: No, score=-1.1 required=5.0 tests=ALL_TRUSTED,DKIM_SIGNED,
 DKIM_VALID,DKIM_VALID_AU,URIBL_BLOCKED autolearn=ham
 autolearn_force=no version=3.4.2
Received: from [10.0.0.5] (213.219.161.238.adsl.dyn.edpnet.net
 [213.219.161.238])
 by volatilesystems.org (Postfix) with ESMTPSA id 5ECF8FA82B;
 Wed, 27 Nov 2019 09:33:53 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=volatilesystems.org;
 s=mail; t=1574843633;
 bh=bUfu+z/5Yl65UggL5POytEdfY9q12lSoGA/wL7jOeeU=;
 h=Date:From:Subject:To:Cc:In-Reply-To:References:From;
 b=Jd6XuB6UTQXPDkb2AcOtLa8j+bFgrnSTkuPLmaFN8FWczSG2A6x1bg4l5APp/akDr
 PEvPRJe3z5Cw5c+yAmCy+fGWlvryjuHcgLUhT8sB46FLsMDVxvOOu0nm/0QNefpfbI
 ZkQRk8PvEXVcrkob5XiRBCFDpKwlor00Mmm5IUG8=
Date: Wed, 27 Nov 2019 09:33:52 +0100
From: Stijn Segers <foss@volatilesystems.org>
To: jow@mein.io
Message-Id: <1574843632.1748.0@volatilesystems.org>
In-Reply-To: <1574800245.1719.1@volatilesystems.org>
References: <d530eff4-2b67-0bfe-78d0-510185e416b9@hauke-m.de>
 <1574800245.1719.1@volatilesystems.org>
X-Mailer: geary/0.12.4
MIME-Version: 1.0
X-Virus-Scanned: clamav-milter 0.101.4 at atalanta
X-Virus-Status: Clean
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191127_003405_908116_63EE82BB 
X-CRM114-Status: GOOD (  15.57  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org



Op dinsdag 26 november 2019 om 21:30 schreef Stijn Segers 
<foss@volatilesystems.org>:
> 
> 
> Op maandag 25 november 2019 om 23:34 schreef Hauke Mehrtens 
> <hauke@hauke-m.de>:
>> Hi,
>> 
>> There are now quite some changes in the OpenWrt 19.07 branch 
>> compared to
>> the 19.07-rc1.
>> 
>> The builds are looking ok:
>> http://buildbot.openwrt.org/openwrt-19.07/images/grid
>> 
>> I looked through the responses to 19.07-rc1 in the forum and the bug
>> tracker and it looks mostly good.
>> https://forum.openwrt.org/t/openwrt-19-07-0-first-release-candidate/48040
>> https://bugs.openwrt.org/index.php?reported%5B%5D=10
>> 
>> 
>> I saw the following reports:
>> 
>> MT7621/MT7620: NETDEV WATCHDOG: eth0 (mtk_soc_eth):
>> https://bugs.openwrt.org/index.php?do=details&task_id=2628
>> https://bugs.openwrt.org/index.php?do=details&task_id=2617
>> https://bugs.openwrt.org/index.php?do=details&task_id=2605
>> 
>> 
>> It looks like there is a throughput problem with ath10k-ct on 
>> QCA9984,
>> https://bugs.openwrt.org/index.php?do=details&task_id=2593
>> there are multiple reports in the Forum.
>> 
>> For me QCA9880 on a BTHH5A with ath10k-ct on 5GHz works in openwrt 
>> 19.07
>> The AP can do 180 MBit/s TX and only 40 Mbit/s RX over about 8m with 
>> a
>> wall in between with sae-mixed to a Intel iwl8265.
>> It is also very close to 40MBit/s not much changing the lowest I saw 
>> in
>> about 30 outputs from iperf3 was 38.8 MBit/s and them highest 41.2 
>> MBit/s
>> 
>> Are there any more known regressions and serious bugs?
>> 
>> 
>> Images for the following devices are probably too big:
>> * WR902AC
>> * EnGenius ESR-9752  ( EnGenius ESR-9753 )
>> Jow has some pending patches to deactivate support for some of them:
>> https://patchwork.ozlabs.org/project/openwrt/list/?series=143332
>> This looks good to me.
> 
> Hi Hauke, Jow,
> 
> The TP-Link TL-MR3420 v2 images seem too big as well:
> 
> https://forum.openwrt.org/t/openwrt-19-07-0-first-release-candidate/48040/144

Please ignore this, turns out there was v2 support in ar71xx but not 
yet in ath79
when 19.07 got branched.

Stijn

> 
>> 
>> We should mention how to install wpad-openssl or wpad-wolfssl to get
>> WPA3 support in the release notes.
> 
> Excellent point, a lot of people seem to expect WPA3 works OOTB.
> 
> Cheers
> 
> Stijn
> 
>> 
>> Hauke
>> 
>> _______________________________________________
>> openwrt-devel mailing list
>> openwrt-devel@lists.openwrt.org
>> https://lists.openwrt.org/mailman/listinfo/openwrt-devel
> 
> 
> _______________________________________________
> openwrt-devel mailing list
> openwrt-devel@lists.openwrt.org
> https://lists.openwrt.org/mailman/listinfo/openwrt-devel


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
