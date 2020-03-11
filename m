Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DA24E18209F
	for <lists+openwrt-devel@lfdr.de>; Wed, 11 Mar 2020 19:20:59 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Date:To:From:
	Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From
	:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=1hKNXQfsbzyNkuYmdcZDRUPvhKQ0c7revX9Vwxx3VMs=; b=f0wmnVXnAH0GVo
	t34PKDZnuiymJ5NzrTjIIdvVYMpJsL531P0thhv6BicWzBrWAccJqAYMpmJ5cGaaXoKxre+tfrDv7
	E1Lx2KfjALtpjNaQ//CiLVGlHhb25HxejieD6y5LlA583uT20uVcYucEt6frsCigF32qIjQn7SWYO
	lsK9X3l/qPI10QLdUXW7zPPkoRFqOiXmipdQoz0hby5yf2ZcCvIh+J9kQoEmrQ3OPN22izqW9GDj4
	Bv7Z//Z2yn10w22omnvSKGpe7gTpXSng1PWi9K+mxuG5qKcVMnys7EOUoQhM5WxyIaciq+Th3e+7B
	/9FJwPqekVLc4Ijqy69A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jC5yJ-00046j-9G; Wed, 11 Mar 2020 18:20:47 +0000
Received: from atl4mhob12.registeredsite.com ([209.17.115.50])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jC5yC-00044D-0y
 for openwrt-devel@lists.openwrt.org; Wed, 11 Mar 2020 18:20:41 +0000
Received: from mailpod.hostingplatform.com
 (atl4qobmail02pod5.registeredsite.com [10.30.71.85])
 by atl4mhob12.registeredsite.com (8.14.4/8.14.4) with ESMTP id 02BIKZfc027788
 (version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-GCM-SHA384 bits=256 verify=FAIL)
 for <openwrt-devel@lists.openwrt.org>; Wed, 11 Mar 2020 14:20:35 -0400
Received: (qmail 169636 invoked by uid 0); 11 Mar 2020 18:20:35 -0000
X-TCPREMOTEIP: 208.85.15.155
X-Authenticated-UID: sbrown@opensat.com
Received: from unknown (HELO 155-15-85-208.altiusbb.net)
 (sbrown@opensat.com@208.85.15.155)
 by 0 with ESMTPA; 11 Mar 2020 18:20:34 -0000
Received: from localhost (localhost [127.0.0.1])
 by 155-15-85-208.altiusbb.net (Postfix) with ESMTP id CA16B154056F
 for <openwrt-devel@lists.openwrt.org>; Wed, 11 Mar 2020 14:20:33 -0400 (EDT)
X-Virus-Scanned: Debian amavisd-new at ewol.com
X-Spam-Flag: NO
X-Spam-Score: -2.9
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 tagged_above=-999 required=6.31
 tests=[ALL_TRUSTED=-1, BAYES_00=-1.9] autolearn=ham autolearn_force=no
Received: from 155-15-85-208.altiusbb.net ([127.0.0.1])
 by localhost (fl-server.ewol.com [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id AgJiWhcdyWD8 for <openwrt-devel@lists.openwrt.org>;
 Wed, 11 Mar 2020 14:20:27 -0400 (EDT)
Received: from w7.lan (w7.lan [192.168.1.9])
 by 155-15-85-208.altiusbb.net (Postfix) with ESMTP id B973215404F1
 for <openwrt-devel@lists.openwrt.org>; Wed, 11 Mar 2020 14:20:27 -0400 (EDT)
Message-ID: <a8b28d047f66191849d0b5256661f353a4999254.camel@ewol.com>
From: Steve Brown <sbrown@ewol.com>
To: openwrt-devel@lists.openwrt.org
Date: Wed, 11 Mar 2020 14:20:27 -0400
User-Agent: Evolution 3.34.1-2 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200311_112040_190606_21812238 
X-CRM114-Status: UNSURE (   5.71  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.17.115.50 listed in list.dnswl.org]
 0.0 T_SPF_PERMERROR        SPF: test of record failed (permerror)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
Subject: [OpenWrt-Devel] V5.4: Probe of eth0 fails on TP-Link Archer A7V5
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

I get:

[    0.541856] libphy: Fixed MDIO Bus: probed
[    0.548637] ag71xx: probe of 19000000.eth failed with error -2

On 4.19.98, I get:

[    0.508331] libphy: Fixed MDIO Bus: probed
[    1.199161] libphy: ag71xx_mdio: probed
[    1.206146] switch0: Atheros AR8337 rev. 2 switch registered on mdio-bus.0
[    1.860256] ag71xx 19000000.eth: connected to PHY at mdio-bus.0:00 [uid=004dd036, driver=Atheros AR8216/AR8236/AR8316]
[    1.871927] eth0: Atheros AG71xx at 0xb9000000, irq 4, mode: sgmii

Result: no eth0

Both logs at commit id 14a07fa1f and ath79.

Steve



_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
