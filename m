Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F1ECA1A2322
	for <lists+openwrt-devel@lfdr.de>; Wed,  8 Apr 2020 15:36:33 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=4tuoC6Kdyx2mjuGla/tvAe8GuuFkhQ6a/9MaGASVH+k=; b=eK6E0uosQt+v5Z
	NBIjwISuvcduONbAYA0dZqyOdE5lgEnqA9zL0H9jlzEH+cUIpoRZ75NC1eLqNMbRMZxnLtcHy5f5J
	eI7OFLQARCUD237lZvUnojgjI1bsRV+7o5ycCFqPXKVh8sEeBpyjhxcco8rmyW27POX4gvvlBV0L6
	svRf8zgpxalb8uIonFXAzJzIxXfePqCFu9uB56iunQR6YWW/0xGO+ysa8rSEytnMYMYkqNd5pwHoy
	T7zaVG1PQUC7STWNIbiPRnaDMb2zQjHO2bD1XMadp8EetjMu6xpfuYvcpILUIIHx5kCkBO5VN2xNh
	7ULCJr9fhjh72TRBU5Hg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jMAsP-0002Zg-Th; Wed, 08 Apr 2020 13:36:21 +0000
Received: from mail.manjaro.org ([176.9.38.148])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jMAsI-0002ZN-Tx
 for openwrt-devel@lists.openwrt.org; Wed, 08 Apr 2020 13:36:16 +0000
Received: from localhost (localhost [127.0.0.1])
 by mail.manjaro.org (Postfix) with ESMTP id BC3833A01E31;
 Wed,  8 Apr 2020 15:36:12 +0200 (CEST)
X-Virus-Scanned: Debian amavisd-new at manjaro.org
Received: from mail.manjaro.org ([127.0.0.1])
 by localhost (manjaro.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id tF9-WBSgkLxw; Wed,  8 Apr 2020 15:36:10 +0200 (CEST)
To: mail@adrianschmutzler.de
References: <20200408104716.3644779-1-t.schramm@manjaro.org>
 <20200408104716.3644779-2-t.schramm@manjaro.org>
 <012401d60d9a$6c95f560$45c1e020$@adrianschmutzler.de>
From: Tobias Schramm <t.schramm@manjaro.org>
Message-ID: <15a5edb1-6b68-d480-2e64-bb82037f4417@manjaro.org>
Date: Wed, 8 Apr 2020 15:37:09 +0200
MIME-Version: 1.0
In-Reply-To: <012401d60d9a$6c95f560$45c1e020$@adrianschmutzler.de>
Content-Language: en-US-large
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200408_063615_110662_0688D824 
X-CRM114-Status: UNSURE (   5.58  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [176.9.38.148 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
Subject: Re: [OpenWrt-Devel] [PATCH 1/3] ramips: mt7621: add LAN port mac
 address to rbm11g dts
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
Cc: 'Thibaut' <hacks@slashdirt.org>, openwrt-devel@lists.openwrt.org,
 'Chuanhong Guo' <gch981213@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

Hi Adrian,

>>  		port@0 {
>>  			status = "okay";
>>  			label = "lan";
>> +			mtd-mac-address = <&hard_config 0x0010>;
>> +			mtd-mac-address-increment = <2>;
> 
> That doesn't make sense to me.
> 
> gmac0 is configured to 0x10 +1, why would you overwrite that value for a single port?
Thanks for the clarification. Didn't look at the device hierarchy
beforehand.
> 
> And which is the correct value for the port of this device (based on vendor FW?).
> 
> Note that setting another MAC address for the first port of m33g is because this is the WAN port, all LAN port will get the address from gmac0 there as well.
> 
> Best
> 
> Adrian

Tobias

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
