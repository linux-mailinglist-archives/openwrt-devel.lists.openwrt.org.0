Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4E633168ED0
	for <lists+openwrt-devel@lfdr.de>; Sat, 22 Feb 2020 13:26:05 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:MIME-Version:Date:Message-ID:From:To:
	Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=hllal5+fG1IDkj4A/V0OS28HlI0Z6ftifjG1SuNAUj8=; b=WtStITRB9eUqA3
	77Nn/jD0NrSht4Hhexp6FNwsLp6fe5Kg46kXt/iCmYrAhYyWvzEtLgZalpeYEEJSefiQjVVNzFjWo
	JssT51yWM/kfD9VTbJPG/nOnBBbpGoEQExc3eW84MR5Ie4ExpAuCtEpH2ROQldiRjpu+gQ8oJVPzH
	4X9kg7lyRPms4UoNQAMN3P7aISzaQ/Bh7NQc39LMisnSkfwthj7M39/ER+9durLlCx+U9AcFw0Hcu
	CFwAcOhjM9/4m1qmVbrzxV9zmsuO89XhYzeU73IZHaA/Qc3ojVpFb4ASK2STNwLU2vTWWaWLXFWme
	HPNtpPglieeca2TFQVVQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j5Tr5-0006NY-Lg; Sat, 22 Feb 2020 12:25:59 +0000
Received: from so254-38.mailgun.net ([198.61.254.38])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j5Tqu-0006N0-K5
 for openwrt-devel@lists.openwrt.org; Sat, 22 Feb 2020 12:25:50 +0000
DKIM-Signature: a=rsa-sha256; v=1; c=relaxed/relaxed; d=gorani.run; q=dns/txt; 
 s=mailo; t=1582374345;
 h=Content-Transfer-Encoding: Content-Type:
 MIME-Version: Date: Message-ID: Subject: From: To: Sender;
 bh=42kM7ZkJIfeV0scfgwwZiJ0CkVVidV8bNWZDj+vTCOw=;
 b=ICUJPYI7mHHPt8ksZOYrlqdSMW6UlXoqd1KvmQMpSDmleix5nmZF6A4s/z5cgtxO1HUd28H8
 k+F8NJ1J8kMGbLDSkv9I5C+AbJz1ZW14XLC9dCXl9V97WYxP6S5xQyVncS1whk8VFQ4Ehfnn
 e9uc97EU+aUgJHPLs2nDQ6EJC2g=
X-Mailgun-Sending-Ip: 198.61.254.38
X-Mailgun-Sid: WyI5NGQ3YSIsICJvcGVud3J0LWRldmVsQGxpc3RzLm9wZW53cnQub3JnIiwgImNmYmM2YiJd
Received: from [192.168.1.232] (Unknown [219.255.228.122])
 by mxa.mailgun.org with ESMTP id 5e511db1.7fd758cf0688-smtp-out-n01;
 Sat, 22 Feb 2020 12:25:21 -0000 (UTC)
To: openwrt-devel@lists.openwrt.org
From: mans0n <mans0n@gorani.run>
Message-ID: <62d2bb46-dc7b-17b9-7ea9-b7f65ce66750@gorani.run>
Date: Sat, 22 Feb 2020 21:25:18 +0900
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.5.0
MIME-Version: 1.0
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200222_042548_738907_3624D60B 
X-CRM114-Status: UNSURE (   7.88  )
X-CRM114-Notice: Please train this message.
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
Subject: [OpenWrt-Devel] Some questions - help needed
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

Hi,

I can't find the answers on my own, so I'm seeking help here. Any opinions would be appreciated.

1. I found that currently four devices have set DEVICE_TYPE to nas in their Device definition.
But when I tried defconfig, none of them actually had DEFAULT_PACKAGES.nas in their .config.
It seems DEVICE_TYPE cannot be set per device, it only works on a per-(sub)target basis.
Then why DEVICE_TYPE was added to these devices?
https://github.com/openwrt/openwrt/commit/7a1497fd601d8803f608450344113db2bdc470e7
Is this intended or a bug?

2. kmod-usb2 automatically selects kmod-usb-core, but kmod-ata-ahci does not select kmod-ata-core.
Is there a reason to use "DEPENDS += +kmod-usb-core" somewhere and use "DEPENDS += kmod-ata-core" elsewhere?
Can we make a rule here to unify this?

3. Could somebody suggest a way to configure port 1 as WAN in ipq40xx DTS?
https://forum.openwrt.org/t/how-can-i-configure-port-1-as-wan-on-ipq40xx/54783

Thanks in advance.

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
