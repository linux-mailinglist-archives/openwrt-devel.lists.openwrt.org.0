Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1CDA1168FC4
	for <lists+openwrt-devel@lfdr.de>; Sat, 22 Feb 2020 16:29:41 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:In-Reply-To:MIME-Version:Date:Message-ID:
	From:References:To:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=eBWNFWOR+0O+GXmgexpUdBjl61kp/P5Tu2lTo9/CYPs=; b=VIPw2SextbgFiXJMRgWi2477k
	VWlEgVL2FwxvujuAgpT8y9rDJuHdv9vuFIhg0mF7M0RADX4iA3BY5CbHEbzpp/lxhAqz271QRPaXj
	FurZqiVgXjrUrPARExrDyZz4GSy/KJTgJ1o4D/zHb0E4AQ85XE2Bzg7K6KeLu9Jukf/yLzQnkx3YX
	lz+NtQlyTR95PUrbCRBmssCcFrZm6IBfn9ChJ7V3rNb9Clak3bxh2d7Cgjd8z+sneZtnJR9x0bMSQ
	vMe6Wpcbs1myS5i0ciSgwcgiegCBE57I7ccUo2AO2LfI6TUpFmzYZyy1YjbbCXB3PdILCviDIVkkV
	dGOQGEJnA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j5WiT-0004AO-Ja; Sat, 22 Feb 2020 15:29:17 +0000
Received: from so254-38.mailgun.net ([198.61.254.38])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j5WiK-00049k-IT
 for openwrt-devel@lists.openwrt.org; Sat, 22 Feb 2020 15:29:10 +0000
DKIM-Signature: a=rsa-sha256; v=1; c=relaxed/relaxed; d=gorani.run; q=dns/txt; 
 s=mailo; t=1582385347;
 h=Content-Transfer-Encoding: Content-Type:
 In-Reply-To: MIME-Version: Date: Message-ID: From: References: To:
 Subject: Sender; bh=bxd1LP2jtqAtJjU0sYEeMcHUFpfbx0Buxbc+jxEnQek=;
 b=sobKNTY76sf0zQOrPu5O1ltW6F2byepdjpSD02XGIgQ+WMhjhGQ4bSZrArIIPRYeDQswDk+H
 5qpaPJ93nckbMEdIQoHBCpF5hF80PBQNN9NwR/7mdC9s5CyQaa3mAqhn1jR3JYFDbnj6JeWL
 /aI1o5KcdoUsDTyIJoh77YBiil0=
X-Mailgun-Sending-Ip: 198.61.254.38
X-Mailgun-Sid: WyI5NGQ3YSIsICJvcGVud3J0LWRldmVsQGxpc3RzLm9wZW53cnQub3JnIiwgImNmYmM2YiJd
Received: from [192.168.1.232] (Unknown [219.255.228.122])
 by mxa.mailgun.org with ESMTP id 5e5148be.7fb77ea03a78-smtp-out-n03;
 Sat, 22 Feb 2020 15:29:02 -0000 (UTC)
To: mail@adrianschmutzler.de, openwrt-devel@lists.openwrt.org
References: <62d2bb46-dc7b-17b9-7ea9-b7f65ce66750@gorani.run>
 <007b01d5e97e$5b8631d0$12929570$@adrianschmutzler.de>
From: mans0n <mans0n@gorani.run>
Message-ID: <a5d752cc-e273-2522-435a-df83622006bb@gorani.run>
Date: Sun, 23 Feb 2020 00:28:58 +0900
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.5.0
MIME-Version: 1.0
In-Reply-To: <007b01d5e97e$5b8631d0$12929570$@adrianschmutzler.de>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200222_072908_685815_D427B423 
X-CRM114-Status: GOOD (  12.17  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [198.61.254.38 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Subject: Re: [OpenWrt-Devel] Some questions - help needed
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

On 20. 2. 22. 9:48 PM, mail@adrianschmutzler.de wrote:
> to make a variable "per-device", you have to add it to DEVICE_VARS, e.g.
> DEVICE_VARS += DEVICE_TYPE

I've tried it, but it did not work. DEVICE_VARS is used in include/image.mk but
DEVICE_TYPE is used in include/target.mk, I guess that is the cause.

It seems "DEVICE_TYPE:=nas" does two things:
1. add more packages to DEFAULT_PACKAGES
2. add hdparm in busybox
The first one might be done in a device-specific way, but I'm not sure about the
second one...

> I've once tried to solve this for the same problem but with kmod-i2c-core IIRC,
> and then quit at some point because I couldn't find the initial source of the problem.

I found it: i2c-gpio-custom. If I remove the package directory, all i2c packages
are nested now. Maybe scripts/package-metadata.pl has some bugs? But it's not the
main topic here.

I replaced all "DEPENDS:=kmod-i2c-core" with "DEPENDS:=+kmod-i2c-core", and removed
unnecessary kmod-i2c-core in DEVICE_PACKAGES. And build test (on ramips) was successful.
So I think I can provide a patch for it (though it needs more build tests).

But what I'm wondering is, how far will we go? Can we add "+" to all kernel
packages (unless it leads to a dependency error)? If "select" alone is enough,
then why do we also use "depends on"?

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
