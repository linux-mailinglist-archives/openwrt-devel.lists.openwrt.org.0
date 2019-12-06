Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9BFEE115838
	for <lists+openwrt-devel@lfdr.de>; Fri,  6 Dec 2019 21:37:58 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:MIME-Version:Date:Message-ID:To:From:
	Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=eQVWz1sXsuj7el5lQX0AnuLSJoFSzoHGYHh1dbXSsoY=; b=fFU9mfvX/dGulD
	VTIzDvy6yMW2X2FnjkCtJOiGQ9LAuCiYA4OE1mLpEC0aKbbgkobs4YuKhfiAXNdZRl9w1NRkKI3YY
	YF9ymI/z8orVIBN1ijCfQfTHHK6Px00eUH/QGJznwZSDmOGEW1gbwYLnp7bqq5MPYem3jZNtemyu9
	IbsEfduu117pFzXrIx3DcWiW6ZIYxzUzyUL1BbMp1tPodgmQnKU04uSOZDRIRhpmzeH8LxixTH6HS
	iKqwnL9ifSAumAb20sldsU/16Ek4PJqOUS4uTNLzZAzxkLb5o3UEFdG/3dSkgjLqc/L0DHVKt8zvZ
	WCGl+WHfeWHQfXBWJXyw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1idKML-0000kr-E1; Fri, 06 Dec 2019 20:37:53 +0000
Received: from mail2.candelatech.com ([208.74.158.173]
 helo=mail3.candelatech.com)
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1idKMC-0000k0-Kw
 for openwrt-devel@lists.openwrt.org; Fri, 06 Dec 2019 20:37:46 +0000
Received: from [192.168.100.195] (50-251-239-81-static.hfc.comcastbusiness.net
 [50.251.239.81])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail3.candelatech.com (Postfix) with ESMTPSA id DA26E137547
 for <openwrt-devel@lists.openwrt.org>; Fri,  6 Dec 2019 12:37:41 -0800 (PST)
DKIM-Filter: OpenDKIM Filter v2.11.0 mail3.candelatech.com DA26E137547
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=candelatech.com;
 s=default; t=1575664661;
 bh=9fphUVXe71Dk8OwjhZSaw82o1iIBYG8BAj6tm/47TBE=;
 h=From:Subject:To:Date:From;
 b=UoMQA2VPe7JdbBmPlTkQHcWwVchO6RL5WjuoU87gcRZ8C67nRxlYlQhBB5dR7J5/z
 zF7c0juhZ2G4s8vRAQsw9NDPEwFtt1v9b5zbvrG8peGkgflI3VvYk+7R43K5yT5LcZ
 FArf/62vxw0+ZBOzqOkt2TjxUf7/zYFg04FJvtfs=
From: Ben Greear <greearb@candelatech.com>
To: OpenWrt Development List <openwrt-devel@lists.openwrt.org>
Organization: Candela Technologies
Message-ID: <24195555-8a64-8a1e-5b1b-c1d85c5fcdad@candelatech.com>
Date: Fri, 6 Dec 2019 12:37:41 -0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.1.1
MIME-Version: 1.0
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191206_123744_711134_BE570252 
X-CRM114-Status: UNSURE (   8.87  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
19db86003509dedb8ace339c183813ca637d65af24d00666411d1590efe33e13  firmware-2-ct-full-community-22.bin.lede.013
454e67dab545e720369a07be2fee16de008c76db4ab3119e7760bf9f7504c066  firmware-2-ct-full-htt-mgt-community-22.bin.lede.013
/home/greearb/candela_html/downloads
9887
b3c738328427e124701a5735d65cde0f60e4172ae5bc23b00e5b16df7995dbd4  firmware-2-ct-full-community-22.bin.lede.013
4432ccee23133bbaa4a5552e50a1e7e889b257362603e05530e751b67c29b7b5  firmware-2-ct-full-htt-mgt-community-22.bin.lede.013
/home/greearb/candela_html/downloads
9980
6fa74a3fc87cba97dbc4a7213b760f8d997cd9c5f11900d47d387b23764cf20a  firmware-5-ct-full-community-12.bin-lede.013
68e92820c51270eba4f68b24654c4a9408902b2600762b70204f4cb5419bb714  firmware-5-ct-full-htt-mgt-community-12.bin-lede.013
/home/greearb/candela_html/downloads
9984
08aeb883bd2d9258e8f1907cca8a0d2eda1c559a66e228dadffd6798f6877c7d  firmware-5-ct-full-community-12.bin-lede.013
38ed59a2b3c66c10926706a21ae2d3aeaf83e589f19345a8f48d6520522e4fde  firmware-5-ct-full-htt-mgt-community-12.bin-lede.013
/home/greearb/candela_html/downloads
4019
feca75fe89af9a3e998047f85ff3428676f4d574b770d51773bb419d0dd98e5a  firmware-5-ct-full-community-12.bin-lede.013
6a4977689343f43edd934823512f031fd1a026e872004343b9952077f9607cb0  firmware-5-ct-full-htt-mgt-community-12.bin-lede.013
/home/greearb/candela_html/downloads
9888
d6a59c17bfbec1abc8498762d9f00b2449cab352feb8bef8b621771168376dbf  firmware-5-ct-full-community-12.bin-lede.013
fe242c0d56494975d7a1aeb6969d90cc21cb133fba99040d4da7a25fdb90d92c  firmware-5-ct-full-htt-mgt-community-12.bin-lede.013
/home/greearb/candela_html/downloads


The release notes since last time for wave-1:

   *  November 29, 2019:  Fix IBSS merge issue, related to TSF id leakage bug in firmware code.
                          Thanks for Ahmed Zaki @ Mage-Networks for helping to diagnose and test.



The release notes since last time for wave-2:

   *  December 6, 2019:  Fix 160Mhz problem caused by logic that did not take into account the fact that
                         160Mhz has only 1/2 of the NSS of lower bandwidths in the rate table.

Thanks,
Ben

-- 
Ben Greear <greearb@candelatech.com>
Candela Technologies Inc  http://www.candelatech.com


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
