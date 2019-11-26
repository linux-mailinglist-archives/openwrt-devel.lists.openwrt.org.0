Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 06D7F10A57B
	for <lists+openwrt-devel@lfdr.de>; Tue, 26 Nov 2019 21:31:14 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:MIME-Version:References:In-Reply-To:
	Message-Id:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=qc1xX8ZTkXXhIE8hMOsUdolucIqGtF7eduft4uvX648=; b=CA5kzDkjID6ylQRkIMb1Kk3lY
	O2+uTGlZ9QuyZWYV85qE7yqY2I7ekY+IvvWYnZwLKHayJHbXbeV0V04EM7RmwtP49TbLwE+TyB4kI
	ZqyBMcYzxrFxjqjDDcULc3buNSYOSH1Yh02UDgZZY3PFusGmzLjw+TGq5bJwwDAa5RWWelL/LpY3e
	rdKmP0TtJ4rOXoeKmXrzlGdMCixk+lQTtAyHqIDa444fs2yA7/yYgtJq8AXnoGB0GlfPmICvT3Bfr
	9FhXHZVQqCGvPvYkFhECceZDBCr0SHSQnjE/609uFWfVKNnQG5q9tS4712j+r3wfFJjWPz4zeq3jE
	LYcOv7o9A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iZhUH-0001g6-Kr; Tue, 26 Nov 2019 20:31:05 +0000
Received: from volatilesystems.org ([51.91.248.52])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iZhU9-0001fd-RJ
 for openwrt-devel@lists.openwrt.org; Tue, 26 Nov 2019 20:30:59 +0000
Received: by volatilesystems.org (Postfix, from userid 112)
 id 05C53FA826; Tue, 26 Nov 2019 21:30:48 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=volatilesystems.org;
 s=mail; t=1574800248;
 bh=+Bm7Yj4yMRhAcNs4g3VKK1VR0W9pa/NfbYwAakSxLGc=;
 h=Date:From:Subject:To:Cc:In-Reply-To:References:From;
 b=ExXgcdnQr63jpovA6Qu7W5yVmajhx0jG1TX9psDNA81tDp2GZJB2SyOlDdhCCXD6m
 0/rWl32SSPV8xL0dyqvVf1+iyewOEEZeO19UpAoM9YbCfJ42SghiHCrs4vNYM4oErt
 6QqtqwsRqLSJyTHsCbnYfGfipkjVzpXXJxbv/Rww=
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on atalanta
X-Spam-Level: 
X-Spam-Status: No, score=-1.1 required=5.0 tests=ALL_TRUSTED,DKIM_SIGNED,
 DKIM_VALID,DKIM_VALID_AU,URIBL_BLOCKED autolearn=ham
 autolearn_force=no version=3.4.2
Received: from [10.0.0.5] (213.219.161.238.adsl.dyn.edpnet.net
 [213.219.161.238])
 by volatilesystems.org (Postfix) with ESMTPSA id 72455FA824;
 Tue, 26 Nov 2019 21:30:46 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=volatilesystems.org;
 s=mail; t=1574800246;
 bh=+Bm7Yj4yMRhAcNs4g3VKK1VR0W9pa/NfbYwAakSxLGc=;
 h=Date:From:Subject:To:Cc:In-Reply-To:References:From;
 b=nX+WgtM3IZjTc95unRk3AL6i6zqkrU5sYWhk95ZrhNlY+i+U4si0y/yNBS+nSeE5L
 S+33pybUWbVN4N3uqQL6E9FveCqixG/ddbJdxTvSq+p3H1wSN1n28QHqpTcY8FPiHb
 FfjS3ckbtUwDoOM2CaM9Yc6ytqZuh2QOjX455mFE=
Date: Tue, 26 Nov 2019 21:30:45 +0100
From: Stijn Segers <foss@volatilesystems.org>
To: Hauke Mehrtens <hauke@hauke-m.de>
Message-Id: <1574800245.1719.1@volatilesystems.org>
In-Reply-To: <d530eff4-2b67-0bfe-78d0-510185e416b9@hauke-m.de>
References: <d530eff4-2b67-0bfe-78d0-510185e416b9@hauke-m.de>
X-Mailer: geary/0.12.4
MIME-Version: 1.0
X-Virus-Scanned: clamav-milter 0.101.4 at atalanta
X-Virus-Status: Clean
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191126_123058_024479_8FA207C7 
X-CRM114-Status: GOOD (  18.55  )
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
Cc: openwrt-devel@lists.openwrt.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org



Op maandag 25 november 2019 om 23:34 schreef Hauke Mehrtens 
<hauke@hauke-m.de>:
> Hi,
> 
> There are now quite some changes in the OpenWrt 19.07 branch compared 
> to
> the 19.07-rc1.
> 
> The builds are looking ok:
> http://buildbot.openwrt.org/openwrt-19.07/images/grid
> 
> I looked through the responses to 19.07-rc1 in the forum and the bug
> tracker and it looks mostly good.
> https://forum.openwrt.org/t/openwrt-19-07-0-first-release-candidate/48040
> https://bugs.openwrt.org/index.php?reported%5B%5D=10
> 
> 
> I saw the following reports:
> 
> MT7621/MT7620: NETDEV WATCHDOG: eth0 (mtk_soc_eth):
> https://bugs.openwrt.org/index.php?do=details&task_id=2628
> https://bugs.openwrt.org/index.php?do=details&task_id=2617
> https://bugs.openwrt.org/index.php?do=details&task_id=2605
> 
> 
> It looks like there is a throughput problem with ath10k-ct on QCA9984,
> https://bugs.openwrt.org/index.php?do=details&task_id=2593
> there are multiple reports in the Forum.
> 
> For me QCA9880 on a BTHH5A with ath10k-ct on 5GHz works in openwrt 
> 19.07
> The AP can do 180 MBit/s TX and only 40 Mbit/s RX over about 8m with a
> wall in between with sae-mixed to a Intel iwl8265.
> It is also very close to 40MBit/s not much changing the lowest I saw 
> in
> about 30 outputs from iperf3 was 38.8 MBit/s and them highest 41.2 
> MBit/s
> 
> Are there any more known regressions and serious bugs?
> 
> 
> Images for the following devices are probably too big:
> * WR902AC
> * EnGenius ESR-9752  ( EnGenius ESR-9753 )
> Jow has some pending patches to deactivate support for some of them:
> https://patchwork.ozlabs.org/project/openwrt/list/?series=143332
> This looks good to me.

Hi Hauke, Jow,

The TP-Link TL-MR3420 v2 images seem too big as well:

https://forum.openwrt.org/t/openwrt-19-07-0-first-release-candidate/48040/144

> 
> We should mention how to install wpad-openssl or wpad-wolfssl to get
> WPA3 support in the release notes.

Excellent point, a lot of people seem to expect WPA3 works OOTB.

Cheers

Stijn

> 
> Hauke
> 
> _______________________________________________
> openwrt-devel mailing list
> openwrt-devel@lists.openwrt.org
> https://lists.openwrt.org/mailman/listinfo/openwrt-devel


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
