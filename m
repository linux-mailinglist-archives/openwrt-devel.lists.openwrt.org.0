Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A828D194A99
	for <lists+openwrt-devel@lfdr.de>; Thu, 26 Mar 2020 22:32:00 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-ID:To:From
	:Date:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=hRZGtsl2zeXdz8EB+Ip+MQYrH7GTCyqP0dj8c29tcN0=; b=Z6iRnONrR+mJmn
	0uGQbQyoDf09lETmOshe/5l7Qyyx1osASjYGUnksrL2Rzn4b4WGW+JtBaOd7JPzSun3fABbeUT6az
	J+8Z9xSJD9Eu//eNIR5sxF1a2s8CkMEKA+0EzNU4huZhpPm24R9ExG7QckJuG64f+EoVoOfowLhbX
	gn7ExFsr9Ua0N0pNlADO5CEVzqylXm65/tJMaIeSdELFSirDN6V4nH42bg5OWExPv7S5BQOQ+fO2r
	vqIlOpOqitA3nQPDRTJbI5m2uxxLbm2l6N4wQBu9i4FeXb+4IW3J/LVlJXmgahPxWj2fYwgX4te/u
	s9c6YBeEKJcR95CfCG2A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jHa6O-0000xu-Nx; Thu, 26 Mar 2020 21:31:48 +0000
Received: from aurora-borealis.phear.org ([94.242.205.164])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jHa6G-0000wp-Q9
 for openwrt-devel@lists.openwrt.org; Thu, 26 Mar 2020 21:31:43 +0000
Received: from localhost (unknown [127.0.0.1])
 by aurora-borealis.phear.org (Postfix) with ESMTP id 20DA110421
 for <openwrt-devel@lists.openwrt.org>; Thu, 26 Mar 2020 21:31:26 +0000 (UTC)
X-Virus-Scanned: amavisd-new at phear.org
Received: from aurora-borealis.phear.org ([127.0.0.1])
 by localhost (mail.phear.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id l1GtVfaeniCi for <openwrt-devel@lists.openwrt.org>;
 Thu, 26 Mar 2020 21:31:18 +0000 (UTC)
Received: from prometheus.u-strasbg.fr (82-65-50-238.subs.proxad.net
 [82.65.50.238])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange ECDHE (P-256) server-signature RSA-PSS (4096 bits) server-digest
 SHA256) (No client certificate requested)
 (Authenticated sender: khatar)
 by aurora-borealis.phear.org (Postfix) with ESMTPSA id 5BDFA10415
 for <openwrt-devel@lists.openwrt.org>; Thu, 26 Mar 2020 21:31:18 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.10.3 aurora-borealis.phear.org 5BDFA10415
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=phear.org;
 s=20180217; t=1585258278;
 bh=kNPhcYIk6AnMjsmhw3nWNHlifR8tccG5PHGF4LEUPmM=;
 h=Date:From:To:Subject:From;
 b=CI2gh4phl2uTlEAL5F2OjPtcm9375Fe3RSlRgDDUpSSPVbBrMg3npch9E2avHa7e8
 0Y2kbFXGtwss68QwR00Y84GIeK0IGOoXIF7weGztB/xd2qXtVzRJVxBVDZGCAxaCmA
 6jJVBodigwy8wtDAyZjFG/DhiJf0I9Fe7hHTwRFhNpR7YQ/4uTlUiD5QMGd97AAIAf
 Jkhd+u86VgQQZVpKS162Upox4NHQs7fXmDMA88IvRjm4UF8kNX8sbkvQPv6gRrBBPI
 oX4WouyxtNFHUNSQexHx17Nr1AEPkIpfVjLbAQhuZa1FWXb/Qrs8vQ9/031h/HR+RB
 R/Bz7r3F2nowA==
Date: Thu, 26 Mar 2020 22:31:17 +0100
From: Marc Chantreux <eiro@phear.org>
To: openwrt-devel@lists.openwrt.org
Message-ID: <20200326213117.GA9610@prometheus.u-strasbg.fr>
MIME-Version: 1.0
Content-Disposition: inline
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200326_143141_149887_E8D5AAB3 
X-CRM114-Status: UNSURE (   5.15  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
Subject: [OpenWrt-Devel] resurect Realtek RTD 1295 openwrt?
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
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

hello people,

i try to get the WOL working on a device running openwrt but it seems
the packages are no more available.

the basename i noticed from /etc/opkg is

    http://downloads.openwrt.org/chaos_calmer/15.05.1/rtd1295/

chaos_calmer is available on the archive but not this particular arch.

from the RT site, i see that rtd1295 is actually a ARM=AE Cortex-A53
powered SOC so what i would like to do now is to backport some packages
(luci-app-wol) for chaos_calmer (i don't know how naive is this).
i'm reading the devel guide from the web site and try
to make menuconfig. the thing is i don't know how to get the cortex
architecture.

Anyone can help on this ?

thanks and regards,
marc




_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
