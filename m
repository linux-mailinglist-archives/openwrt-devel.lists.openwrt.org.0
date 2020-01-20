Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9E14D1428DE
	for <lists+openwrt-devel@lfdr.de>; Mon, 20 Jan 2020 12:09:26 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:Reply-To:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Subject:In-Reply-To:
	MIME-Version:References:Message-ID:To:From:Date:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=fShdCScJNTEyPD/1gzy1DxgX63eGo6+/ie3anSiEsrM=; b=V0zUV+BEUMIewlyeAgIy6JEzTU
	OW7SWpTKZb6mabPVDmBhv4DBQbUzp9SEfIQwFNmPjbh0xVCqSn4YUdH5QTtWNAPqMQ7uJoMnj4rFg
	xFlHNRdR81YsYJFEn1LJxKZKnC8YWDWcoM7lbBMulzlpqnhArbyc+yJLsf8nYWB7abI8OwR0/tlj6
	Y6oYldYB09YFlkbLMoPsg8NOgFJau/PBN4d1ObsYwhlfwD4jV1RTK8k//5xMNDURXdcSK7mwiqVPV
	1vuHnfHANUi79NDDf5H/SmJdqhQCZKYY7sDeIo1M9ONlW1OFePYqV7y6n36ouMQIKkkcD7jvPjakn
	B9vas1zA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1itUvs-0003y1-Ch; Mon, 20 Jan 2020 11:09:24 +0000
Received: from smtp-out.xnet.cz ([178.217.244.18])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1itUvb-0003wj-B5
 for openwrt-devel@lists.openwrt.org; Mon, 20 Jan 2020 11:09:12 +0000
Received: from meh.true.cz (meh.true.cz [108.61.167.218])
 (Authenticated sender: petr@true.cz)
 by smtp-out.xnet.cz (Postfix) with ESMTPSA id 074A1399C;
 Mon, 20 Jan 2020 12:09:06 +0100 (CET)
Received: from localhost (meh.true.cz [local])
 by meh.true.cz (OpenSMTPD) with ESMTPA id 8fb7c737;
 Mon, 20 Jan 2020 12:08:55 +0100 (CET)
Date: Mon, 20 Jan 2020 12:08:55 +0100
From: Petr =?utf-8?Q?=C5=A0tetiar?= <ynezz@true.cz>
To: Juraj Vijtiuk <juraj.vijtiuk@sartura.hr>
Message-ID: <20200120110855.GE69327@meh.true.cz>
References: <20200112112618.2951-1-juraj.vijtiuk@sartura.hr>
 <20200112120957.GF86978@meh.true.cz> <20200114211118.GA160861@pc>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200114211118.GA160861@pc>
X-PGP-Key: http://ynezz.true.cz/EC796FB2DC69CEF9.asc
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200120_030907_529248_ECA23774 
X-CRM114-Status: GOOD (  10.39  )
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
Subject: Re: [OpenWrt-Devel] [PATCH][libubox] blobmsg: blobmsg_parse and
 blobmsg_parse_array oob read fixes
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
Cc: openwrt-devel@lists.openwrt.org, luka.perkov@sartura.hr
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

SnVyYWogVmlqdGl1ayA8anVyYWoudmlqdGl1a0BzYXJ0dXJhLmhyPiBbMjAyMC0wMS0xNCAyMjox
MToxOF06CgpIaSwKCkkganVzdCBzZW50IHYyIGZvciByZXZpZXdbMl0sIGNhbiB5b3UgY2hlY2sg
aXQgcGxlYXNlPwoKPiA+ID4gQEAgLTE5MSw3ICsxOTcsMTEgQEAgaW50IGJsb2Jtc2dfcGFyc2Uo
Y29uc3Qgc3RydWN0IGJsb2Jtc2dfcG9saWN5ICpwb2xpY3ksIGludCBwb2xpY3lfbGVuLAo+ID4g
PiDCoCDCoCB9Cj4gPiA+Cj4gPiA+IMKgIMKgIF9fYmxvYl9mb3JfZWFjaF9hdHRyKGF0dHIsIGRh
dGEsIGxlbikgewo+ID4gPiArIMKgIMKgIMKgIMKgIMKgIGlmIChsZW4gPCBzaXplb2Yoc3RydWN0
IGJsb2JfYXR0cikgKyBzaXplb2Yoc3RydWN0IGJsb2Jtc2dfaGRyKSkKPiA+ID4gKyDCoCDCoCDC
oCDCoCDCoCDCoCDCoCDCoCDCoCByZXR1cm4gLTE7Cj4gPgo+ID4gSWYgdGhlcmUgaXMgc3VjaCBw
cm9ibGVtLCB0aGVuIHRoaXMgc2hvdWxkIGJlIHByb2JhYmx5IGZpeGVkIGRpcmVjdGx5IGluCj4g
PiBfX2Jsb2JfZm9yX2VhY2hfYXR0ciBzbyB3ZSBwb3NzaWJseSBwcm90ZWN0IG90aGVyIF9fYmxv
Yl9mb3JfZWFjaF9hdHRyCj4gPiB1c2Vyc1sxXS4KPiAKPiBDYW4geW91IG1heWJlIHByb3ZpZGUg
YSBwYXRjaD8gSSdkIGJlIGhhcHB5IHRvIHRlc3QgaXQgYW5kIGxldCB5b3UKPiBrbm93IHdoYXQg
dGhlIHJlc3VsdHMgYXJlLgoKU2VlbXMgbGlrZSBJIG5lZWQgbW9yZSB0aW1lIG9uIHRoaXMsIHRv
IGNvbWUgdXAgd2l0aCBzb21lIG1lYW5pbmdmdWwgc29sdXRpb24KKGl0J3MgYmxvYiByZWxhdGVk
IGZ1bmN0aW9uLCBidXQgaXQgd291bGQgbmVlZCB0byBjaGVjayBibG9ibXNnIGV0Yy4pLCBJJ3Zl
Cmp1c3QgcHJlcGFyZWQgc29tZSBjb21tb24gaGVscGVyIGZ1bmN0aW9ucyB3aGljaCBzaG91bGQg
aGVscC4gSSBkb24ndCB3YW50IHRvCmJsb2NrIHRoaXMgY2hhbmdlcyBqdXN0IGJlY2F1c2Ugb2Yg
dGhhdC4gSSdsbCB0cnkgdG8gYWRkIHlvdSB0byB0aGUgQ2M6IGluCnRoYXQgZm9sbG93IHVwIHBh
dGNoLgoKMS4gaHR0cHM6Ly9wYXRjaHdvcmsub3psYWJzLm9yZy9wYXRjaC8xMjI1ODc4LwoKLS0g
eW5lenoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCm9w
ZW53cnQtZGV2ZWwgbWFpbGluZyBsaXN0Cm9wZW53cnQtZGV2ZWxAbGlzdHMub3BlbndydC5vcmcK
aHR0cHM6Ly9saXN0cy5vcGVud3J0Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL29wZW53cnQtZGV2ZWwK
