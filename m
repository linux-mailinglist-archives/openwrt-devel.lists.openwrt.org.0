Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8C19F1A4F31
	for <lists+openwrt-devel@lfdr.de>; Sat, 11 Apr 2020 11:43:48 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:Reply-To:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Subject:In-Reply-To:
	MIME-Version:References:Message-ID:To:From:Date:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=1CIqtLjXWVO+HAWwyxvIN0IWVTTSwS9agi3n37PYZu8=; b=DZlhzyFGN05CwGyc0WdpPOKUda
	wkWPC5XzAHGjhBKDGD3UFMxody7Jx93JAsrSnq0PggTRIs+3ltRRAkgPDfy7C+23OOLIjEAZDpAhC
	kAlcODYhbkkG1DFYZnITHgX9b+nLoyv5LQgu1GAL6YaFBKXdUwbFEhB4IxBufhNoKN/S77V4hOs31
	lbiH+3cnucbBhE0PaDR4+RmygFSiWCGwqTZIvacFo2RZQWJHjPJ6+QZaMtTRI/KBdtqnqDcSXwUMy
	OJlUOXTFOGgsAnTe27RyZnzmZ2bTKz7ewyokzsM4PN4ke8bf+S7CIwHMp3AUqzkeG4ODSKLEaG43b
	exzpv+kg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jNCfs-0002aN-A4; Sat, 11 Apr 2020 09:43:40 +0000
Received: from smtp-out.xnet.cz ([178.217.244.18])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jNCfl-0002Zu-5z
 for openwrt-devel@lists.openwrt.org; Sat, 11 Apr 2020 09:43:34 +0000
Received: from meh.true.cz (meh.true.cz [108.61.167.218])
 (Authenticated sender: petr@true.cz)
 by smtp-out.xnet.cz (Postfix) with ESMTPSA id 628F134AA;
 Sat, 11 Apr 2020 11:43:27 +0200 (CEST)
Received: from localhost (meh.true.cz [local])
 by meh.true.cz (OpenSMTPD) with ESMTPA id 552ce272;
 Sat, 11 Apr 2020 11:43:13 +0200 (CEST)
Date: Sat, 11 Apr 2020 11:43:13 +0200
From: Petr =?utf-8?Q?=C5=A0tetiar?= <ynezz@true.cz>
To: Hannu Nyman <hannu.nyman@iki.fi>
Message-ID: <20200411094313.GB53854@meh.true.cz>
References: <20200410003917.22033-1-cotequeiroz@gmail.com>
 <8fc07309-5869-aa9a-5ee2-19e647cbb74f@iki.fi>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <8fc07309-5869-aa9a-5ee2-19e647cbb74f@iki.fi>
X-PGP-Key: https://gist.githubusercontent.com/ynezz/477f6d7a1623a591b0806699f9fc8a27/raw/a0878b8ed17e56f36ebf9e06a6b888a2cd66281b/pgp-key.pub
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200411_024333_374445_F7DB7848 
X-CRM114-Status: UNSURE (   3.52  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [178.217.244.18 listed in list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines
Subject: Re: [OpenWrt-Devel] [PATCH] build: config: allow bool to select a
 module pkg
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
Cc: openwrt-devel@lists.openwrt.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

Hannu Nyman <hannu.nyman@iki.fi> [2020-04-11 09:00:11]:

Hi,

> Applying the patch propsed here helped to fix my ath79 multi-device build.

So can this be interpreted as your `Tested-by:` ? Thanks.

-- ynezz

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
