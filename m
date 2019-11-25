Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 934F710942F
	for <lists+openwrt-devel@lfdr.de>; Mon, 25 Nov 2019 20:27:12 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Subject:
	List-Help:Reply-To:List-Archive:List-Unsubscribe:List-Subscribe:From:
	List-Post:List-Id:Message-ID:MIME-Version:In-Reply-To:To:Date:Cc:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:References:
	List-Owner; bh=x9NzewIIwPWDa4NyPZwb1jDU2rS4imYXSH9KzGzoPwo=; b=I/EOHE8UitVnz3
	wAIHCJ7SG6xW+I5ZiQjJuAOZ7aC08zC+cfo2NR2i/UgmcjHYaVpmAWpS3oLVGV39aejjIrp3HqTBo
	yzhw90s6TFnrvM0mKskWWWpAjbYa5sxG5vN2OtD2l/YVe5mT1kspBi9jCb07M88rEMEG5A1UeWFfG
	wux7ixAOkmy7beKIjPBDeDiIz0Ofx0sHgEDzhXPma5Lz7aFQyTBcDaZoiIBXfVC+fhHmev2D5McPg
	EWo+pHCjFz2C4NADk3ULTgtQngzHdA5AhbqgRqckXEY606WcBmEE4/0Sv/D5u8CXlsvtpTBAsE3q5
	IUSf8PjiV15Ne+rXivFg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iZK0q-0007xC-5T; Mon, 25 Nov 2019 19:27:08 +0000
Date: Mon, 25 Nov 2019 19:26:54 +0000
To: openwrt-devel@lists.openwrt.org
In-Reply-To: <E1iZHVc-0001Jn-Nd@rmk-PC.armlinux.org.uk>
MIME-Version: 1.0
Message-ID: <mailman.13869.1574710023.2486.openwrt-devel@lists.openwrt.org>
List-Id: <openwrt-devel.lists.openwrt.org>
List-Post: <mailto:openwrt-devel@lists.openwrt.org>
From: =?utf-8?q?Ren=C3=A9_van_Dorst_via_openwrt-devel?=
 <openwrt-devel@lists.openwrt.org>
Precedence: list
X-Mailman-Version: 2.1.29
X-BeenThere: openwrt-devel@lists.openwrt.org
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/openwrt-devel>,
 <mailto:openwrt-devel-request@lists.openwrt.org?subject=subscribe>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/openwrt-devel>, 
 <mailto:openwrt-devel-request@lists.openwrt.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/openwrt-devel/>
Reply-To: =?utf-8?b?UmVuw6k=?= van Dorst <opensource@vdorst.com>
List-Help: <mailto:openwrt-devel-request@lists.openwrt.org?subject=help>
Subject: Re: [OpenWrt-Devel] [PATCH 2/4] kernel: add backported
 phy/phylink/sfp patches
Content-Type: multipart/mixed; boundary="===============3020986066342606393=="
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

--===============3020986066342606393==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

The sender domain has a DMARC Reject/Quarantine policy which disallows
sending mailing list messages using the original "From" header.

To mitigate this problem, the original message has been wrapped
automatically by the mailing list software.
--===============3020986066342606393==
Content-Type: message/rfc822
MIME-Version: 1.0
Content-Disposition: inline

Received: from mx.0dd.nl ([2a04:52c0:101:921::25])
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iZK0h-0007wB-1u
	for openwrt-devel@lists.openwrt.org; Mon, 25 Nov 2019 19:27:02 +0000
Received: from mail.vdorst.com (mail.vdorst.com [IPv6:fd01::250])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mx.0dd.nl (Postfix) with ESMTPS id F18745FB19
	for <openwrt-devel@lists.openwrt.org>; Mon, 25 Nov 2019 20:26:54 +0100 (CET)
Authentication-Results: mx.0dd.nl;
	dkim=pass (2048-bit key; secure) header.d=vdorst.com header.i=@vdorst.com header.b="doWn0t/U";
	dkim-atps=neutral
Received: from www (www.vdorst.com [192.168.2.222])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by mail.vdorst.com (Postfix) with ESMTPSA id ADE178687D
	for <openwrt-devel@lists.openwrt.org>; Mon, 25 Nov 2019 20:26:54 +0100 (CET)
DKIM-Filter: OpenDKIM Filter v2.11.0 mail.vdorst.com ADE178687D
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=vdorst.com;
	s=default; t=1574710014;
	bh=VN37DM2ahLw5uo5XAl0VBcyNHyyg/gHinRUnGDsS/MM=;
	h=Date:From:To:Subject:In-Reply-To:From;
	b=doWn0t/Ur63N1MK5XcRIVBvTINw+f/qDOnKMnxOYpKbkv0efCnKzeW1I1dEcDIH6j
	 uVJdwhMIZBRv6IMlD8BKtC53v4CTYNuOrE/PpiOmsX6fmcttXmxVEpIkIt+U9h2yDN
	 gZa4snZ5vBwy2uU7O7hgAdijlYl4/afV4hiseADUP/poDr/kCVPy0+25rfqdufMzWY
	 FSwXhr6RUqEohd1Z3I/7E6ws+minH6KXL69wmPRiVOLoM2P5Do0anhdQiNhJGrM5pj
	 npLREa11YHzyiS13M2gZWjbpzUwpgaDBoCH/1cZDeYqqYiSSFSvuAQAcBUFZvAEp47
	 s9Fj23uEXLrIg==
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1]) by
 www.vdorst.com (Horde Framework) with HTTPS; Mon, 25 Nov 2019 19:26:54 +0000
Date: Mon, 25 Nov 2019 19:26:54 +0000
Message-ID: <20191125192654.Horde.cM5y-MP5QQj43ycXxEtzilD@www.vdorst.com>
From: =?utf-8?b?UmVuw6k=?= van Dorst <opensource@vdorst.com>
To: openwrt-devel@lists.openwrt.org
Subject: Re: [OpenWrt-Devel] [PATCH 2/4] kernel: add backported
 phy/phylink/sfp patches
In-Reply-To: <E1iZHVc-0001Jn-Nd@rmk-PC.armlinux.org.uk>
User-Agent: Horde Application Framework 5
Content-Type: text/plain; charset=utf-8; format=flowed; DelSp=Yes
MIME-Version: 1.0
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191125_112659_372643_210E6611 
X-CRM114-Status: UNSURE (   9.99  )
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
  0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
                             valid
 -0.1 DKIM_VALID             Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
                             author's domain

Hi Russell,

Quoting Russell King <linux@armlinux.org.uk>:

> Backport the phy/phylink/sfp patches currently queued in netdev or in
> mainline necessary to support GPON popular modules, specifically to
> support Huawei and Nokia GPON modules.
>
> Signed-off-by: Russell King <linux@armlinux.org.uk>

<snip>

Great to see that you still worked hard on this!

But I wonder if we can move this to generic so it is available for all  
targets?
I can use these SFP patches too for ubiquiti erx-sfp router, target ramips.

This also makes it easier to backport mediatek ethernet and switch drivers for
ramips and mediatek.

Greats,

René



--===============3020986066342606393==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--===============3020986066342606393==--
