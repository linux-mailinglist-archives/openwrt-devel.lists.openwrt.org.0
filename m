Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D03531D21BA
	for <lists+openwrt-devel@lfdr.de>; Thu, 14 May 2020 00:10:41 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:To:References:Message-Id:Date:
	In-Reply-To:From:Mime-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=8mrN1ahT9w6I4zEgcLT+0WdXrYsq9xo5QqTxLfb7YMI=; b=ZP/7/l0cGWqD2V
	42foNgM9w/L+95wkR9QjrQEEBxkGvOY190kcRODvnhTX5TFMgipwPPALtR8Hh9mxDiFQtbZPUPYvb
	NFR5C1z3JyFpGE35P+UHklLkat2EC2z6iXupxkw5+UZ9NRsb45PLN2y1cdV2UZYxzzEI0Vpotn3PD
	+b/9WzAOrpXyXuwhCVxp3wII9w2PeNj8B73dh06w5dndzHom77nPQ7uE4jJL/F5MjpPKkmjjD0gvt
	w1SC14vV35xwJDii5L3HrN8oe4n4EavNzdWSJ4cfrlLzlIA0NALP/Xp4dIPCR8uRolN3ISC6r3UUE
	SxC9vbi4H8vn2aOlpf7A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jYzaI-0006Fy-5o; Wed, 13 May 2020 22:10:38 +0000
Received: from mail.redfish-solutions.com ([45.33.216.244])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jYzaA-0006FB-5w
 for openwrt-devel@lists.openwrt.org; Wed, 13 May 2020 22:10:32 +0000
Received: from macbook2.redfish-solutions.com (macbook2.redfish-solutions.com
 [192.168.1.39]) (authenticated bits=0)
 by mail.redfish-solutions.com (8.15.2/8.15.2) with ESMTPSA id 04DMAPIk007246
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Wed, 13 May 2020 16:10:25 -0600
Mime-Version: 1.0 (Mac OS X Mail 13.4 \(3608.80.23.2.2\))
From: Philip Prindeville <philipp_subx@redfish-solutions.com>
In-Reply-To: <mailman.12784.1589398941.2542.openwrt-devel@lists.openwrt.org>
Date: Wed, 13 May 2020 16:10:25 -0600
Message-Id: <48ADE4FE-2D5E-4B4C-98EF-9DD46B4C4BD1@redfish-solutions.com>
References: <CAJQUmm6Y-XFYUivOBZoFB9teO9keaEmoHdnG07P6zP=ySkqs3g@mail.gmail.com>
 <mailman.12784.1589398941.2542.openwrt-devel@lists.openwrt.org>
To: John Clark <jeclark2006@aim.com>
X-Mailer: Apple Mail (2.3608.80.23.2.2)
X-Scanned-By: MIMEDefang 2.84 on 192.168.1.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200513_151030_298736_03647F4D 
X-CRM114-Status: UNSURE (   4.90  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
Subject: Re: [OpenWrt-Devel] Sysupgrade and Failed to kill all processes
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
Cc: openwrt-devel <openwrt-devel@lists.openwrt.org>,
 Michael Jones <mike@meshplusplus.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

Cgo+IE9uIE1heSAxMywgMjAyMCwgYXQgMTo0MSBQTSwgSm9obiBDbGFyayB2aWEgb3BlbndydC1k
ZXZlbCA8b3BlbndydC1kZXZlbEBsaXN0cy5vcGVud3J0Lm9yZz4gd3JvdGU6Cj4gCj4gSeKAmXZl
IG5ldmVyIGhhZCB0aGlzIHByb2JsZW0gd2l0aCDigJhyZWJvb3TigJksIGJ1dCB0aGVyZSBkb2Vz
buKAmXQgc2VlbSB0byBiZSBhIHJlYWxseSBuaWNlIHdheSB0byDigJhyZWJvb3QgaW50byBhIGZp
cm13YXJlIHVwZ3JhZGUgaW5pdHJhbSBpbWFnZeKAmSwgZG8gdGhlIHdvcmssIHRoZW4gcmVib290
IHdpdGggbmV3IGZpcm13YXJlLgoKCmtleGVjPwpfX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fXwpvcGVud3J0LWRldmVsIG1haWxpbmcgbGlzdApvcGVud3J0LWRl
dmVsQGxpc3RzLm9wZW53cnQub3JnCmh0dHBzOi8vbGlzdHMub3BlbndydC5vcmcvbWFpbG1hbi9s
aXN0aW5mby9vcGVud3J0LWRldmVsCg==
