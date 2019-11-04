Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5F7AFEE76A
	for <lists+openwrt-devel@lfdr.de>; Mon,  4 Nov 2019 19:31:36 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:MIME-Version:Date:Message-ID:From:To:
	Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=roBkHz9zTqe1OWxa2bOQSPUo5K3NR5i4gjjYEb8jaI0=; b=dVDuvwmlHL5MTc
	TZL1eJyehADlC7+Nfk3JxIz0n8YLwED6ox8aaKA8RTyBh1n28mVCMTIg6MFUCS5Roujobzd7P8qrY
	No4vuStvdWuZag3fGJJzBn8tBlEnsY1wlk5Os0ar5RMWStZB8yyZ3TyFXmFD8SrpQizXvn3Mvixid
	Klo+VhsUEl3608MNpTNwh8L4pxPw/gzNShji9pbJZBNcMGni0oV4HJ5z2gIV2xs9D/oRvCPkvZWJM
	a2g1dsxuzUmZW88v4PjhvHvOAUfXqhL1yvlQTACefYbduom118dgUDNOFA7ru32WtosxI+miX01Ef
	faVRLwvJY8Sr3pC6R03A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iRh8K-0002AB-K2; Mon, 04 Nov 2019 18:31:20 +0000
Received: from mail2.candelatech.com ([208.74.158.173]
 helo=mail3.candelatech.com)
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iRh8E-00029i-Vg
 for openwrt-devel@lists.openwrt.org; Mon, 04 Nov 2019 18:31:16 +0000
Received: from [192.168.100.195] (50-251-239-81-static.hfc.comcastbusiness.net
 [50.251.239.81])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail3.candelatech.com (Postfix) with ESMTPSA id 9090613C35C
 for <openwrt-devel@lists.openwrt.org>; Mon,  4 Nov 2019 10:31:13 -0800 (PST)
DKIM-Filter: OpenDKIM Filter v2.11.0 mail3.candelatech.com 9090613C35C
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=candelatech.com;
 s=default; t=1572892273;
 bh=Rvf7aM+NsGcPpsB8cUuZJfjuLGB/WNZ+F3jVxRuIcGQ=;
 h=To:From:Subject:Date:From;
 b=i6GWQRYxKogAUAxZ3ZldYIW7LdbHMYAc0oNT5G114Ph5YdDpGfwMmNlF6K3a7ubUJ
 UTqBH570K0RWDlvBQkmbiEJto4+SbZVPlPItSStvB6p9KMi9itOS2uO6lnSltWClLC
 jFsSRPMawasAZpLwaMHhRQGTfRE3yZ0DABkxjpJI=
To: OpenWrt Development List <openwrt-devel@lists.openwrt.org>
From: Ben Greear <greearb@candelatech.com>
Organization: Candela Technologies
Message-ID: <862224a8-2f03-b85a-4fd0-e53def6e0a71@candelatech.com>
Date: Mon, 4 Nov 2019 10:31:13 -0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.0
MIME-Version: 1.0
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191104_103115_066879_1F3D5C89 
X-CRM114-Status: UNSURE (   9.33  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Subject: [OpenWrt-Devel] New ath10k-ct firmware available
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

Please see new file names and checksums below:

988x
3b2c584f7070c3e286ce27a370cc181d70b45f9cdaa462fb4f44c6c20d2ee8c1  firmware-2-ct-full-community-22.bin.lede.012
a7042b2c90de82b21e87f243411b6fb12142bb4fb28266ea92cdf3101557b6de  firmware-2-ct-full-htt-mgt-community-22.bin.lede.012
/home/greearb/candela_html/downloads
9887
c3f891b2cd4e225e1c635a328af3dce94481b096432020e445f71144dda749d5  firmware-2-ct-full-community-22.bin.lede.012
f5e9825279d590a2362f44aef4ced345376cccd65d9b826c131d4dbcef4e689c  firmware-2-ct-full-htt-mgt-community-22.bin.lede.012
/home/greearb/candela_html/downloads
9980
4b90fa91dcab68350fe695b3c918cb9a4fb09c2b419519b8b84b71da4cfde5e8  firmware-5-ct-full-community-12.bin-lede.012
6dd40233fe99d99c69781d6514cf9ba7862b3f66c647f7921ca8be6100799986  firmware-5-ct-full-htt-mgt-community-12.bin-lede.012
/home/greearb/candela_html/downloads
9984
2551f5c0bfa6c1b1222bd9452e14f60b8e29c8c0fe85de8af95393f31d544ea3  firmware-5-ct-full-community-12.bin-lede.012
90f947257e1f42496b22cbdd29be99fbc8ea8700045b4ed2380acc980b4c247b  firmware-5-ct-full-htt-mgt-community-12.bin-lede.012
/home/greearb/candela_html/downloads
4019
cd85fc9df8b3652f7b12c2ab745b2a9691dca5ca38f8d65a02003e938ad8b570  firmware-5-ct-full-community-12.bin-lede.012
67a923cda6ec3936ef23ec6c30c80dfc9bfd2cee73a142d2e308e8f035b8ed3a  firmware-5-ct-full-htt-mgt-community-12.bin-lede.012
/home/greearb/candela_html/downloads
9888
4bdb71b50c68f1a07c88d21f84a6c054fe1b8cb5bacd089a6b9f0a56448535d3  firmware-5-ct-full-community-12.bin-lede.012
e1f0242a91af58ec5628bb4f7c015f6c8dba55f92e2813f8f0b97c86ec496d2d  firmware-5-ct-full-htt-mgt-community-12.bin-lede.012
/home/greearb/candela_html/downloads


The release notes since last time for wave-1:

   *  October 5, 2019: Fix too-short msg caused by invalid use of PayloadLen in receive path.
                       This appears to resolve the issue of getting (and ignoring) too-short commands
                       when we detect loss of CE interrupts and go into polling mode.

   *  October 12, 2019:  Fix regression in IBSS mode that caused SWBA overrun issues.  Related to
                         regression added during the ct-station logic, specifically TSF allocation.
                         Thanks for Ahmed Zaki @ Mage-Networks for helping to diagnose and test.

   *  October 15, 2019:  Only send beacon tx completion events if we can detect CT driver is being
                         used (based on CT_STATS_OK flag being set).  This should help CT firmware work
                         better on stock driver.



The release notes since last time for wave-2:

   *  October 15, 2019:  Only send beacon tx completion events if we can detect CT driver is being
                         used (based on ATH10k_USE_TXCOMPL_TXRATE2 | ATH10k_USE_TXCOMPL_TXRATE1 flags being set).
                         This should help CT firmware work better on stock driver.

   *  October 31, 2019:  Compile out peer-ratecode-list-event.  ath10k driver ignores the event.

   *  November 1, 2019:  Fix rate-ctrl related crash when nss and other things were changed while
                         station stays associated.  See bug: https://github.com/greearb/ath10k-ct/issues/96

Thanks,
Ben

-- 
Ben Greear <greearb@candelatech.com>
Candela Technologies Inc  http://www.candelatech.com


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
