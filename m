Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 96FE015FD58
	for <lists+openwrt-devel@lfdr.de>; Sat, 15 Feb 2020 08:32:20 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:Reply-To:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Subject:In-Reply-To:
	MIME-Version:References:Message-ID:To:From:Date:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=x+gY9HMlWwdE6o68ro4IOCP7Mqm0BqyWKQCqUrI34YY=; b=Q4G/qKxCMMa6fyiCi6LKlQKlRe
	mTOtX4VZT7ryvwHIqSN9rYihelO2C6YsfTDNLhLKMDeTZvwUeF1kPnVTZ1mZkMOcBlGLBe636NxzY
	eBtPFK2+J6BJgTkoCZ0sQnWaiNNN0Ycw0QMDecE9/OdHf4rJApFQIiAyzVE3R9CS4HbKnxA+U1xeC
	fn2dQzK9sCECh8P2MlIJjdcx3qLUzOk/GgR5zi9ElttHsXrHOikWfiG2TKdaoaUcJm+DAx5dFFUjk
	IDCluAtsv0d5lvk7YSSgtoG/qbCQ4X+i8YlNT2o5eVOgKzv/cs53fFsQq0+hBeArfTNB+Uv5dBvhv
	vBa8eU8w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j2rvy-0000j1-Lt; Sat, 15 Feb 2020 07:32:14 +0000
Received: from smtp-out.xnet.cz ([178.217.244.18])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j2rvr-0000iX-EK
 for openwrt-devel@lists.openwrt.org; Sat, 15 Feb 2020 07:32:09 +0000
Received: from meh.true.cz (meh.true.cz [108.61.167.218])
 (Authenticated sender: petr@true.cz)
 by smtp-out.xnet.cz (Postfix) with ESMTPSA id E05654E77;
 Sat, 15 Feb 2020 08:32:02 +0100 (CET)
Received: from localhost (meh.true.cz [local])
 by meh.true.cz (OpenSMTPD) with ESMTPA id 1083b284;
 Sat, 15 Feb 2020 08:31:51 +0100 (CET)
Date: Sat, 15 Feb 2020 08:31:51 +0100
From: Petr =?utf-8?Q?=C5=A0tetiar?= <ynezz@true.cz>
To: e9hack <e9hack@gmail.com>
Message-ID: <20200215073151.GA13957@meh.true.cz>
References: <4073c970-9ce5-b742-1e87-35b5cbeca1dc@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <4073c970-9ce5-b742-1e87-35b5cbeca1dc@gmail.com>
X-PGP-Key: http://ynezz.true.cz/EC796FB2DC69CEF9.asc
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200214_233207_630167_2FC3D2F5 
X-CRM114-Status: UNSURE (   3.60  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 2.0 (++)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (2.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [178.217.244.18 listed in list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 2.0 PDS_TONAME_EQ_TOLOCAL_SHORT Short body with To: name matches
 everything in local email
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines
Subject: Re: [OpenWrt-Devel] Tor is broken
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
Reply-To: Petr =?utf-8?Q?=C5=A0tetiar?= <ynezz@true.cz>
Cc: jan.pavlinec@nic.cz, openwrt-devel@lists.openwrt.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

e9hack <e9hack@gmail.com> [2020-02-15 08:24:23]:

> Feb 15 08:17:20.000 [warn] Unable to open "/var/run/tor.pid" for writing: Permission denied
> Feb 15 08:17:20.000 [err] Unable to write PIDFile "/var/run/tor.pid"

This is probably needed in the init script:

 procd_set_param user tor

-- ynezz

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
