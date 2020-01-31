Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CD69314F033
	for <lists+openwrt-devel@lfdr.de>; Fri, 31 Jan 2020 16:55:02 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:Reply-To:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Subject:In-Reply-To:
	MIME-Version:References:Message-ID:To:From:Date:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=J/LVg7/OF53svqYmcC3U1UUsn8hpIFC5l+YyuwWo6JU=; b=JN8LqUey7VVkI3uFDkMlNR0J2V
	w0zsTj8FuEFuH2eHJU/fuYWOI/ZZyGKtr/ucPHYzdtaeZWIxKH9LjDlWqk6r0Dv/6i6Yry9q7PU1t
	HtuIBR/5qnHh+JFH2yx1nw8khbn4DvNwvRKhBE+xhoxWf+3GPn1vGtr+3FwCsZBQpdvrvJCnKsgLC
	2mS854EL+mZyKIC3iALh+RKO28xUHTO5CKOMMipAP8bk97BsjskeWMXbT8AAiU1r86RniGJczK0pz
	Hw60EiG22uTARg+YKCmq9nwvcEd3t9XRTC1tpdCNUFyCz1+Zzl08fdJOSO9c6UCibLu1W8Qwzk5pC
	ZK74luBg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ixYdB-00025W-Fe; Fri, 31 Jan 2020 15:54:53 +0000
Received: from smtp-out.xnet.cz ([178.217.244.18])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ixYd4-00025F-3e
 for openwrt-devel@lists.openwrt.org; Fri, 31 Jan 2020 15:54:47 +0000
Received: from meh.true.cz (meh.true.cz [108.61.167.218])
 (Authenticated sender: petr@true.cz)
 by smtp-out.xnet.cz (Postfix) with ESMTPSA id A592537C1;
 Fri, 31 Jan 2020 16:54:44 +0100 (CET)
Received: from localhost (meh.true.cz [local])
 by meh.true.cz (OpenSMTPD) with ESMTPA id fd11c0f8;
 Fri, 31 Jan 2020 16:54:33 +0100 (CET)
Date: Fri, 31 Jan 2020 16:54:33 +0100
From: Petr =?utf-8?Q?=C5=A0tetiar?= <ynezz@true.cz>
To: =?utf-8?B?QmrDuHJu?= Mork <bjorn@mork.no>
Message-ID: <20200131155433.GB85707@meh.true.cz>
References: <20200129162210.GA78186@meh.true.cz>
 <81451FC6-CB4C-4A43-87B0-50BCF581678E@gmail.com>
 <CAKxU2N87DQ-Zat0vmSU4iKgcR32t2L-v0_4WLQSvjyg9ZoFySA@mail.gmail.com>
 <87v9ot5kxi.fsf@miraculix.mork.no>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <87v9ot5kxi.fsf@miraculix.mork.no>
X-PGP-Key: http://ynezz.true.cz/EC796FB2DC69CEF9.asc
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200131_075446_300970_2F77B9EE 
X-CRM114-Status: UNSURE (   3.46  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [178.217.244.18 listed in list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines
Subject: Re: [OpenWrt-Devel] [PATCH] ramips: ethernet: turn off flow control
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
Cc: OpenWrt Development List <openwrt-devel@lists.openwrt.org>,
 Rosen Penev <rosenp@gmail.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

QmrDuHJuIE1vcmsgPGJqb3JuQG1vcmsubm8+IFsyMDIwLTAxLTMwIDEwOjU0OjE3XToKCj4gQXJl
IHlvdSBzdXJlIHRoZSByZXZpc2lvbiBzYXlzIGFueXRoaW5nIGFib3V0IHdoaWNoIFNvQyB0aGlz
IGlzPyAKCk5vcGUgIDotKSBJdCdzIGJhc2VkIG9ubHkgb24gc291cmNlIGNvZGUgb2JzZXJ2YXRp
b24uCgotLSB5bmV6egoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX18Kb3BlbndydC1kZXZlbCBtYWlsaW5nIGxpc3QKb3BlbndydC1kZXZlbEBsaXN0cy5vcGVu
d3J0Lm9yZwpodHRwczovL2xpc3RzLm9wZW53cnQub3JnL21haWxtYW4vbGlzdGluZm8vb3Blbndy
dC1kZXZlbAo=
