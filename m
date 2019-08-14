Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 51EC98DEE3
	for <lists+openwrt-devel@lfdr.de>; Wed, 14 Aug 2019 22:33:40 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:MIME-Version:Date:Message-ID:From:To:
	Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=7qvb+gOusgdhGegQeqA52tROpnrLnZPhqDfAsE976p4=; b=CBqRGHFIT7iCql
	DMtrGKm8TZMkfnB70yZo9iHsUM5jWmUP7mdG9tIqA32elu1eoroQGP0jWOTIbDwRr97FLEHwN9G0t
	Hrf0Y1qqkCxZ9jwOHm277sE7RZLkNMHpWJo4riTo/3B1FrI5xgDs1+ndVipxbIIRrcvmXbZSheli+
	X7nirXNSeiq52ojofpOZ3dcmb5hz7kHJFnTByHtCWM5njDyIrhv+ibuTaBiTwF29IdSttQAusZIAH
	76wTSM0R7QCaXk2lsHO+ur8L1I0sLdksT5mOqI2t3XkiS3HkpzmaEma1yy6AhE4snbRQ47K6+m6HJ
	d2geKKDJu7ntDdm1/+Mg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hxzxb-00066o-SG; Wed, 14 Aug 2019 20:33:31 +0000
Received: from mail2.candelatech.com ([208.74.158.173]
 helo=mail3.candelatech.com)
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hxzxH-00066R-5D
 for openwrt-devel@lists.openwrt.org; Wed, 14 Aug 2019 20:33:13 +0000
Received: from [192.168.100.195] (50-251-239-81-static.hfc.comcastbusiness.net
 [50.251.239.81])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail3.candelatech.com (Postfix) with ESMTPSA id 192C513C283
 for <openwrt-devel@lists.openwrt.org>; Wed, 14 Aug 2019 13:33:10 -0700 (PDT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mail3.candelatech.com 192C513C283
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=candelatech.com;
 s=default; t=1565814790;
 bh=c8DrLbEHbJif8DAq4D481v5N1tK3ud5DfEVw9CDLimI=;
 h=To:From:Subject:Date:From;
 b=gg/25GflvXmE0pvpE2GtDoPC3L0yzCrIpYU4f6PaSKU4hzhq8yJt5gF2MiVS2k4ld
 i/nWlHOhW0fqRzb4IybRXFjwEvPhBDj0YFPhVk/llhuylDBNGCIMW5X0l0dXpO277j
 nmcS9HWxMpFMhq3zHrcSuG3ksE4utRJKIXnzbJ7s=
To: OpenWrt Development List <openwrt-devel@lists.openwrt.org>
From: Ben Greear <greearb@candelatech.com>
Organization: Candela Technologies
Message-ID: <6d9b9daf-99f7-a26b-b09c-6a1d4fea77b7@candelatech.com>
Date: Wed, 14 Aug 2019 13:33:09 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.0
MIME-Version: 1.0
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190814_133311_313794_DB75A96D 
X-CRM114-Status: GOOD (  10.35  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Subject: [OpenWrt-Devel] New ath10k ct driver and firmware available.
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

The driver commit is:  9e5ab25027e0971fa24ccf93373324c08c4e992d

This should fix a problem with 1560 MTU, 160Mhz on DFS channels,
some other small issues on < 5.2 kernels, and for 5.2 driver,
it pulls in some upstream stable fixes.

wave-1 firmware changes since last update:

   *  June 24, 2019: Try allocating low-priority WMI msgs if high-prio are not available.

   *  June 24, 2019: Init rate-ctrl to start at lowest rate instead of in the middle.  Hoping
                     this helps DHCP when station connects from a long distance.

wave-2:

   *  June 24, 2019  Start rate-ctrl at minimal values to help DHCP work better for far-away peers.

   *  July 24, 2019  Fix old regression that made /a (and probably /b/g) perform poorly, at least on
                     diet-compiled images.

   *  Aug 8, 2019  Improve a/b/g rate-ctrl by damping the PER swings caused by the all-or-nothing logic
                   of transmitting non-block-ack frames one at a time.


I would not be surprised if wave-1 could use similar /a/b/g rate ctrl changes that I put into wave-2,
I'm curious to hear of how it works for you if you test it.


Firmware checksums for updating OpenWRT:


988x
5872fe046d90d844a6d3e232e47a6865bac551d7043b2874147c077e356b35d8  firmware-2-ct-full-community-22.bin.lede.010
4568c3895a101ad28363491ea935f56a48bddea4c1be1889a6ba8d151902062a  firmware-2-ct-full-htt-mgt-community-22.bin.lede.010
/home/greearb/candela_html/downloads
9887
2c64ab22159d04cd345b8caffdd76ac95c0409729121a7a4095c5192f46013b2  firmware-2-ct-full-community-22.bin.lede.010
c806b8894faf3bbb11004f77196c6d711b9a6c187b1512d84e05fa98a5aba2ab  firmware-2-ct-full-htt-mgt-community-22.bin.lede.010
/home/greearb/candela_html/downloads
9980
b5ccd56807763bccddf661cfc7dc6aab55215961f70f0e7bd42520c2dca30801  firmware-5-ct-full-community-12.bin-lede.010
2cde201ebaa9e996822aeccaf46633bd6e1dd07c61ecba962519f532e5f92509  firmware-5-ct-full-htt-mgt-community-12.bin-lede.010
/home/greearb/candela_html/downloads
9984
d7e360a220d90eadd67f5c9b5adf7b73d9611127e791e931d4f4890a417060d2  firmware-5-ct-full-community-12.bin-lede.010
411cbdf5f52aac701a79ef5e43bfa57b4d8216c78eb83e48f25e8c11e17f71ff  firmware-5-ct-full-htt-mgt-community-12.bin-lede.010
/home/greearb/candela_html/downloads
4019
276f6d4048759f99626dd000c1de64322cbed8a63f5aeb94dfea3127732fefc6  firmware-5-ct-full-community-12.bin-lede.010
53d4bdb6a0fd5a88cbcc04cbed41a36c0a601b912af0f3376c661d7a639a4a58  firmware-5-ct-full-htt-mgt-community-12.bin-lede.010
/home/greearb/candela_html/downloads
9888
268c8c3e771522b5e335328d331c20cea30e44b773656df2d613e76ce8777c1e  firmware-5-ct-full-community-12.bin-lede.010
bde9bdcb3ecad94b4f6ab679fb2e266c46bb11b2ef279c2458a98a1e8808542d  firmware-5-ct-full-htt-mgt-community-12.bin-lede.010
/home/greearb/candela_html/downloads

Thanks,
Ben

-- 
Ben Greear <greearb@candelatech.com>
Candela Technologies Inc  http://www.candelatech.com


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
